ready = ->
  init_multiselect =  () ->
  $('.multiselect').multiselect({ enableFiltering:true });

$(document).ready(ready)
$(document).on('page:load', ready)