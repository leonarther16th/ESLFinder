
  $( document ).ready(function() {
  $('#datepicker').datepicker({
    daysOfWeekDisabled:[0,2,3,4,5,6],
    autoclose: true
  });

  $("#select2").select2({
      placeholder: "Select a City"
  });

  $('.filter').affix({
    offset: {
      top: 100
    , bottom: 100
    }
  })

});
