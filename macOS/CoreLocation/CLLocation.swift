
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
@available(macOS 10.7, *)
let kCLLocationAccuracyBestForNavigation: CLLocationAccuracy
let kCLLocationAccuracyBest: CLLocationAccuracy
let kCLLocationAccuracyNearestTenMeters: CLLocationAccuracy
let kCLLocationAccuracyHundredMeters: CLLocationAccuracy
let kCLLocationAccuracyKilometer: CLLocationAccuracy
let kCLLocationAccuracyThreeKilometers: CLLocationAccuracy
@available(macOS 11.0, *)
let kCLLocationAccuracyReduced: CLLocationAccuracy
@available(macOS 10.14, *)
let CLLocationDistanceMax: CLLocationDistance
@available(macOS 10.14, *)
let CLTimeIntervalMax: TimeInterval
@available(macOS 10.7, *)
let kCLLocationCoordinate2DInvalid: CLLocationCoordinate2D
@available(macOS 10.7, *)
func CLLocationCoordinate2DIsValid(_ coord: CLLocationCoordinate2D) -> Bool
@available(macOS 10.7, *)
func CLLocationCoordinate2DMake(_ latitude: CLLocationDegrees, _ longitude: CLLocationDegrees) -> CLLocationCoordinate2D
@available(macOS 10.15, *)
class CLFloor : NSObject, NSCopying, NSSecureCoding {
  var level: Int { get }
}
@available(macOS 10.6, *)
class CLLocation : NSObject, NSCopying, NSSecureCoding {
  init(latitude: CLLocationDegrees, longitude: CLLocationDegrees)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, timestamp: Date)
  @available(macOS 10.7, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, speed: CLLocationSpeed, timestamp: Date)
  @available(macOS 10.15.4, *)
  init(coordinate: CLLocationCoordinate2D, altitude: CLLocationDistance, horizontalAccuracy hAccuracy: CLLocationAccuracy, verticalAccuracy vAccuracy: CLLocationAccuracy, course: CLLocationDirection, courseAccuracy: CLLocationDirectionAccuracy, speed: CLLocationSpeed, speedAccuracy: CLLocationSpeedAccuracy, timestamp: Date)
  var coordinate: CLLocationCoordinate2D { get }
  var altitude: CLLocationDistance { get }
  var horizontalAccuracy: CLLocationAccuracy { get }
  var verticalAccuracy: CLLocationAccuracy { get }
  @available(macOS 10.7, *)
  var course: CLLocationDirection { get }
  @available(macOS 10.15.4, *)
  var courseAccuracy: CLLocationDirectionAccuracy { get }
  @available(macOS 10.7, *)
  var speed: CLLocationSpeed { get }
  @available(macOS 10.15, *)
  var speedAccuracy: CLLocationSpeedAccuracy { get }
  var timestamp: Date { get }
  @available(macOS 10.15, *)
  @NSCopying var floor: CLFloor? { get }
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  func getDistanceFrom(_ location: CLLocation) -> CLLocationDistance
  @available(macOS 10.6, *)
  func distance(from location: CLLocation) -> CLLocationDistance
}
