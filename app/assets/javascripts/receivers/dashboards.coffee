window.App ||= {}
class App.ReceiversDashboards extends App.Base

   index: =>
      console.log 'users#show'
      handler = Gmaps.build('Google')
      handler.buildMap {
        provider: {}
        internal: id: 'map'
      }, ->
        markers = handler.addMarkers(hash)
        handler.bounds.extendWith markers
        handler.fitMapToBounds()
        #handler.setZoom(10);
        return
