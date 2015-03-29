//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require plugins/bootstrap/bootstrap.min
//= require plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min
//= require app
//= require sidebar
//= require panels
//= require underscore-min
//= require gmaps/google
handler = Gmaps.build('Google');
handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
  markers = handler.addMarkers([
    {
      "lat": 0,
      "lng": 0,
      "picture": {
        "url": "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
        "width":  36,
        "height": 36
      },
      "infowindow": "hello!"
    }
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});
