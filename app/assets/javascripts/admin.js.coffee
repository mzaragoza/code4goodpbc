#
#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require turbolinks
#= require plugins/bootstrap/bootstrap.min
#= require plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min
#= require app
#=# require sidebar
#= require panels
#= require fullcalendar/fullcalendar
#= require underscore-min
#= require gmaps/google
#= require base
#= require global
#= require_tree ./utilities
#= require_tree ./elements
#= require receivers_dashboards

console.log 'admin.js loaded'
#$('.social-sidebar').socialSidebar()
$('.main').panels()
$('.main a[href=\'#ignore\']').click (e) ->
  e.stopPropagation()
  return
$(document).on 'click', '.navbar-super .navbar-super-fw', (e) ->
  e.stopPropagation()
  return

