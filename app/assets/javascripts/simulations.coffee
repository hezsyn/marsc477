$(document).ready ->
  $("#new_simulation").on("ajax:success", (event) ->
    [data, status, xhr] = event.detail
    $("#new_simulation").append xhr.responseText
  ).on "ajax:error", (event) ->
    $("#new_simulation").append "<p>ERROR</p>"