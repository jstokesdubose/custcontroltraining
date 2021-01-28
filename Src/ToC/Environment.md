# Environment

This training module addresses building Control Add-ins for Business Central using two approaches: 

 * Standalone HTML file with JS and CSS
 * The same logic and structure, but transferred into Business Central

 These will be presented separately. The first method shown is a simple proof-of-concept that does not rely on Dynamics or AL. It simplifies the real learning concepts.

The resources to support our development inside Business Central represent a superset of the resources needed to work as a standalone HTML+JS+CSS IDE. 

Since Business Central is used, this tutorial leverages a BC container inside of Docker.

## <a name="docker">Docker</a>
Docker is used to host a Business Central container for AL extension development, just like normal. The script I use to create the container will be shown in the appendix of this document.

The script automatically installs the test libraries and scaffolding, although no tests will be written for this tutorial. AL unit testing tools cannot be used in JavaScript, and the AL testing suite is mostly incompatible with JavaScript. So that won't be a included in this training.

The "how-tos" of installing Docker, building a sandbox container, and connecting via VS Code is presumed but not covered in this tutorial.

## <a name="git">Git</a>
A Git repository will be used (Tigunia DevOps), and installing Waldo's AL extension suite will install the VSCode tools needed to work with Git within VSCode.

[Git Desktop](https://desktop.github.com/) is quite helpful in utilizing Git to greater potential andcan be downloaded from the provided link.

## <a name="vsc">Visual Studio Code</a>
VS Code is the only IDE used in this training.

Besides Waldo's AL extension pack, another extensions for VS Code should be included in your installation: [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer). The *Live Server* extension allows the developer to see immediate changes to an HTML (with JavaScript) page. This makes the initial coding and tooling of a JavaScript widget much easier.

Developers may also find the extension by going into extensions and searching for *Live Server*. Assure it is by Ritwick Dey. Download and activate it.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Links to these add-ins can be found <a href="./References.md#code">here</a>.</dd>
</dl>

## <a name="javascript">JavaScript Development</a>

JavaScript may be unfamiliar to many AL developers. JavaScript has a very common look to both C# and Java and anyone with any coding experience can likely understand what a JavaScript function does. 

## Concepts of HTML and the Document Object Model

One of the additional capabilities of working in a browser will be leveraged: we will cover the ability to download our scripts and style sheets on the fly. This is called *Content Delivery.* We'll use *Content Delivery Networks* to acquire scripts and stylesheets for our DataTable Widget. We will dynamically load files for the following:
* Bootstrap (a style library <u>and</u> scripting)
* jQuery (a javascript library)
* DataTables (CloudTables) (https://www.datatables.net/)

We could download these files, store them on disk, and reference them as files, rather than web resources, but this will make our project simpler. We need only reference it in the header of the HTML page and it will download at runtime. We also asure that we get the latest version, too.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Using the CDN may increase a delay between the time a web page becomes visible and when the script has been downloaded and active. <i>Caching</i> improves this after the first download. Other techniques can show the page in full and <u>then</u> download any external content; making it appear as if no delay exists.<br><br>

Unfortunately, Business Central manages when and how CDN packages load. Trying to "trick" Business Central into doing what we want won't work.</dd>
</dl><br>

Both the CDN and the download are shown in the following listing.

### CDN: 

\<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/dataTables.jqueryui.css"/><br>
 
\<script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script><br>
\<script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.jqueryui.js"></script>

### Download:<br>
https://www.datatables.net/download/

## Next

The next module will cover standalone development in HTML, Javascript, and CSS.