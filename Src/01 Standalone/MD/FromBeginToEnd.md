# From Begin to End
Start in a new folder in Visual Studio Code. For this tutorial the folder will be called CustomControl.

Add three files:

* CustomerList.html
* custStyle.css<br>
and
* data.js

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>These can be copied exactly from the "Begin" folder in the Git repo.</dd>
</dl>

Make it easy and just copy the following into the file:
````html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
</head>

<body>
    <h1>
        <div id="title">JavaScript in Business Central!?</div>
    </h1>
</body>
<script>
</script>

</html>
````
It saves on typing.

Fill in the scripts and links in the <head> section with the following:
````html
    <title>JS Demo</title>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.css" />
    <link rel="stylesheet" type="text/css" href="custStyle.css" />

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.js"></script>
    <script  src="data.js"></script>
````

The *\<title>* is optional.

Links in an HTML header point the browser to external files. As shown, these can exist locally or on the internet.

Scripts instruct the browser to copy and include the contents of the files listed as part of the page. 
<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px"><a href="">Proof:</a></dt>
<dd>You can see this by opening a browser (Edge, in this case), pressing F12 >> Sources >> Page.  

</dd>
</dl>

![alt](../../media/CDNContent.PNG)

Likewise, add the following inside the *\<body>* of the HTML file:
````html
   <h1>
        <div id="title">JavaScript in Business Central!?</div>
    </h1>
    <table id="customerTable" class="table">
        <thead>
            <tr>
                <th width=10%>Customer No.</th>
                <th width=20%>Customer Name</th>
                <th width=20%>Address</th>
                <th width=20%>City</th>
                <th width=10%>State</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    <div id="footer"></div>
</body>
````
The `<h1>` tag is an embellishment for the page and not really necessary. However, a heading on the page demonstrates whether the page is opened, even if the rest of the logic isn't working.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px"><a href="">Note:</a></dt>
<dd>The "id" on the table, "customerTable," is necessary as the widget must be able to know to which control the additional styles and JS logic must be applied.

This can be seen immediately below on the layout when we add the script that will attach *DataTable* to our HTML table.</dd></dl>

The last thing to add to the HTML file is the script that runs the DataTable code on the HTML element.

````html
<script>
    $(document).ready(function () {
        $('#customerTable').DataTable(
            {
                data: customers
            }
        );
    });
    
</script>
````

Briefly translated, this script is called <u>after</u> the whole of the page, including scripts downloaded from CDN, has downloaded and been displayed or run. 

The `$(document)` command actually comes from jQuery, and is shorthand for, "return the element that has the id of `customerTable`."

This command actually returns an element and the `DataTable` logic extends the functionality to that element.

Within the anonymous function, only one parameter is applied to the `DataTable` object: "data." 
<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>As briefly discussed earlier, the data for this portion of the tutorial are static data. 

What may have been missed is that the `JSON Array of Arrays` was assigned to a variable of `customers`.

The parameter understands that some kind of JSON object will be referenced. If the variable is not a JSON object, the page will not display any data.</dd></dl>
