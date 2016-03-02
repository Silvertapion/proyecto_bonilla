;
$(function () {


    $("#tabla").DataTable();


    $('.btnAdd').on('click', function (event) {
        event.preventDefault();

        var _this = $(this);
        var form = _this.closest('form');
        $.ajax({
            url: URL + 'curriculum/store',
            type: 'post',
            dataType: 'json',
            data: form.serializeArray()
        })
        .done(function () {
            
            console.log("success");
            
        })
        .fail(function () {
            console.log("error");
        });

    });

    $('.btnUpdate').on('click', function (event) {
        event.preventDefault();

        var _this = $(this);
        var form = _this.closest('form');
        $.ajax({
            url: URL + 'curriculum/update',
            type: 'post',
            dataType: 'json',
            data: form.serializeArray()
        })
        .done(function () {
            
            console.log("success");
           
        })
        .fail(function () {
            console.log("error");
        });


    });

    $('.exp_lab').on('click',  function(event) {
        event.preventDefault();

        $.ajax({
            url: URL+'curriculum/show',
            type: 'POST',
            dataType: 'JSON',
            data: {empresa: 'empresa',telefono: 'telefono',year_ini: 'year_ini',year_fin: 'year_fin'},
        })
        .done(function() {
            _modal.find('#titulo').html("" + response.Title)
            console.log("success");
        })
        .fail(function() {
            console.log("error");
        });
        
       var _modal = $('.modal');        
        _modal.modal('show');

    });
});

 