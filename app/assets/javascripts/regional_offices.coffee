# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#three_pl_regional_offices').hide() 
  addresses = $('#three_pl_regional_offices').html()
  console.log(addresses)
  $('#shipment_three_pl_id').change ->
    broker = $('#shipment_three_pl_id :selected').text()
    escaped_broker = broker.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(addresses).filter("optgroup[label='#{escaped_broker}']").html()
    if options
      $('#three_pl_regional_offices').html(options)  
      $('#three_pl_regional_offices').show()
    else
      $('#sthree_pl_regional_offices').empty()
      $('#three_pl_regional_offices').hide()  
