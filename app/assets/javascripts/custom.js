
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

});
