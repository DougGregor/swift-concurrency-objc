
@available(watchOS 2.0, *)
class MKMultiPoint : MKShape {
  func points() -> UnsafeMutablePointer<MKMapPoint>
  var pointCount: Int { get }
  func getCoordinates(_ coords: UnsafeMutablePointer<CLLocationCoordinate2D>, range: NSRange)
  @available(watchOS 7.0, *)
  func location(atPointIndex index: Int) -> CGFloat
  @available(watchOS 7.0, *)
  func __locations(atPointIndexes indexes: IndexSet) -> [NSNumber]
}
