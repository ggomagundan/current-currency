# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready =->
  clip = new Clipboard('.addr-copy')

  toastr.options =
    "positionClass": "toast-bottom-center"

  $(".addr-copy").click ->
    toastr.info "Copy Success Alert"

$( document ).on 'turbolinks:load', ->
  ready()
