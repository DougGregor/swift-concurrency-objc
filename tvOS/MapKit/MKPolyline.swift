
@available(tvOS 9.2, *)
class MKPolyline : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafePointer<MKMapPoint>, count: Int)
  convenience init(coordinates coords: UnsafePointer<CLLocationCoordinate2D>, count: Int)
}
