# Environment

This training module addresses building custom controls for Business Central using two approaches: 

 * Standalone HTML file with JS and CSS
 * The same logic and structure, but transferred into Business Central

The resources to support our development inside Business Central represent a superset of the resources needed to work as a standalone HTML+JS+CSS IDE... with one addition.

Since Business Central is used, this tutorial leverages a BC container inside of Docker

## <a name="docker">Docker</a>
Docker container manager is used to host a Business Central container for AL extension development. The script I use will be shown in the appendix of this document.

Developers following test-first development always install the test libraries and scaffolding, although no tests will be written for this tutorial. AL unit testing tools cannot be used in JavaScript, and the AL testing suite is mostly incompatible with JavaScript. So that won't be a included in this training.

Installing Docker, building a sandbox container, and connecting via VS Code is presumed but not covered in this tutorial.

## <a name="git">Git</a>
A Git repository will be used (Tigunia GitHub account), and installing Waldo's AL extension suite will install the VSCode tools needed to work with Git within VSCode.

[Git Desktop](https://desktop.github.com/) is quite helpful in utilizing Git to greater potential andcan be downloaded from the provided link.

## <a name="vsc">Visual Studio Code</a>
VS Code is the only IDE used in this training.


Several Extensions for VS Code should be included in your installation.

* Live Server (Ritwick Dey)
* AL Extension Pack (waldo)

In addition to the AL-code add-ins, one more is recommended: 
[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer), with it's familiar *GoLive* button in the bottom of the VS Code window.

The *Live Server* extension will allow the coder to see immediate changes to an HTML (with JavaScript) page. 

Go into the VS Code extensions and search for *Live Server*. Assure it is by Ritwick Dey. Download and activate it.

AL developers should already be familiar with the *AL Extension Pack* by Waldo.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Links to these add-ins can be found <a href="./References.md#code">here</a>.</dd>
</dl>

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

\<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/dataTables.jqueryui.css"/><br>
 
\<script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script><br>
\<script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.jqueryui.js"></script>

### Download:<br>
https://www.datatables.net/download/

