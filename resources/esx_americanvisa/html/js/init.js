$(document).ready(function() {
    // Date of birth picker
    $('#dateofbirth').val('01-01-1990');
    
    // LUA event listener
    window.addEventListener('message', function(event) {
        if (event.data.action == 'open') {
            $('#card').show();
        } else if (event.data.action == 'close') {
            $('#card').hide();
        }
    });

    // Register button
    $('#register').click(function() {
        if ($('#lastname').val() != '' && $('#firstname').val() != '' && $('#dateofbirth').val() != '' && $('#sex select').val() != null && $('#height').val() != '') {
            if ($('#height').val().length > 1 && $('#dateofbirth').val().length == 10) {
                var dob = $('#dateofbirth').val();

                $.post('http://esx_americanvisa/register', JSON.stringify({
                    firstname: $("#firstname").val(),
                    lastname: $("#lastname").val(),
                    dateofbirth: $("#dateofbirth").val(),
                    sex: $("#sex select").val(),
                    height: $("#height").val()
                }));
            }
        }
    });

});