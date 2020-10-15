
extension MKMapSnapshotter {
  @available(iOS 7.0, *)
  class Snapshot : NSObject {
    var image: UIImage { get }
    func point(for coordinate: CLLocationCoordinate2D) -> CGPoint
    @available(iOS 13.0, *)
    var traitCollection: UITraitCollection { get }
  }
}
