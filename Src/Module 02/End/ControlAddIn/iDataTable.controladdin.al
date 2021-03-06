controladdin iDataTable 
{
    StartupScript = '.\ControlAddIn\startup.js';
 
    StyleSheets = 'https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.css',
                '.\ControlAddIn\custStyle.css';

    scripts = 'https://code.jquery.com/jquery-3.3.1.js',
            'https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js',
            'https://cdn.datatables.net/1.10.23/js/dataTables.bootstrap4.js',
            '.\ControlAddIn\DataTable.js',
            '.\ControlAddIn\data.js';


    HorizontalStretch = true;
    HorizontalShrink = true;
    VerticalShrink = true;
    VerticalStretch = true;
    RequestedHeight = 700;
    MinimumHeight = 300;
    RequestedWidth = 800;
    MinimumWidth = 500;

    event ControlReady();
    procedure Render(HTLM: Text);
    procedure LinkWidget();

}