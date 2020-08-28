
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
@available(watchOS 2.0, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(watchOS 7.0, *)
let kCLLocationAccuracyReduced: CLLocationAccuracy
@available(watchOS 2.0, *)
let CLLocationDistanceMax: CLLocationDistance
@available(watchOS 2.0, *)
let CLTimeIntervalMax: TimeInterval
@available(watchOS 2.0, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(watchOS 2.0, *)
func CLLocationCoordinate2DIsValid(_ coord: CLLocationCoordinate2D) -> Bool
@available(watchOS 2.0, *)
func CLLocationCoordinate2DMake(_ latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(watchOS 2.0, *)
class CLFloor : NSObject, NSCopying, NSSecureCoding {
  var level: Int { get }
}
@available(watchOS 2.0, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: Date)
  @available(watchOS 2.0, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: Date)
  @available(watchOS 6.2, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, courseAccuracy: CLLocationDirectionAccuracy, speed: CLLocationSpeed, speedAccuracy: CLLocationSpeedAccuracy, timestamp: Date)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @available(watchOS 2.0, *)
  var course: CLLocationDirection { get }
  @available(watchOS 6.2, *)
  var courseAccuracy: CLLocationDirectionAccuracy { get }
  @available(watchOS 2.0, *)
  var speed: CLLocationSpeed { get }
  @available(watchOS 3.0, *)
  var speedAccuracy: CLLocationSpeedAccuracy { get }
  var timestamp: Date { get }
  @available(watchOS 2.0, *)
  @NSCopying var floor: CLFloor? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  func getDistanceFrom(_ location: CLLocation) -> CLLocationDistance
  @available(watchOS 2.0, *)
  func distance(from location: CLLocation) -> CLLocationDistance
}
