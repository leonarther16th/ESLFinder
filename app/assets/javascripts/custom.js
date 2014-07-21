
  $( document ).ready(function() {
  $('#datepicker').datepicker({
    daysOfWeekDisabled:[0,2,3,4,5,6],
    autoclose: true
  });

  $("#select2-city").select2({
      placeholder: "Select a City"
  });

  $("#select2-country").select2({
      placeholder: "Select a Country"
  });

  $('.filter').affix({
    offset: {
      top: 100
    , bottom: 100
    }
  })

$("select").selectpicker({style: 'btn-sm btn-default', menuStyle: 'dropdown-inverse'});

$(".agency-settings-field").change( function() {
  $('#save-agency').html('<i class="glyphicon glyphicon-floppy-disk"></i> Save Changes').removeClass('btn-primary').addClass('btn-inverse');
});

$("select").change( function() {
  $('#save-setting').html('<i class="glyphicon glyphicon-floppy-disk"></i> Save Changes').removeClass('btn-primary').addClass('btn-inverse');
});

});

