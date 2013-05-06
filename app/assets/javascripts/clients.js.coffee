# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#client_street_id').parent().hide()
  street = $('#client_street_id').html()
  $('#client_city_id').change ->
    city = $('#client_city_id :selected').text()
    escaped_city = city.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(street).filter("optgroup[label='#{escaped_city}']").html()
    if options
      $('#client_street_id').html(options)
      $('#client_street_id').parent().show()
    else
      $('#client_street_id').empty()
      $('#client_street_id').parent().hide()
jQuery ->
  $('#client_room_id').parent().hide()
  room = $('#client_room_id').html()
  $('#client_property_id').change ->
    property = $('#client_property_id :selected').text()
    escaped_property = property.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(room).filter("optgroup[label='#{escaped_property}']").html()
    if options
      $('#client_room_id').html(options)
      $('#client_room_id').parent().show()
    else
      $('#client_room_id').empty()
      $('#client_room_id').parent().hide()
jQuery ->
  $('#client_rent_id').parent().hide()
  rent = $('#client_rent_id').html()
  $('#client_property_id').change ->
    property = $('#client_property_id :selected').text()
    escaped_property = property.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(rent).filter("optgroup[label='#{escaped_property}']").html()
    if options
      $('#client_rent_id').html(options)
      $('#client_rent_id').parent().show()
    else
      $('#client_rent_id').empty()
      $('#client_rent_id').parent().hide()