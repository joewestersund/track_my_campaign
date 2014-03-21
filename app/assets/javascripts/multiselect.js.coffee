ready = ->
  init_multiselect =  () ->
  $('.multiselect').multiselect({ enableFiltering:true, maxHeight: 300});

$(document).ready(ready)
$(document).on('page:load', ready)