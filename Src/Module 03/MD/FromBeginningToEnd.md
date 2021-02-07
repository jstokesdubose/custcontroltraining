# Module 03: Adding Dynamic Data To a Control Add-in

This should be the simplest of all three coding modules. We have a Business Central Add-in that uses a customcontrol in a Card Page and uses the Business Central approach to filling the controlAddin iframe with a JavaScript Widget. 

And it works. We're onlymissing dynamic data. We'll take those data from the Customer table.

Let's get Started.

## Substitute the data assignment

There are four files where we will make changes. In order they are:
* data.js
* DataTable.js<br>and
* DataTable&period;page&period;al
* startup.js

In order, let's look a the changes.

## data.js
Our only change here is to comment-out the whole file. (I'd delete it but I want to preserve it for the tutorial.)

````javascript
// var customers = [
//     [
//         "10000",
//         "Bob Jones",
//         "123 Main St.",
//         "Springfield",
//         "Ohio"
//     ],
//     [
//         "20000",
//         "Phil Smith",
//         "100 Elm St.",
//         "Waco",
//         "Texas"
//     ]
// ];
````

This will require that we fill the var, `customers`, some other way.

## DataTable.js

Let's open DataTable.js.

Firstly, let's define a JavaScript variable in DataTable.js as `customers`. It's a null array at this point.

````javascript
let customers = [];
````

Now we need another way to send data from the outside to a JavaScript function that will initialize a string array and add it to the customer array variable. This is the JavaScript function that will "catch" the data when we send it in.

````javascript
function AddCustomer(custNo, custName, custAddress, custCity, CustState) {
    var customer = [];
    customer.push(custNo);
    customer.push(custName);
    customer.push(custAddress);
    customer.push(custCity);
    customer.push(CustState);

    customers.push(customer);
}
````
Inside the function we instantiate an array variable called `customer`. One by one, we `push` the string values from the parameters into the array.

This doesn't create a JSON object but an array, like we saw in `data.js`. 
```` javascript
    [
        "10000",
        "Bob Jones",
        "123 Main St.",
        "Springfield",
        "Ohio"
    ]
````
We must be careful to maintain the same order of the array as the columns in our table.

<hr>
The last line `Customers.push(customer)`, pushes the `customer` array into the `customers` array. One letter differentiates the array and the array of arrays.
<hr><br>

<br><hr><dl>
<dt style="font-style:italic;font-weight:bold;font-size:14px">A note of caution:</dt>
<dd>The only reliable way to send data back and forth from JavaScript to Business Central is as a "string" or "text" type. JavaScript doesn't know date and time types, and can confuse decimal types and even integers. There are ways to send the data as text and then convert it once inside JavaScript. While it requires an additional step, it is the safest. </dd>
</dl><hr><br>

## idataTable.controladdin.al

We need to add the reference to `AddCustomer` inside the `controladdin` object. We'll add it just after the other procedure declarations.

```` js
procedure AddCustomer(custNo: text; custName: text;
                     custAddress: text; custCity: text;
                     CustState: text);
````
We've already got the definition in `DataTable.js`.

## DataTable.page.al

Let's add the call to `AddCustomer` in the `FillCustomerArray` trigger in the iTable control.

````
trigger FillCustomerArray()
var
    _customer: record Customer;
    _custNoString: text;
    _waitDialog: Dialog;
begin
    _customer.reset();
    _waitDialog.Open('Filling Data');
    if _customer.findset() then
        repeat
            _custNoString := Format(_customer."No.");
            CurrPage.iTable.AddCustomer(_custNoString, _customer.Name,
                _customer.Address, _customer.City, _customer.County);
        until _customer.Next() = 0;
    _waitDialog.Close();
    CurrPage.iTable.LinkWidget();
end;
````

Did you see the call to `CurrPage.iTable.AddCustomer`? That calls a function that's inside the `DataTable.js` file. Both have identical parameter layouts.

## startup.js

Lastly, let's add the call from `startup.js` to call the `FillCustomerArray` trigger. 

````js
Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("FillCustomerArray", []);
````
This is just like the call above it that called `ControlReady`.

## Let's run

The process is exactly like the process in Module 02 until `startup.js` stumbles on the last line and calls `FillCustomerArray`.

The Customer table renders all its records, one at a time, and those data are sent to the `AddCustomer` JavaScript function in our new `iframe`. 

And we get a dynamically-populated widget filled with Customer data obtained from Business Central.

