let customers = [];

function Render(html) {
    HTMLContainer.insertAdjacentHTML('beforeend', html);
}

function LinkWidget () {
    $('#customerTable').DataTable(
        {
            data: customers
        }
    );
    console.log(customers);
};

function AddCustomer(custNo, custName, custAddress, custCity, CustState) {
    var customer = [];
    customer.push(custNo);
    customer.push(custName);
    customer.push(custAddress);
    customer.push(custCity);
    customer.push(CustState);

    customers.push(customer);
}


