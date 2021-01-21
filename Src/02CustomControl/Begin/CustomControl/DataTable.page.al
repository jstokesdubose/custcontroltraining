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

            }
        }
    }


}