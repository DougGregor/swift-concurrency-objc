
extension ARGeoAnchor {
  @available(iOS 14.0, *)
  enum AltitudeSource : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case coarse
    case precise
    case userDefined
  }
}
@available(iOS 14.0, *)
class ARGeoAnchor : ARAnchor, ARTrackable {
  var coordinate: CLLocationCoordinate2D { get }
  var __altitude: CLLocationDistance { get }
  var altitudeSource: ARGeoAnchor.AltitudeSource { get }
  init(__coordinate coordinate: CLLocationCoordinate2D)
  init(__coordinate coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance)
  init(__name name: String, coordinate: CLLocationCoordinate2D)
  init(name: String, coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance)
}

@available(iOS 14.0, *)
extension ARGeoAnchor {
  @nonobjc convenience init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance? = nil)
  @nonobjc convenience init(name: String, coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance? = nil)
  @nonobjc var altitude: CLLocationDistance? { get }
}
