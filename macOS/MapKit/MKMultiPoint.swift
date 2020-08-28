
@available(macOS 10.9, *)
class MKMultiPoint : MKShape {
  func points() -> UnsafeMutablePointer<MKMapPoint>
  var pointCount: Int { get }
  func getCoordinates(_ coords: UnsafeMutablePointer<CLLocationCoordinate2D>, range: NSRange)
  @available(macOS 11.0, *)
  func location(atPointIndex index: Int) -> CGFloat
  @available(macOS 11.0, *)
  func __locations(atPointIndexes indexes: IndexSet) -> [NSNumber]
}

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
extension MKMultiPoint {
  func locations(at indexes: IndexSet) -> [CGFloat]
}
