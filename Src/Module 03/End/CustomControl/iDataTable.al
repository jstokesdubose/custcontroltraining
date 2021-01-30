/// <summary>
/// ControlAddIn iDataTable.
/// </summary>
controladdin iDataTable 
{
    StartupScript = '.\CustomControl\startup.js';
 
    StyleSheets = 'https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.css',
                '.\CustomControl\custStyle.css';

    scripts = 'https://code.jquery.com/jquery-3.3.1.js',
            'https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js',
            'https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.js',
            '.\CustomControl\DataTable.js',
            '.\CustomControl\data.js';


    HorizontalStretch = true;
    HorizontalShrink = true;
    VerticalShrink = true;
    VerticalStretch = true;
    RequestedHeight = 700;
    MinimumHeight = 300;
    RequestedWidth = 800;
    MinimumWidth = 500;

    event ControlReady();
    event FillCustomerArray();

    /// <summary>
    /// Render.
    /// </summary>
    /// <param name="HTLM">Text.</param>
    procedure Render(HTLM: Text);
    
    /// <summary>
    /// LinkWidget.
    /// </summary>
    procedure LinkWidget();
    /// <summary>
    /// AddCustomer.
    /// </summary>
    /// <param name="custNo">text.</param>
    /// <param name="custName">text.</param>
    /// <param name="custAddress">text.</param>
    /// <param name="custCity">text.</param>
    /// <param name="CustState">text.</param>
    procedure AddCustomer(custNo: text; custName: text;
                         custAddress: text; custCity: text;
                         CustState: text);


}