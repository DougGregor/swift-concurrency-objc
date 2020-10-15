
@available(tvOS 9.2, *)
class MKMapCamera : NSObject, NSSecureCoding, NSCopying {
  var centerCoordinate: CLLocationCoordinate2D
  @available(tvOS 13.0, *)
  var centerCoordinateDistance: CLLocationDistance
  var heading: CLLocationDirection
  var pitch: CGFloat
  @available(tvOS, introduced: 9.2, deprecated: 100000, message: "Use centerCoordinateDistance")
  var altitude: CLLocationDistance
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromEyeCoordinate eyeCoordinate: CLLocationCoordinate2D, eyeAltitude: CLLocationDistance)
  @available(tvOS 9.0, *)
  convenience init(lookingAtCenter centerCoordinate: CLLocationCoordinate2D, fromDistance distance: CLLocationDistance, pitch: CGFloat, heading: CLLocationDirection)
}
