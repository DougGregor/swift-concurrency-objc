
@available(tvOS 13.0, *)
let MKMapCameraZoomDefault: CLLocationDistance
extension MKMapView {
  @available(tvOS 13.0, *)
  class CameraZoomRange : NSObject, NSSecureCoding, NSCopying {
    init?(minCenterCoordinateDistance minDistance: CLLocationDistance, maxCenterCoordinateDistance maxDistance: CLLocationDistance)
    convenience init?(minCenterCoordinateDistance minDistance: CLLocationDistance)
    convenience init?(maxCenterCoordinateDistance maxDistance: CLLocationDistance)
    var minCenterCoordinateDistance: CLLocationDistance { get }
    var maxCenterCoordinateDistance: CLLocationDistance { get }
  }
}
