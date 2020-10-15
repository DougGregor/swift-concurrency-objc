
extension MKMapSnapshotter {
  @available(tvOS 9.2, *)
  class Snapshot : NSObject {
    var image: UIImage { get }
    func point(for coordinate: CLLocationCoordinate2D) -> CGPoint
    @available(tvOS 13.0, *)
    var traitCollection: UITraitCollection { get }
  }
}
