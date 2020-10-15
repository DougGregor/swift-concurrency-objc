
typealias CLLocationDegrees = Double
typealias CLLocationAccuracy = Double
typealias CLLocationSpeed = Double
typealias CLLocationSpeedAccuracy = Double
typealias CLLocationDirection = Double
typealias CLLocationDirectionAccuracy = Double
struct CLLocationCoordinate2D {
  var latitude: CLLocationDegrees
  var longitude: CLLocationDegrees
  init()
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
}

extension CLLocationCoordinate2D : _ObjectiveCBridgeable {
}
typealias CLLocationDistance = Double
let kCLDistanceFilterNone: CLLocationDistance
@available(tvOS 4.0, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(tvOS 14.0, *)
let kCLLocationAccuracyReduced: CLLocationAccuracy
@available(tvOS 6.0, *)
let CLLocationDistanceMax: CLLocationDistance
@available(tvOS 6.0, *)
let CLTimeIntervalMax: TimeInterval
@available(tvOS 4.0, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(tvOS 4.0, *)
func CLLocationCoordinate2DIsValid(_ coord: CLLocationCoordinate2D) -> Bool
@available(tvOS 4.0, *)
func CLLocationCoordinate2DMake(_ latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(tvOS 8.0, *)
class CLFloor : NSObject, NSCopying, NSSecureCoding {
  var level: Int { get }
}
@available(tvOS 2.0, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: Date)
  @available(tvOS 4.2, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: Date)
  @available(tvOS 13.4, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, courseAccuracy: CLLocationDirectionAccuracy, speed: CLLocationSpeed, speedAccuracy: CLLocationSpeedAccuracy, timestamp: Date)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @available(tvOS 2.2, *)
  var course: CLLocationDirection { get }
  @available(tvOS 13.4, *)
  var courseAccuracy: CLLocationDirectionAccuracy { get }
  @available(tvOS 2.2, *)
  var speed: CLLocationSpeed { get }
  @available(tvOS 10.0, *)
  var speedAccuracy: CLLocationSpeedAccuracy { get }
  var timestamp: Date { get }
  @available(tvOS 8.0, *)
  @NSCopying var floor: CLFloor? { get }
  @available(tvOS 3.2, *)
  func distance(from location: CLLocation) -> CLLocationDistance
}
