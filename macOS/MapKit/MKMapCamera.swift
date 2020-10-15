
@available(macOS 10.9, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  @available(macOS 10.15, *)
  var centerCoordinateDistance: CLLocationDistance
  var heading: CLLocationDirection
  var pitch: CGFloat
  @available(macOS, introduced: 10.9, deprecated: 100000, message: "Use centerCoordinateDistance")
  var altitude: CLLocationDistance
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  @available(macOS 10.11, *)
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
}
