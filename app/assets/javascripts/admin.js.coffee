#
#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require turbolinks
#= require plugins/bootstrap/bootstrap.min
#= require plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min
#= require app
#= require sidebar
#= require panels
#= require underscore-min
#= require gmaps/google
#= require base
#= require global
#= require_tree ./utilities
#= require_tree ./elements
#= require receivers_dashboards

console.log 'moo'
#$('.social-sidebar').socialSidebar()
$('.main').panels()
$('.main a[href=\'#ignore\']').click (e) ->
  e.stopPropagation()
  return
$(document).on 'click', '.navbar-super .navbar-super-fw', (e) ->
  e.stopPropagation()
  return

### Full Calendar Example ###
date = new Date
d = date.getDate()
m = date.getMonth()
y = date.getFullYear()
$('#calendar-example').fullCalendar
  isRTL: if $('html').attr('dir') == 'rtl' then true else false
  header:
    left: 'title'
    right: 'prev,next,month,basicWeek,basicDay'
  editable: true
  events: [
    {
      title: 'All Day Event'
      start: new Date(y, m, 1)
    }
    {
      title: 'Long Event'
      start: new Date(y, m, d - 5)
      end: new Date(y, m, d - 2)
    }
    {
      id: 999
      title: 'Repeating Event'
      start: new Date(y, m, d - 3, 16, 0)
      allDay: false
    }
    {
      id: 999
      title: 'Repeating Event'
      start: new Date(y, m, d + 4, 16, 0)
      allDay: false
    }
    {
      title: 'Meeting'
      start: new Date(y, m, d, 10, 30)
      allDay: false
    }
    {
      title: 'Lunch'
      start: new Date(y, m, d, 12, 0)
      end: new Date(y, m, d, 14, 0)
      allDay: false
    }
    {
      title: 'Birthday Party'
      start: new Date(y, m, d + 1, 19, 0)
      end: new Date(y, m, d + 1, 22, 30)
      allDay: false
    }
    {
      title: 'Click for Google'
      start: new Date(y, m, 28)
      end: new Date(y, m, 29)
      url: 'http://google.com/'
    }
  ]
