/// <summary>
/// Page DataTable (ID 50100).
/// Custom Control Page
/// </summary>
page 50100 DataTable
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            usercontrol(iTable; iDataTable)
            {
                ApplicationArea = all;

                trigger ControlReady()
                var
                    _seed: text;
                begin
                    SeedSite(_seed);
                    CurrPage.iTable.Render(_seed);
                end;

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
                            CurrPage.iTable.AddCustomer(_custNoString, _customer.Name, _customer.Address, _customer.City, _customer.County);
                        until _customer.Next() = 0;
                    _waitDialog.Close();
                    CurrPage.iTable.LinkWidget();
                end;
            }
        }
    }
    local procedure SeedSite(var _seed: text)
    begin
        _seed := '<h1> ';
        _seed += '<div id="title">JavaScript in Business Central!?</div> ';
        _seed += '</h1> ';
        _seed += '<table id="customerTable" class="table"> ';
        _seed += '<thead> ';
        _seed += '<tr> ';
        _seed += '<th width=10%>Customer No.</th> ';
        _seed += '<th width=20%>Customer Name</th> ';
        _seed += '<th width=20%>Address</th> ';
        _seed += '<th width=20%>City</th> ';
        _seed += '<th width=10%>State</th> ';
        _seed += '</tr> ';
        _seed += '</thead> ';
        _seed += '<tbody> ';
        _seed += '</tbody> ';
        _seed += '</table> ';
    end;
}