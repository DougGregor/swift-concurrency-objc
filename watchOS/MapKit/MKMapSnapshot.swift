
extension MKMapSnapshotter {
  @available(watchOS 2.0, *)
  class Snapshot : NSObject {
    var image: UIImage { get }
    func point(for coordinate: CLLocationCoordinate2D) -> CGPoint
  }
}
