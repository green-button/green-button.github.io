<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Import namespace="System.IO" %>
<%@ Import namespace="System.Web.Services" %>
<%@ Import namespace="System.Web.Configuration" %>
<%@ Import namespace="System.Xml" %>
<%@ Import namespace="System.Xml.Xsl" %>
<%@ Import namespace="System.Xml.XPath" %>
<%@ Import namespace="System.Xml.Schema" %>


<script  runat="server">

	String strResults;
	String strTestInfo;
	bool bValidationError = false;
	bool bDoReadLoop = true;

	String strResultsFileName;
	
	void Page_Load()
	{
		string strDownloadFileName = Request.QueryString["filename"];
		if(!String.IsNullOrEmpty(strDownloadFileName))
		{
			ServeFile(strDownloadFileName);
			return;
		}

		if(!String.IsNullOrEmpty(Request.Headers["X-File-Name"]))
		{
			DropZonePage_Load();
		}
		if(!String.IsNullOrEmpty(Request.Form["Scope"]))
		{
			FormPage_Load();
		}	
	}

	void ServeFile(String strFileName)
	{
		String strFullFilePath = Request.PhysicalApplicationPath + "\\uploads\\" + strFileName;
		FileInfo file = new FileInfo(strFullFilePath);
		if (file.Exists)
		{
			Response.ClearContent();
			Response.ClearHeaders();
			Response.ContentType = "application/html";
			//Response.ContentType = "text/html; filename=" + strFileName;
			Response.AddHeader("Content-Disposition","attachment; filename=" + strFileName);
			//Response.AddHeader("Content-Length", file.Length.ToString());

			using (StreamReader sr = file.OpenText())
			{
				string s = "";
				while ((s = sr.ReadLine()) != null) 
				{
					Response.Write(s);
				}
			}

			file.Delete();

			Response.End();
		}
	}
	
	bool ProcessFunctionBlock(string strDir, string strInputFile, string strFuncBlkNo)
	{
		String MyXmlPath = strDir + "\\" + strInputFile;
		String MyXsltPath = Request.PhysicalApplicationPath + "\\conformance\\FB_" + strFuncBlkNo + ".xsl";
		
		XslCompiledTransform XSLTransform = new XslCompiledTransform();
		XSLTransform.Load(MyXsltPath);

		String MyXMLResultPath = strDir + "\\FB_" + strFuncBlkNo + ".xml";
		
		try
		{
			XSLTransform.Transform(MyXmlPath, MyXMLResultPath);
		}
		catch(Exception e)
		{
			String message = e.Message;
			strResults = strResults + "<p><br><p>";
			strResults = strResults + "Failed transform 1:" + message;
			return false;
		}
		
		XmlDocument readDoc = new XmlDocument();
		readDoc.Load(MyXMLResultPath);
		int count = readDoc.SelectNodes("/anElement/assert").Count;		
		
		MyXsltPath = Request.PhysicalApplicationPath + "\\conformance\\WebTestPresentResults.xsl";
		MyXmlPath = MyXMLResultPath;
		
		XslCompiledTransform XSLTransform2 = new XslCompiledTransform();
		XSLTransform2.Load(MyXsltPath);
		
		String MyHTMLResultPath = strDir + "\\FB_" + strFuncBlkNo + ".html";
		
		XSLTransform2.Transform(MyXmlPath, MyHTMLResultPath);
		
		strResults = strResults + "<table class=\"GBInnerDataTable\" width=\"100%\"><thead><tr><th>" + GetFBDescription(strFuncBlkNo) + "</th></tr></thead></table>";
		strResults = strResults + File.ReadAllText(MyHTMLResultPath);
		
		if(count>0)
		{
			return false;
		}			
		else
		{
			return true;
		}
		
	}
	
	void SaveFileInfoToLog(String strFileName, String strScope)
	{
		String strLog = "";
		
		strLog = "Date of test: " + System.DateTime.Now.ToString() + " File Name: " + strFileName + " Scope: " + strScope;
		
		try
		{
			File.AppendAllText(Server.MapPath("~/uploads/upload.log"), strLog + Environment.NewLine);
		}
		catch(Exception e)
		{
			String message = e.Message;
			strResults = strResults + "<p>Failed writing to log file:" + message + "</p>";		
		}
	}

	void GetTitles(String strXMLFile)
	{

		// Open the XML.
		XPathNavigator nav;
		XPathDocument docNav;
		XPathNodeIterator NodeIter;

		docNav = new XPathDocument(strXMLFile);

		// Create a navigator to query with XPath.
		nav = docNav.CreateNavigator();

		XmlNamespaceManager ns = null;
		if (nav.NameTable != null)
		{
			ns = new XmlNamespaceManager(nav.NameTable);
			ns.AddNamespace("atom", "http://www.w3.org/2005/Atom");
		}

		NodeIter = nav.Select("/atom:feed/atom:entry",ns);

		strResults = strResults + "\r\n";
		strResults = strResults + "<table class=\"GBInnerDataTable\" width=\"100%\"><thead><tr><th>Entry Titles</th></tr></thead></table>\r\n";
		strResults = strResults + "<table class=\"GBInnerDataTable\" width=\"100%\">\r\n";
		strResults = strResults + "<tbody>\r\n";
		//Iterate through the results showing the element value.

		if(NodeIter.Count !=0)
		{
			while (NodeIter.MoveNext())
			{
				XPathNavigator clone1 = NodeIter.Current.Clone();
				
				// Check that there is a title tag there
				if(clone1.MoveToChild("title","http://www.w3.org/2005/Atom"))
				{
					String strResult1 = clone1.Value;

					XPathNavigator clone = NodeIter.Current.Clone();
					clone.MoveToChild("content","http://www.w3.org/2005/Atom");
					clone.MoveToFirstChild();

					String strName = clone.Name;

					if(strResult1.CompareTo("")!=0)
					{
						strResults = strResults + "<tr><td>Entry[" + NodeIter.CurrentPosition + "] Content: " + strName + " Title: " + strResult1 + "</td></tr>\r\n";
					}
				}

			};
		}
		else 
		{
			strResults = strResults + "<tr><td>No titles are present.</td></tr>\r\n";
		}

		strResults = strResults + "</tbody>\r\n";
		strResults = strResults + "</table>\r\n";
	
	}
	
	void FormPage_Load()
	{
		// This load method is used by the "form post" upload method
		bool bTestFailed = false;
		String strScope = Request.Form["Scope"];
		String strDownloadResults = Request.Form["hDownloadResults"];
		String strKeepFile = Request.Form["hKeepFile"];
		
		if(String.Compare(strScope,"FB=")==0)
		{
			strTestInfo = "Error: Please select at least one function block for testing.";
			return;
		}
		
		int n = new Random().Next(1, 100);

		String strDirName = Server.MapPath("uploads") + "\\" + System.DateTime.Now.ToString("yyyy_MM_dd_H_mm_ss_") + n.ToString();
		try
		{
			DirectoryInfo di = Directory.CreateDirectory(strDirName);
		}
		catch(Exception e)
		{
			Response.Write("Error: Could not save file. Please check with the system administrator.");
			Response.End();		
		}
		
		String strScopeList = strScope.Replace("FB=","");
		String[] strFBs = strScopeList.Split(',');	

		HttpFileCollection uploadFiles = Request.Files;

		// Loop over the uploaded files and save to disk.
		int i = 0;
		//for (i = 0; i < uploadFiles.Count; i++)
		//{
			// its possible we may reinstate multi-file uploads but not for now.
		
			HttpPostedFile postedFile = uploadFiles[i];

			// Access the uploaded file's content in-memory:
			System.IO.Stream inStream = postedFile.InputStream;
			byte[] fileData = new byte[postedFile.ContentLength];
			inStream.Read(fileData, 0, postedFile.ContentLength);

			String strOrigFileName = postedFile.FileName;
			strOrigFileName = strOrigFileName.Replace(" ","_");

			// Save the posted file in our "data" virtual directory.
			postedFile.SaveAs(strDirName + "\\" + strOrigFileName);		

			SaveFileInfoToLog(strOrigFileName,strScope);
			
			if(!ValidateXML(strDirName + "\\" + strOrigFileName))
			{			
				GetTitles(strDirName + "\\" + strOrigFileName);

				if(String.Compare(strKeepFile,"on")==0)
				{
					String strMinScope = strScope;
					strMinScope = strMinScope.Replace("FB=","");
					strMinScope = strMinScope.Replace(",","_");
					
					String strSaveFile = Server.MapPath("uploads") + "\\" + strOrigFileName + "_" + System.DateTime.Now.ToString("yyyyMMddHmmss_") + "FB_" + strMinScope;
					strSaveFile = strSaveFile.Replace(".xml","") + ".xml";
					
					File.Copy(strDirName + "\\" + strOrigFileName, strSaveFile);
				}			
					
				foreach( String strFB in strFBs)
				{
					if(!ProcessFunctionBlock(strDirName,strOrigFileName,strFB))
					{
						bTestFailed = true;
					}
				}
			}
			
			strTestInfo = "<p>File name: " + postedFile.FileName;
			
		//}
		
		//For future reference if we reinstate AJAX based browser results rendering.
		//Response.AddHeader("RunTime", System.DateTime.Now.ToString());
		//Response.AddHeader("FileLocation", "http://" + Request.Url.Host + "/Uploads/");
		//Response.AddHeader("Scope", strScope);		
		
		strTestInfo = strTestInfo + " evaluated at: " + System.DateTime.Now.ToString() + "</p>";

		if(String.Compare(strDownloadResults,"on")==0)
		{
			String strOriginalFileName = strOrigFileName;
			strOriginalFileName = strOriginalFileName.Replace(".xml","");

			//string strFileName = System.DateTime.Now.ToString("yyyy_MM_dd_H_mm_ss_") + n.ToString() + "_results.html";
			string strFileName = strOriginalFileName + "_" + System.DateTime.Now.ToString("yyyy_MM_dd_H_mm_ss_") + n.ToString() + "_results.html";
			String strFileNameResults = Server.MapPath("uploads") + "\\" + strFileName;

			try
			{
				File.AppendAllText(strFileNameResults, strTestInfo);
				File.AppendAllText(strFileNameResults, strResults);

			}
			catch(Exception e)
			{
				String message = e.Message;
				strResults = strResults + "<p>Failed writing to results file:" + message + "</p>";		
			}

			strResultsFileName = strFileName;
		}
		
		
		DeleteDirectory(strDirName);
		
	}
	
	void DropZonePage_Load()
	{
		// This load method is used by the AJAX drop zone upload method
		
		String strKeepFile = Request.Headers["hKeepFile"];
		String strDownloadResults = Request.Headers["hDownloadResults"];
		String strScope = Request.Headers["Scope"];		
		
		if(string.IsNullOrEmpty(strScope))
		{
			Response.Write("Error: Please select at least one function block for testing.");
			Response.End();	
		}			
		
		if(String.Compare(strScope,"FB=")==0)
		{
			Response.Write("Error: Please select at least one function block for testing.");
			Response.End();	
		}		

		int n = new Random().Next(1, 100);
		String strDirName = Server.MapPath("uploads") + "\\" + System.DateTime.Now.ToString("yyyy_MM_dd_H_mm_ss_") + n.ToString();
		
		try
		{
			DirectoryInfo di = Directory.CreateDirectory(strDirName);
		}
		catch(Exception e)
		{
			Response.Write("Error: Could not save file. Please check with the system administrator.");
			Response.End();
		}		

		String strScopeList = strScope.Replace("FB=","");
		String[] strFBs = strScopeList.Split(',');

		String strOrigFileName = Request.Headers["X-File-Name"];
		strOrigFileName = strOrigFileName.Replace(" ","_");
		
		Stream inputStream = Request.InputStream;
		FileStream fileStream = new FileStream(strDirName + "\\" + strOrigFileName, FileMode.OpenOrCreate);
		CopyTo(inputStream,fileStream);
		fileStream.Close();
		
		SaveFileInfoToLog(strOrigFileName,strScope);

		if(!ValidateXML(strDirName + "\\" + strOrigFileName))
		{
			GetTitles(strDirName + "\\" + strOrigFileName);

			if(String.Compare(strKeepFile,"on")==0)
			{
				String strMinScope = strScope;
				strMinScope = strMinScope.Replace("FB=","");
				strMinScope = strMinScope.Replace(",","_");
				
				String strSaveFile = Server.MapPath("uploads") + "\\" + strOrigFileName + "_" + System.DateTime.Now.ToString("yyyyMMddHmmss_") + "FB_" + strMinScope;
				strSaveFile = strSaveFile.Replace(".xml","") + ".xml";
				
				File.Copy(strDirName + "\\" + strOrigFileName, strSaveFile);
			}
			
			foreach( String strFB in strFBs)
			{
				ProcessFunctionBlock(strDirName,strOrigFileName,strFB);
			}
			
			
			//For future reference if we reinstate AJAX based browser results rendering.
			//Response.AddHeader("RunTime", System.DateTime.Now.ToString());
			//Response.AddHeader("FileName", Request.Headers["X-File-Name"]);
			//Response.AddHeader("FileLocation", "http://" + Request.Url.Host + "/uploads/");
			//Response.AddHeader("Scope", Request.Headers["Scope"]);
		}
		
		strTestInfo = "<p>File name: " + Request.Headers["X-File-Name"] + " evaluated at: " + System.DateTime.Now.ToString() + "</p>";

		if(String.Compare(strDownloadResults,"on")==0)
		{
			String strOriginalFileName = strOrigFileName;
			strOriginalFileName = strOriginalFileName.Replace(".xml","");

			//string strFileName = System.DateTime.Now.ToString("yyyy_MM_dd_H_mm_ss_") + n.ToString() + "_results.html";
			string strFileName = strOriginalFileName + "_" + System.DateTime.Now.ToString("yyyy_MM_dd_H_mm_ss_") + n.ToString() + "_results.html";
			String strFileNameResults = Server.MapPath("uploads") + "\\" + strFileName;

			try
			{
				File.AppendAllText(strFileNameResults,GetResultsHeader());
				File.AppendAllText(strFileNameResults, strTestInfo);
				File.AppendAllText(strFileNameResults, strResults);
				File.AppendAllText(strFileNameResults,GetResultsTail());

			}
			catch(Exception e)
			{
				String message = e.Message;
				strResults = strResults + "<p>Failed writing to results file:" + message + "</p>";		
			}

			Response.AppendHeader("filename",strFileName);

		}


		Response.Write(strTestInfo);
		Response.Write(strResults);		
		
		DeleteDirectory(strDirName);
		
		Response.End();	


	}
	
	bool ValidateXML(String strXMLFile)
	{
		bValidationError = false;
		
		try
		{		
			XmlSchemaSet schemaSet = new XmlSchemaSet();
			schemaSet.Add("http://naesb.org/espi", Server.MapPath("data") + "\\espiDerived.xsd");
			schemaSet.Add("http://www.w3.org/2005/Atom", Server.MapPath("data") + "\\atom.xsd");
			schemaSet.Add("http://www.w3.org/XML/1998/namespace", Server.MapPath("data") + "\\xml.xsd");

			// Set the validation settings.
			XmlReaderSettings settings = new XmlReaderSettings();
			settings.ProhibitDtd = false;
			settings.ValidationType = ValidationType.Schema;
			settings.Schemas = schemaSet;
			settings.ValidationFlags = XmlSchemaValidationFlags.ReportValidationWarnings;
			settings.ValidationEventHandler += new ValidationEventHandler (ValidationCallBack);

			// Create the XmlReader object.
			XmlReader reader;
			
			try
			{
				reader = XmlReader.Create(strXMLFile, settings);

			}
			catch(Exception e)
			{
				String message = e.Message;
				strResults = strResults + "<p>Schema validation Error: " + message + "<p>";
				return true;
			}				

			// Parse the file. 
			try
			{	
				bDoReadLoop = true;
				while (bDoReadLoop)
				{
					if(!reader.Read())
					{
						bDoReadLoop = false;
					}
				}
			}
			catch(Exception e)
			{
				String message = e.Message;
				strResults = strResults + "<p>Schema validation Error: " + message + "<p>";
				
				reader.Close();
				
				return true;
			}
			
			reader.Close();
			
			return bValidationError;

		}
		catch(Exception e)
		{
			String message = e.Message;
			strResults = strResults + "<p>Schema validation Error: " + message + "<p>";
			return true;
		}			
	}
	int iValidationErrCnt = 50;
	
	void ValidationCallBack(object sender, ValidationEventArgs e)
	{
		strResults = strResults + "<p>Schema validation error: " + e.Message + "<br>" + "at line number:" + e.Exception.LineNumber + " position:" + e.Exception.LinePosition + "</p>";
		iValidationErrCnt--;
		if(iValidationErrCnt<1)
		{
			bDoReadLoop = false;	
			strResults = strResults + "<br>" + "<p>Maximum of 50 schema validation errors reported</p>";

		}
		
		bValidationError = true;
	}
  
	void DeleteDirectory(string target_dir)
    {
		try
		{
			string[] files = Directory.GetFiles(target_dir);
			string[] dirs = Directory.GetDirectories(target_dir);

			foreach (string file in files)
			{
				File.SetAttributes(file, FileAttributes.Normal);
				File.Delete(file);
			}

			foreach (string dir in dirs)
			{
				DeleteDirectory(dir);
			}

			Directory.Delete(target_dir, false);
		}
		catch(Exception e)
		{
			String message = e.Message;
			strResults = strResults + "<p>Failed deleting temp directory:" + message + "</p>";		
		}
    }

	void CopyTo(Stream input, Stream output)
	{
		byte[] buffer = new byte[16 * 1024]; // Fairly arbitrary size
		int bytesRead;

		while ((bytesRead = input.Read(buffer, 0, buffer.Length)) > 0)
		{
			output.Write(buffer, 0, bytesRead);
		}
	}

	int getMaxRequestLength()
	{
		// for reference. We may need to get this working on production.
		HttpRuntimeSection section = ConfigurationManager.GetSection("system.web/httpRuntime") as HttpRuntimeSection;

		//return 4096 * 1024; // Default Value
		
		if (section != null)
		{
			return section.MaxRequestLength * 1024; // Default Value
		}
		else
		{
			return 4096 * 1024; // Default Value
		}
	}

	void EmitFBRow(string FBName,string Description, bool bHidden)
	{
		if (!bHidden)
		{
			Response.Write("<tr><td><input type='checkbox'  id='"+ FBName +"' name='"+ FBName +"' onclick='UpdateScopeInfo()'> [" + FBName + "] " + Description + "</td></tr>");
		}
	}
	
	void GetResults()
	{
		Response.Write(strTestInfo);
		Response.Write(strResults);
	}

	void GetFilename()
	{
		Response.Write(strResultsFileName);
	}
	
	String GetFBDescription(string strFuncBlkNo)
	{
		String strDesc = "";
		
		switch(strFuncBlkNo)
		{
			case "1":
				strDesc = "Common";
				break;
			case "2":
				strDesc = "Green Button Download My Data";
				break;					
			case "3":
				strDesc = "Green Button Connect My Data";
				break;	
			case "4":
				strDesc = "Interval Metering";
				break;	
			case "5":
				strDesc = "Interval Electricity Metering";
				break;	
			case "6":
				strDesc = "Demand Electricity Metering";
				break;	
			case "7":
				strDesc = "Net Metering";
				break;	
			case "8":
				strDesc = "Forward and Reverse Metering";
				break;	
			case "9":
				strDesc = "Register Values";
				break;	
			case "10":
				strDesc = "Gas";
				break;	
			case "11":
				strDesc = "Water";
				break;	
			case "12":
				strDesc = "Cost of Interval Data";
				break;	
			case "13":
				strDesc = "Security and Privacy classes";
				break;	
			case "14":
				strDesc = "Authorization and Authentication";
				break;	
			case "15":
				strDesc = "Usage Summary";
				break;	
			case "16":
				strDesc = "Usage Summary with Cost";
				break;	
			case "17":
				strDesc = "Power Quality Summary";
				break;	
			case "18":
				strDesc = "Multiple UsagePoints";
				break;	
			case "19":
				strDesc = "Partial update data";
				break;	
			case "20":
				strDesc = "Common";
				break;	
			case "21":
				strDesc = "Green Button Connect My Data";
				break;	
			case "22":
				strDesc = "Security and Privacy classes";
				break;	
			case "23":
				strDesc = "Authorization and Authentication Third Party Role";
				break;	
			case "24":
				strDesc = "Request bulk of UsagePoints from DataCustodian";
				break;	
			case "25":
				strDesc = "Request of Partial Update Data";
				break;	
			case "26":
				strDesc = "Respond properly to various bad or missing data";
				break;	
			case "27":
				strDesc = "Usage Summary with Demands and Previous Day Attributes";
				break;	
			case "28":
				strDesc = "Usage Summary Costs for Current Billing Period";
				break;					
			case "29":
				strDesc = "Temperature Metering";
				break;	
		}
		
		String strRes = "Function Block [FB_" + strFuncBlkNo + "]:" + strDesc;
		
		return strRes;
		
	}	

	String GetResultsHeader()
	{
		String strHeader = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"><HTML " + 
				"xmlns=\"http://www.w3.org/1999/xhtml\"><HEAD><META content=\"IE=10.000\" " + 
				"http-equiv=\"X-UA-Compatible\">" + 
				" " + 
				"<META name=\"GENERATOR\" content=\"MSHTML 10.00.9200.16660\">" + 
				"<META name=\"viewport\" content=\"user-scalable=yes, initial-scale=1.0\">" + 
				"<META http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">" + 
				"<META name=\"author\" content=\"EnerNex\">" + 
				"<META name=\"keywords\" content=\"greenbutton.org\"><LINK href=\"img/fav.gif\" rel=\"Shortcut Icon\" " + 
				"type=\"image/x-icon\"><LINK href=\"http://www.greenbuttondata.org/css/layout.css\" " + 
				"rel=\"stylesheet\" type=\"text/css\"> " + 
				" " + 
				" <TITLE>	Green Button — Conformance Testing </TITLE></HEAD> " + 
				"<BODY class=\"how\">";
	
		return strHeader;
	}


	String GetResultsTail()
	{
		String strTail = "</BODY></HTML>";

		return strTail;
	}

</script>
