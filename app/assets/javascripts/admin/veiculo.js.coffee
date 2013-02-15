# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
  modelos = $('#veiculo_modelo_id').html()
  $('#veiculo_modelo_id').hide()
  $('#veiculo_marca_id').change ->
    marcas = $('#veiculo_marca_id :selected').text()
    escaped_marca = marcas.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(modelos).filter("optgroup[label='#{escaped_marca}']").html()
    if options
      console.log(escaped_marca)
      console.log(options)
      $('#veiculo_modelo_id').html(options)
      $('#veiculo_modelo_id').empty()
      $('#modelo_id').html(options)
    else
      $('#modelo_id').empty()
