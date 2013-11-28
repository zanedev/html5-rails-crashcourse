$ ->
#  alert "test"
  $('#myButton').click () ->
    alert "Hello World!"

  $('.slideshow').cycle()
#
#  url = "http://localhost:3000"
#  $.ajax
#    url: url
#    data: {}
#    success: ->
#      console.log "success", arguments
#    dataType: "json"

  data =
    title: "All about <p> Tags",
    body: "<p>This is a post about &lt;p&gt; tags</p>"

  template = Handlebars.compile($("#entry-template").html());
  $("#template-example").html(template data)



