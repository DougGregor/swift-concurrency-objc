
extension MKMapView {
  @available(iOS 13.0, *)
  class CameraBoundary : NSObject, NSSecureCoding, NSCopying {
    init?(mapRect: MKMapRect)
    init?(coordinateRegion region: MKCoordinateRegion)
    var mapRect: MKMapRect { get }
    var region: MKCoordinateRegion { get }
  }
}
