
@available(macOS 11.0, *)
class MKZoomControl : NSView {
  convenience init(mapView: MKMapView?)
  weak var mapView: @sil_weak MKMapView?
}
