function Render(html) {
    HTMLContainer.insertAdjacentHTML('beforeend', html);
}

function LinkWidget () {
    $('#customerTable').DataTable(
        {
            data: customers
        }
    );
};



