/// <summary>
/// Page DataTable (ID 50100).
/// Control Add-in Page
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
                    CurrPage.iTable.LinkWidget();
                end;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;

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