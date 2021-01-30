# Environment

This training module uses two environments for development:

 * HTML File
    * VS Code with the Live Server add-in
 * BC Development
    * VS Code
    * Docker
    * BC Container

<blockquote> These will be presented separately. The first method shown is a simple proof-of-concept that does not rely on Dynamics or AL. It simplifies the real learning concepts.</blockquote><br>

The resources to support our development inside Business Central represent a superset of the resources needed to work as a standalone HTML+JS+CSS IDE. 


## <a name="docker">Docker</a>

Since Business Central is used and this is a tutorial not intended to interact with other BC extensions, we will work inside a Docker container with the most recent version of BC.

The script used to create the container will be shown in the appendix of this document.

The script automatically installs the test libraries and scaffolding, although no tests will be written for this tutorial.

The "how-tos" of installing Docker, building a sandbox container, and connecting via VS Code are all presumed but not covered in this tutorial.

## <a name="git">Git</a>
A Git repository will be used (Tigunia DevOps), and installing Waldo's AL extension suite will install the VSCode tools needed to work with Git within VSCode.

[Git Desktop](https://desktop.github.com/) is quite helpful in utilizing Git to greater potential andcan be downloaded from the provided link.

## <a name="vsc">Visual Studio Code</a>
VS Code is the only IDE used in this training.

[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) will be used for interactive HTML page updates.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Links to these add-ins can be found <a href="./References.md#code">here</a>.</dd>
</dl>

## <a name="javascript">JavaScript Development</a>

JavaScript may be unfamiliar to many AL developers. JavaScript has a very common look to both C# and Java and anyone with any of this kind of coding experience can likely understand what a JavaScript function does. 

## The Content Delivery Network

One of the ways we provide third-party code and styles to our browser application is called *Content Delivery.* We'll use *Content Delivery Networks* to acquire scripts and stylesheets for our DataTable Widget. We will dynamically load additional files for the following:
* Bootstrap (a style library <u>and</u> scripting)
* jQuery (a javascript library)
* DataTables (CloudTables) (https://www.datatables.net/)

We could download these files, store them on disk, and reference them as files, rather than web resources, but this will make our project simpler. We need only reference it in the header of the HTML page and it will download at runtime. We also asure that we get the latest version, too.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Some people experience latency when using a CDN. There is a "round trip" of the request and the content delivery and the further from the CDN, the longer the latency. The size of the content may extend the experienced delay. <br><br>In other products, <i>caching</i> improves this after the first download. Document Object Model management can also improve the <i>perception</i> of delay. Unfortunately, Control Add-ins in BC are at the mercy of how BC wants to manage content delivery.<br><br>
</dd>
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