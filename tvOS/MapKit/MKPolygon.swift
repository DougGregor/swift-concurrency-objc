
@available(tvOS 9.2, *)
class MKPolygon : MKMultiPoint, MKOverlay {
  convenience init(points: UnsafePointer<MKMapPoint>, count: Int)
  convenience init(points: UnsafePointer<MKMapPoint>, count: Int, interiorPolygons: [MKPolygon]?)
  convenience init(coordinates coords: UnsafePointer<CLLocationCoordinate2D>, count: Int)
  convenience init(coordinates coords: UnsafePointer<CLLocationCoordinate2D>, count: Int, interiorPolygons: [MKPolygon]?)
  var interiorPolygons: [MKPolygon]? { get }
}
