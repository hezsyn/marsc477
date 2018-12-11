$(document).on "turbolinks:load", ->
  $(".clickable-row").click ->
    window.location = $(this).data("href");