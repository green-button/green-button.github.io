# Working with the Tomcat 7 Server
## Starting and Stopping the server

I have found that to control the server from the command line (outside of STS), you can start and stop the server with:
	
	sudo [Spring_home_folder]/ vfabric-tc-server-developer-2.9.3.RELEASE/base-instance/bin/tcruntime-ctl.sh start
	sudo [Spring_home_folder]/ vfabric-tc-server-developer-2.9.3.RELEASE/base-instance/bin/tcruntime-ctl.sh stop

## **Running the tomcat manager app**

The manager application is in the webapps subdirectory. To enable simple use of the manager application:

Edit the [Spring_home_folder]/ vfabric-tc-server-developer-2.9.3.RELEASE/base-instance/conf/tomcat-users.xml file to contain:

	<?xml version="1.0" encoding="UTF-8"?>
	<tomcat-users>
	  <role rolename="manager-gui"/>
	  <user username="admin" password="admin" roles="manager-gui"/>
	</tomcat-users>

Alternatively, if you are using STS, edit the tomcat-users.xml file in the project folder under Servers/VMware vFabric tc Server Developer Edition v2.9-config.

3.  Start the server as shown above and run localhost:8080/manager and use the login admin:admin


## **Changing the memory footprint of tomcat using java**

In the directory [Spring_home_folder]/ vfabric-tc-server-developer-2.9.3.RELEASE/base-instance/bin/, edit the setenv.sh file to change JVM_OPTS to 

	JVM_OPTS="-Xss256k -Xmx6144m -XX:MaxPermSize=512m"

## **Adding support for https on port 443**
Use the following procedure to create self-signed certificate and to point to it from your server.xml file:

1.  Run the following command to create a secure keystore with a dummy certificate (to make a really good one takes a lot more steps but this will get you going for the problem at hand)

		keytool -genkey -keysize 2048 -alias tomcat -keyalg RSA
    
1.  Add the following to your server.xml file (you can do this in the STS project and it will be copied to the fabric as needed:

    
        <Connector port="443" 
		maxHttpHeaderSize="8192" 
		maxThreads="150" 
		minSpareThreads="25" 
		maxSpareThreads="75" 
		enableLookups="false" 
		disableUploadTimeout="true" 
		acceptCount="100" 
		scheme="https" 
		secure="true" 
		SSLEnabled="true" 
		clientAuth="optional" 
		sslProtocol="TLSv1" 
		keyAlias="tomcat" 
		keystoreFile="/home/bitnami/.keystore" 
		keystorePass="localhost" />


1.  Use the corresponding version of the prepopulate sql files to initialize the database for the devmysql profile with all links https.

