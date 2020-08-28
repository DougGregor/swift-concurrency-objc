
@available(macOS 11.0, *)
class MKCompassButton : NSView {
  convenience init(mapView: MKMapView?)
  weak var mapView: @sil_weak MKMapView?
  var compassVisibility: MKFeatureVisibility
}
