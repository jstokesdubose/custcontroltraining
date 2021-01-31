# Environment

This training module uses two environments for development:

 * For the HTML File
    * VS Code with the Live Server add-in
 * For the BC Development
    * VS Code
    * Docker
    * BC Container

<blockquote> These will be presented separately. The first method shown is a simple proof-of-concept that does not rely on Dynamics or AL. It simplifies the real learning concepts.</blockquote><br>

The resources to support our development inside Business Central represent a superset of the resources needed to work as a standalone HTML+JS+CSS IDE. 


## <a name="docker">Docker</a>

Since Business Central is used and this is a tutorial not intended to interact with other BC extensions, we will work inside a Docker container with the most recent version of BC.

![Docker](../media/docker.png)

The script used to create the container will be shown in the appendix of this document.

The script automatically installs the test libraries and scaffolding, although no tests will be written for this tutorial.

The "how-tos" of installing Docker, building a sandbox container, and connecting via VS Code are all presumed but not covered in this tutorial.

## <a name="git">Git</a>

In your own development, a Git repository should be used (Tigunia DevOps).

![devops](../media/devops.png)

Installing Waldo's AL extension suite will install the VSCode tools needed to work with Git within VSCode.

![alt](../media/waldo%20al%20pack.png)
<br><br>

[Git Desktop](https://desktop.github.com/) is quite helpful in utilizing Git to greater potential and can be downloaded from the provided link.

The files for this tutorial are already available in a Tigunia DevOps Git repo. In addition, the same files and the video can be found in the Tigunia online training site at lms.tigunia.com. 

## <a name="vsc">Visual Studio Code</a>
VS Code is the only IDE used in this training.

![vs code download](../media/vs%20code%20download.png)

[Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) will be used for interactive HTML page updates.

![live server](../media/liveserver.png)

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Links to these add-ins can be found <a href="./References.md#code">here</a>.</dd>
</dl>

## <a name="javascript">JavaScript Development</a>

JavaScript may be unfamiliar to many AL developers. JavaScript has a very common look to both C# and Java and anyone with coding experience in these languages can likely understand what a JavaScript function does. 

Learning JavaScript will continue to return rewards, even in BC extension development.

## The Content Delivery Network

One of the ways we provide third-party code and styles to our browser application is called *Content Delivery.* We'll use *Content Delivery Networks* to acquire scripts and stylesheets for our DataTable Widget. We will dynamically load additional files for the following:
* Bootstrap (a style library <u>and</u> scripting)
* jQuery (a javascript library)
* DataTables (CloudTables) (https://www.datatables.net/)

````html
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.css" />
    <link rel="stylesheet" type="text/css" href="custStyle.css" />

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.js"></script>
    <script  src="data.js"></script>
````

We could download these files, store them on disk, and reference them as files, rather than web resources, but using CDNs provided for us will make our project simpler. We need only reference a resource in the header of the HTML page and the browser will take care of downloading it at runtime. We also asure that we get the latest version, too.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Some people experience latency when using a CDN. There is a "round trip" of the request and the content delivery and the further from the CDN, the longer the latency. The size of the content download may extend the experienced delay. <br><br>In other products, <i>caching</i> improves this after the first download. Document Object Model management can also improve the <i>perception</i> of delay. Unfortunately, Control Add-ins in BC are at the mercy of how BC wants to manage content delivery.<br><br>
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