var table = $('#projectInfo').DataTable();
$('#projectInfo tbody').on('click', 'tr', function () {
    if ($(this).hasClass('selected')) {
        $(this).removeClass('selected');
    }
    else {
        table.$('tr.selected').removeClass('selected');
        $(this).addClass('selected');
    }
    var data = table.row(this).data();
    var email = (data[0]);
    
   alert(email);
   
});


