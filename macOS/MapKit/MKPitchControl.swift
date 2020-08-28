
@available(macOS 11.0, *)
class MKPitchControl : NSView {
  convenience init(mapView: MKMapView?)
  weak var mapView: @sil_weak MKMapView?
}
