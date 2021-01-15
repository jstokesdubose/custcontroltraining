# Tools
Custom control development and integration can be accomplished with very few tools. Of course, the most important of these will be Visual Studio Code, but a couple other tools are needed when we work with our scripting files.


## <a name="VSC">Visual Studio Code</a>

Several Extensions for VS Code should be included in your installation.

* Live Server (Ritwick Dey)
* AL Extension Pack (waldo)

The *Live Server* extension will allow the coder to see immediate changes to an HTML (with JavaScript) page. 

Go into the VS Code extensions and search for *Live Server*. Assure it is by Ritwick Dey. Download and activate it.

AL developers should already be familiar with the *AL Extension Pack* by Waldo.

## <a name="javascript">JavaScript Development</a>

JavaScript may be unfamiliar to many AL developers. While this is not a tutorial on JS, we will cover some concepts such as the ability to download our libraries on the fly. Two of those that we'll need are jQuery and our single widget, DataTables.

* jQuery (https://jquery.com)
* DataTables (CloudTables) (https://www.datatables.net/)

Both of these can be used without actually downloading the scripted code. We need only reference it in the header of the HTML page and it will download at runtime.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Using the CDN may increase a delay between the time a web page becomes visible and when the script has been downloaded and active. <i>Caching</i> improves this after the first download. Other techniques can show the page in full and <u>then</u> download any external content; making it appear as if no delay exists.</dd>
</dl>

Both the CDN and the download are shown in the following listing.

### CDN: 

\<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/dataTables.jqueryui.css"/>
 
\<script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
\<script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.jqueryui.js"></script>

### Download:<br>
https://www.datatables.net/download/

## <a name="bc">Business Central</a>
Of course, eventually BC Extensions built for the custom control require Business Central (in a Docker container).

Installing Docker, building a sandbox container, and connecting via VS Code is presumed but not covered in this tutorial.
