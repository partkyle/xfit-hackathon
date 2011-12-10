# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
window.remove_fields = (link) ->
  parent = $(link).closest(".fields")
  parent.find("input[type=hidden]").val("1")
  if (parent.is('.new'))
    parent.remove()
  else
    parent.hide()

window.add_fields = (link, association, content) ->
  new_id = new Date().getTime()
  regexp = new RegExp("new_" + association, "g")
  $(link).parent().before( content.replace(regexp, new_id) )