# <a name="standalone">Working in Standalone JavaScript</a>

Before incorporating a custom control into Business Central, proving that the control works outside of BC smooths the rest of the work. For this reason, this module only utilizes VS Code and a browser.

**We can skip Business Central for the first steps.**

**These files will be found in the repository under the *01 Standalone* folder.**

Every custom control begins with HTML. Depending on the complexity of the data and the JS widget added, that HTML may be very simple or very complex or something in between.

In other words, the only things necessary to make our sample work will be a few standalone files and a CDN reference or two.

## <a name="list">List of files</a>

> ![CustomControl](../../media/threefiles.png)

These files will be all that's necessary to build a sample page with a working javascript widget. 

**Two instances of these files will be available under *01 Standalone*. They exist in an incomplete form in the *Begin* folder and finished in the *End* folder.**

## <a name="review">Review of File Contents</a>
    These contents exist in the *Begin* subfolder.
### <a name="html">CustomerList.html</a>
```html
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
```
This may not be the simplest html templates known to exist, but it's close. For the record, the following have been provided:
* `<!DocType>`
* `<head></head>`
* `<body></body>` with a simple `<h1></h1>` and a bit of text
<br>and<br>
* `<script></script>`

These are simply placeholders for what will come.

### <a name="style">custStyle.css</a>

Showing the starting point of this file might confuse some because it's just a couple of stubs for styles.We'll fill the styles in our first effort in making a standalone html file. The `custStyle.css` and will become an important file.

<dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">Note:</dt>
<dd>Our chosen widget also uses two other <code>css</code> files, but they're downloaded from their respective CDNs.</dd>
</dl>

### <a name="data">data.js</a>

The same is true of data.js. This file has no content as we begin.

We will use more than one javascript file before we complete the session.

## Layout for the HTML File
<div style="font-style: italic;text-size: 10px; margin-left:40px; margin-right:40px">I do not and never have considered HTML a language. It is a textual markdown, as are all other markdown formats.<br>
Thank you</div>

This tutorial begins with an `HTML file` that has only the rudimentary `HTML elements` in it. They include:

* `<html>`
* `<head>`<br>
and
* `<body>`
