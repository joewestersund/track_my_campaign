ready = ->
  init_datepicker =  () ->
  $('.datepicker').datepicker({ todayBtn: "linked", autoclose: true});

$(document).ready(ready)
$(document).on('page:load', ready)