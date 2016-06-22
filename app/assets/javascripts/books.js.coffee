# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

bind_dummy_btn_click = ->
  $('#dummy-book').click ->
    alert('hello')
    $.ajax(
      url: '/books'
      type: 'POST'
      dataType: 'script'
      data: {'book':{'name': 'dummy name', 'title': 'dummy title'}}
    )
    

$ ->
  bind_dummy_btn_click()