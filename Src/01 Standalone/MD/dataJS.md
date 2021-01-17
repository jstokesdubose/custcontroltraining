# Data JS File

*DataTable* needs data. There are no sources for data other than a static one, and the *data.js* file accomplishes this requirement.

Dynamic data from BC will replace this (with some additional logic and functionality), but for now, the data.js file will provide all the utility needed for a demonstration and validation that the tools work together. 

The whole file simply defines one variable: **customers**.

Customers, though, is a JSON array of arrays. Each customer is an array. **customers** has two array members: customer 10000 and 20000.

```javascript
var customers = [
    [
        "10000",
        "Bob Jones",
        "123 Main St.",
        "Springfield",
        "Ohio"
    ],
    [
        "20000",
        "Phil Smith",
        "100 Elm St.",
        "Waco",
        "Texas"
    ]
]
````

The knowledge that **customers** is a JSON array of arrays will help when migrating to Business Central.

