
@available(macOS 10.9, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(center coord: CLLocationCoordinate2D, radius: CLLocationDistance)
  convenience init(mapRect: MKMapRect)
  var radius: CLLocationDistance { get }
}
