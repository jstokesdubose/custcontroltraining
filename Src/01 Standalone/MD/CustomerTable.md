# Layout for the Customer Table

The simplest HTML layout has the following sections:
```html
<html>
    <head>
    </head>
    <body>
    </body>
</html>
```
*CustomerList.html* does not extend the layout much more than that &ndash; and the addition of a table.

## <a name="declaration">Declaration</a>
The texts say that an HTML file must begin with a **DOCTYPE** declaration. While no longer true for most browsers, declarinig a DOCTYPE exhibits good form.

```html
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
    </body>
</html>
```
## <a name="header">Header Contents</a>
Within the header the CustomerList.html file adds three kinds of content:

* a title
* links<br>
and
* scripts

```html
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>JS Demo</title>

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.css" />
    <link rel="stylesheet" type="text/css" href="custStyle.css" />

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.js"></script>
    <script  src="data.js"></script>
</head>
    <body>
    </body>
</html>
```

### Title
The *\<title>* tag adds just a little flare to the page, putting a title on the browser tab.

![Tab Title](../../media/tabtitle.png)

### Links
Links *\<Link>* tags reference external style sheets. Like other types of references in the header (*scripts*), links can reference local files or content delivery networks.

In the case of **CustomerList.html**, the *DataTable* widget requires a bootstrap stylesheet and provides one in its CDN. An additional stylesheet, built for this page links from a local folder.

### Scripts
Three scripts link via CDN. According to the documentation, DataTables requires all three to work properly. 

* jQuery
* DataTables
and
* a Datatables version built for Bootstrap

## <a name="body">Body</a>
The body of *CustomerList.html* contains a very simple HTML table definition.

``` html
<body>
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
```

### Heading
For purely aesthetic reasons, a title *\<h1>* tag presents a title for the table.

### Table
The **id** of the *\<table>* definion allows the *DataTable* widget to interact with the table. Otherwise, this table has no remarkable features &ndash: except that it lacks definitions.

Only header rows exist in this definition, but they don't exist in the body; as in most tables. The *DataTable* does this magic.

<div style="margin-left:20px;">This lack of body rows makes this an obvious requirement for the <i>DataTable</i>. Also evident, but seemingly unused, the <i>footer</i> id must be specified for the <i>DataTable</i> to provide paging controls.

All of this can be found in the <i>DataTables</i> documentation.</div>

### Body Script

Lastly of note, an embedded *\<script>*, placed after the body, defines an anonymous function that incorporates the *DataTable* at the ID of the *#customerTable*.

The "ready" function is called by the DOM when the page completes loading. Without this precaution, the *DataTable* might be called before the script has downloaded from the CDN.

```html
<script>
    $(document).ready(function () {
        $('#customerTable').DataTable(
            {
                data: customers
            }
        );
    });
    
</script>
```

This *\<script>* could be placed in a separate \*.js file, but it was just simpler to include it in the same HTML file as the table.

The portion of the script that lists the data source, 
````html
        data: customers
````
is a <span style="font-weight:bold;font-style:italic;font-size:12pt">property</span> of the `DataTable`. In shorthand, it tells the `DataTable` code to look for a JavaScript variable named **customers** and use that as the data source.

We'll create some dummy data after we fill in the style sheet.

