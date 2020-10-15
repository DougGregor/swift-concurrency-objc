
@available(iOS 4.0, *)
class MKMultiPoint : MKShape {
  func points() -> UnsafeMutablePointer<MKMapPoint>
  var pointCount: Int { get }
  func getCoordinates(_ coords: UnsafeMutablePointer<CLLocationCoordinate2D>, range: NSRange)
  @available(iOS 14.0, *)
  func location(atPointIndex index: Int) -> CGFloat
  @available(iOS 14.0, *)
  func __locations(atPointIndexes indexes: IndexSet) -> [NSNumber]
}

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
extension MKMultiPoint {
  func locations(at indexes: IndexSet) -> [CGFloat]
}
