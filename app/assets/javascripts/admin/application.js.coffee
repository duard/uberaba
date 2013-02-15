# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  if $('.help-inline, .field_with_errors').length
    $id=$('.help-inline, .field_with_errors').first().closest('.tab-pane').attr('id')
    $('.active').removeClass('active')
    $('a[href=#'+$id+']').click()