
@available(macOS 10.15, *)
let MKMapCameraZoomDefault: CLLocationDistance
extension MKMapView {
  @available(macOS 10.15, *)
  class CameraZoomRange : NSObject, NSSecureCoding, NSCopying {
    init?(minCenterCoordinateDistance minDistance: CLLocationDistance, maxCenterCoordinateDistance maxDistance: CLLocationDistance)
    convenience init?(minCenterCoordinateDistance minDistance: CLLocationDistance)
    convenience init?(maxCenterCoordinateDistance maxDistance: CLLocationDistance)
    var minCenterCoordinateDistance: CLLocationDistance { get }
    var maxCenterCoordinateDistance: CLLocationDistance { get }
  }
}
