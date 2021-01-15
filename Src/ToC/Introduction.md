# Introduction to Custom Controls in AL
Extending Business Central does not stop at simply adding additional AL code in a custom extension. As with prior approaches where additional platforms and frameworks could be merged with NAV C/AL code, AL allows similar but different tools.

The reasons for the change are beyond anyone outside the Microsoft hive, but security and architecture certainly play a part.

## <a name="oldArch">Old Architecture</a>
In NAV using C/AL, add-ins written in .NET and added as DLLs in the *Add-ins* subfolder were acceptible, but no longer. The *security risks* posed by DLLs in a multi-tenant, online (cloud) environment have been deemed unacceptable. 

*Business Central allows DLLs in **on-prem** implementations, demonstrating that the design and service changes from NAV to BC do not prohibit DLLs; but Azure and multi-tenancy does.*

## <a name="newArch">New Architecture</a>
Protecting tenants in a SaaS architecture means extending internal tools that cannot compromise others across a session, but still allow different clients the use of powerful external and third-party tools.

One example of this new architecture is shown in the common custom control design allowed in AL.<br>

![CustomControl](../media/CustomControlArchitecture.png)
<br>

On the lower left is a dialog, representing Business Central. It displays a custom control in one of the pages. But what makes up a custom control?

Every custom Control has the same basic structure. Two "objects" that exist as *.al files are as follows:

* A *Page* or *PageExtension* custom object
* A *CustomControl* object

Both of these have *.AL file extensions. While the *CustomControl* file/object does not use a standard AL object number it is still an AL object. It must be discoverable by the *Page* or *PageExtension* which consumes the custom control page.

The rest of the files used in a new custom control are either JavaScript (with a *.js extension), or Cascading Style Sheets (with a *.css extension).

Generically, they are:

* a startup.js
* the control.js itself
* a Cascading Style Sheet (optional)
* any additional JavaScript files (called by the control.js and also optional)

These files exist outside the native BC/AL environment. 

Each will be discussed and created during this training session.

## <a name="widget">Tutorial Widget</a>
This demonstration uses a single, open-source JS widget, almost randomly selected for simplicity and availability. The widget, [DataTables](https://www.datatables.com), provides little value to a Dynamics Business Central envrionment, but provides enough training value &ndash; as well as simplicity for the tutorial &ndash; to be useful. 

As much as anything, anyone can obtain this widget without cost and through both downloads and content delivery network (CDN). More on that later.
