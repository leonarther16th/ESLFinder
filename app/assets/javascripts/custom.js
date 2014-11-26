$(document).ready(function() {

    $(function () {
  $('[data-toggle="tooltip"]').tooltip()
});

    $('a[href^="#"]').on('click', function(event) {
        var target = $( $(this).attr('href') );
        if (target.length) {
            event.preventDefault();
            $('html, body').animate({
                scrollTop: target.offset().top
            }, 1000);
        };
    });

    $('#datepicker').datepicker({
        daysOfWeekDisabled: [0, 2, 3, 4, 5, 6],
        autoclose: true
    });

    $('.datepicker').datepicker({
        daysOfWeekDisabled: [0, 1, 2, 3, 4, 6],
        autoclose: true
    });

    $(".select2").select2({
        placeholder: "Please select..."
    });

    $("#select2-city").select2({
        placeholder: "Select a City"
    });

    $("#select2-country").select2({
        placeholder: "Select a Country"
    });

    $("#wysihtml").wysihtml5();

    $('.ref-popup').popover();

    if (matchMedia('only screen and (max-width: 300px)').matches) {

        $('.filter').affix({
            offset: {
                top: 100,
                bottom: 100
            }
        });
    }


    $("select").selectpicker({
        style: 'btn-sm btn-default',
        menuStyle: 'dropdown-inverse'
    });

    $(".agency-settings-field").change(function() {
        $('#save-agency').html('<i class="glyphicon glyphicon-floppy-disk"></i> Save Changes').removeClass('btn-primary').addClass('btn-inverse');
    });

    $("select").change(function() {
        $('#save-setting').html('<i class="glyphicon glyphicon-floppy-disk"></i> Save Changes').removeClass('btn-primary').addClass('btn-inverse');
    });

});

$(document).on('page:load', function() {
    window['rangy'].initialized = false
})