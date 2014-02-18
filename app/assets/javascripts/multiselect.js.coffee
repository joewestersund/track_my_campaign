ready = ->
  init_multiselect =  () ->
  $('.multiselect').multiselect();

$(document).ready(ready)
$(document).on('page:load', ready)