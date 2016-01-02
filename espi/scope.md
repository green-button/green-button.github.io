---
title: scope
layout: page
---

# Extended Backus-Naur Form (EBNF) for Scope parameter 


<p>&nbsp;</p>

<table>
 <thead>
  <tr style='height:16.95pt'>
   <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;
   height:16.95pt'>
   <p style='vertical-align:bottom'><b><span style='font-size:
   18.0pt;color:black'>Term</span></b></p>
   </td>
   <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-left:none;
   padding:0in 5.4pt 0in 5.4pt;height:16.95pt'>
   <p style='vertical-align:bottom'><b><span style='font-size:
   18.0pt;color:black'>Expansion</span></b></p>
   </td>
  </tr>
 </thead>
 <tr style='height:13.45pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>Scope </span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'> [ FBTerms ], [ ValueTerms ], [ ResourceTerms ];</span></p>
  </td>
 </tr>
 <tr style='height:13.45pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>FBTerms </span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>“FB=“, { [FBTerm], ”_”} , FBTerm, ScopeDelimiter ;</span></p>
  </td>
 </tr>
 <tr style='height:13.45pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>FBTerm </span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>“1” | “2” | “3” | “4” | “5” | “6” | “7” | “8” | “9” | “10” |
  “11” | “12” | “13” | “14” | “15” | “16” | “17” | “18” | “19” | “27” | “28” |
  “29” | “32” | “33” | “34” | “35” | “36” | “37” | “38” | “39” | “40” | “41” |
  “44”</span></p>
  </td>
 </tr>
 <tr style='height:13.45pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>ValueTerms </span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>{ ( &quot;IntervalDuration=&quot;, </span><span
  style='font-size:14.0pt;color:black'>namedOrNumber,{“_”, namedOrNumber}</span><span
  style='font-size:14.0pt;color:black'>),</span><span style='font-size:14.0pt;
  color:red'> </span></p>
  </td>
 </tr>
 <tr style='height:13.75pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.75pt'></td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.75pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>| ( &quot;BlockDuration=&quot;, </span><span style='font-size:
  14.0pt;color:black'>namedOrNumber,{“_”, namedOrNumber}</span><span
  style='font-size:14.0pt;color:black'>), </span></p>
  </td>
 </tr>
 <tr style='height:13.45pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.45pt'></td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>| ( &quot;HistoryLength=&quot;, nonNegativeNumber),</span></p>
  </td>
 </tr>
 <tr style='height:13.45pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:13.45pt'></td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>| ( &quot;SubscriptionFrequency=&quot;, nonNegativeNumber |
  namedFrequency), ScopeDelimiter };</span></p>
  </td>
 </tr>
 <tr style='height:28.3pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:28.3pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>ResourceTerms</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.3pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>{ (“</span><span style='font-size:14.0pt;color:black'>AccountCollection</span><span
  style='font-size:14.0pt;color:black'>=”, nonNegativeNumber) | “BR=”, brId),
  ScopeDelimiter}</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>ScopeDelimiter</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>“;”</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>namedFrequency </span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>“billingPeriod” | “daily” | “monthly” |
  “seasonal” | “weekly” | </span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>namedOrNumber</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>nonNegativeNumber | namedFrequency;</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>brID</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>Character</span><span style='font-size:
  14.0pt;color:black'>, {Character}*;</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>nonNegativeNumber</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>digit, { digit };</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>Digit</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>0 | &quot;1&quot; | &quot;2&quot; |
  &quot;3&quot; | &quot;4&quot; | &quot;5&quot; | &quot;6&quot; | &quot;7&quot;
  | &quot;8&quot; | &quot;9&quot; ;</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>Character</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>Digit | “-” | </span><span style='font-size:14.0pt;color:black'>&quot;A&quot;
  | &quot;B&quot; | &quot;C&quot; | &quot;D&quot; | &quot;E&quot; |
  &quot;F&quot; | &quot;G&quot;</span></p>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>       | &quot;H&quot; | &quot;I&quot; | &quot;J&quot; |
  &quot;K&quot; | &quot;L&quot; | &quot;M&quot; | &quot;N&quot;</span></p>
  <p style='vertical-align:bottom'><span style='font-size:14.0pt;
  color:black'>       | &quot;O&quot; | &quot;P&quot; | &quot;Q&quot; |
  &quot;R&quot; | &quot;S&quot; | &quot;T&quot; | &quot;U&quot;</span></p>
  <p style='line-height:15.5pt;vertical-align:bottom'><span
  style='font-size:14.0pt;color:black'>       | &quot;V&quot; | &quot;W&quot; |
  &quot;X&quot; | &quot;Y&quot; | &quot;Z&quot; | </span><span
  style='font-size:14.0pt;color:black'>&quot;a&quot; | &quot;b&quot; |
  &quot;c&quot; | &quot;d&quot; | &quot;e&quot; | &quot;f&quot; | &quot;g&quot;
  | &quot;h&quot; | &quot;i&quot; | &quot;j&quot; | &quot;k&quot; |
  &quot;l&quot; | &quot;m&quot; | &quot;n&quot; | &quot;o&quot; | &quot;p&quot;
  | &quot;q&quot; | &quot;r&quot; | &quot;s&quot; | &quot;t&quot; |
  &quot;u&quot; | &quot;v&quot; | &quot;w&quot; | &quot;x&quot; | &quot;y&quot;
  | &quot;z&quot; ;</span></p>
  </td>
 </tr>
</table>

<p>&nbsp;</p>

<p>Where:</p>

<table style='border-collapse:collapse;border:none'>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;
  height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>ResourceTerms</span></p>
  </td>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-left:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>If a Bulk resource is specified via the “BR” term, the value of
  the {bulkId} is provided after the equals sign (“=”). There could be one or
  more terms in this list that express the granularity of notifications about
  resource changes.  If the Subscription has more than one UsagePoint, the
  AccountCollection term can indicate the number of UsagePoints included</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>FBTerms</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>The function blocks supported</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>ValueTerms</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>These are parameterized terms</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>IntervalDuration</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>This is the minimum default length of an interval in seconds
  (e.g. 900 for 15 minutes, 3600 for one hour, …)</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>BlockDuration</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>This is the length of a block that contains the intervals (based
  on enumeration of MacroPeriodKind in ESPI above as namedFrequency)</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>HistoryLength</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>This is the length of history buffer seconds</span></p>
  </td>
 </tr>
 <tr style='height:15.5pt'>
  <td style='vertical-align:top;border:solid #5B9BD5 1.0pt;border-top:none;padding:
  0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>AccountCollection</span></p>
  </td>
  <td style='vertical-align:top;border-top:none;border-left:none;border-bottom:solid #5B9BD5 1.0pt;
  border-right:solid #5B9BD5 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt'>
  <p style='vertical-align:bottom'><span style='font-size:16.0pt;
  color:black'>Used where the DC wants to provide for the reporting of multiple
  UsagePoints in a single Subscription. The number of UsagePoints is
  represented by the value in the assignment statement – e.g. 4 UsagePoints
  would be AccountCollection=4.</span></p>
  </td>
 </tr>
</table>

