
@available(macOS 10.10, *)
@frozen enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inside
  case outside
}
@available(macOS 10.15, *)
enum CLProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case immediate
  case near
  case far
}
@available(macOS 10.7, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(macOS, introduced: 10.7, deprecated: 10.10, message: "Please see CLCircularRegion")
  init(circularRegionWithCenter center: CLLocationCoordinate2D, radius: CLLocationDistance, identifier: String)
  @available(macOS, introduced: 10.7, deprecated: 10.10, message: "Please see CLCircularRegion")
  var center: CLLocationCoordinate2D { get }
  @available(macOS, introduced: 10.7, deprecated: 10.10, message: "Please see CLCircularRegion")
  var radius: CLLocationDistance { get }
  @available(macOS 10.7, *)
  var identifier: String { get }
  @available(macOS 10.10, *)
  var notifyOnEntry: Bool
  @available(macOS 10.10, *)
  var notifyOnExit: Bool
  @available(macOS, introduced: 10.7, deprecated: 10.10, message: "Please see CLCircularRegion")
  func contains(_ coordinate: CLLocationCoordinate2D) -> Bool
}
