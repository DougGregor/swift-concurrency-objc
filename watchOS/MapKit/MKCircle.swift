
@available(watchOS 2.0, *)
class MKCircle : MKShape, MKOverlay {
  convenience init(center coord: CLLocationCoordinate2D, radius: CLLocationDistance)
  convenience init(mapRect: MKMapRect)
  var radius: CLLocationDistance { get }
}
