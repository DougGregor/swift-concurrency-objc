
enum CLDeviceOrientation : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case unknown
  case portrait
  case portraitUpsideDown
  case landscapeLeft
  case landscapeRight
  case faceUp
  case faceDown
}
enum CLAuthorizationStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case notDetermined
  case restricted
  case denied
  @available(macOS 10.12, *)
  case authorizedAlways
  @available(macOS 10.6, *)
  static var authorized: CLAuthorizationStatus { get }
}
enum CLAccuracyAuthorization : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fullAccuracy
  case reducedAccuracy
}
enum CLActivityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case other
  case automotiveNavigation
  case fitness
  case otherNavigation
  @available(macOS 10.14, *)
  case airborne
}
@available(macOS 10.6, *)
class CLLocationManager : NSObject {
  @available(macOS 10.7, *)
  class func locationServicesEnabled() -> Bool
  @available(macOS 10.7, *)
  class func headingAvailable() -> Bool
  @available(macOS 10.7, *)
  class func significantLocationChangeMonitoringAvailable() -> Bool
  @available(macOS 10.10, *)
  class func isMonitoringAvailable(for regionClass: AnyClass) -> Bool
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  class func regionMonitoringAvailable() -> Bool
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use +isMonitoringAvailableForClass: and -authorizationStatus instead")
  class func regionMonitoringEnabled() -> Bool
  @available(macOS 10.15, *)
  class func isRangingAvailable() -> Bool
  @available(macOS 11.0, *)
  var authorizationStatus: CLAuthorizationStatus { get }
  @available(macOS, introduced: 10.7, deprecated: 11.0)
  class func authorizationStatus() -> CLAuthorizationStatus
  @available(macOS 11.0, *)
  var accuracyAuthorization: CLAccuracyAuthorization { get }
  @available(macOS 11.0, *)
  var isAuthorizedForWidgetUpdates: Bool { get }
  weak var delegate: @sil_weak CLLocationManagerDelegate?
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  var locationServicesEnabled: Bool { get }
  @available(macOS, introduced: 10.7, deprecated: 11.0, message: "Set the purpose string in Info.plist using key NSLocationUsageDescription")
  var purpose: String?
  @available(macOS 10.15, *)
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @available(macOS 10.15, *)
  var pausesLocationUpdatesAutomatically: Bool
  @available(macOS 10.15, *)
  var allowsBackgroundLocationUpdates: Bool
  @NSCopying var location: CLLocation? { get }
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  var headingAvailable: Bool { get }
  @available(macOS 10.15, *)
  var headingFilter: CLLocationDegrees
  @available(macOS 10.15, *)
  var headingOrientation: CLDeviceOrientation
  @available(macOS 10.15, *)
  @NSCopying var heading: CLHeading? { get }
  @available(macOS 10.8, *)
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  @available(macOS 10.8, *)
  var monitoredRegions: Set<CLRegion> { get }
  @available(macOS, introduced: 10.15, deprecated: 10.15, message: "Use -rangedBeaconConstraints")
  var rangedRegions: Set<CLRegion> { get }
  @available(macOS 10.15, *)
  var rangedBeaconConstraints: Set<CLBeaconIdentityConstraint> { get }
  @available(macOS 10.15, *)
  func requestWhenInUseAuthorization()
  @available(macOS 10.15, *)
  func requestAlwaysAuthorization()
  @available(macOS 11.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String, completion: ((Error?) -> Void)? = nil)
  @available(macOS 11.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String)
  func startUpdatingLocation()
  func stopUpdatingLocation()
  @available(macOS 10.14, *)
  func requestLocation()
  @available(macOS 10.15, *)
  func startUpdatingHeading()
  @available(macOS 10.15, *)
  func dismissHeadingCalibrationDisplay()
  @available(macOS 10.7, *)
  func startMonitoringSignificantLocationChanges()
  @available(macOS 10.7, *)
  func stopMonitoringSignificantLocationChanges()
  @available(macOS, introduced: 10.15, deprecated: 10.15)
  func startMonitoring(for region: CLRegion, desiredAccuracy accuracy: CLLocationAccuracy)
  @available(macOS 10.8, *)
  func stopMonitoring(for region: CLRegion)
  @available(macOS 10.8, *)
  func startMonitoring(for region: CLRegion)
  @available(macOS 10.10, *)
  func requestState(for region: CLRegion)
  @available(macOS, introduced: 11.0, deprecated: 11.0, message: "Use -startRangingBeaconsSatisfyingConstraint:")
  func startRangingBeacons(in region: CLBeaconRegion)
  @available(macOS, introduced: 11.0, deprecated: 11.0, message: "Use -stopRangingBeaconsSatisfyingConstraint:")
  func stopRangingBeacons(in region: CLBeaconRegion)
  @available(macOS 10.15, *)
  func startRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(macOS 10.15, *)
  func stopRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(macOS, introduced: 10.15, deprecated: 10.15, message: "You can remove calls to this method")
  func allowDeferredLocationUpdates(untilTraveled distance: CLLocationDistance, timeout: TimeInterval)
  @available(macOS, introduced: 10.15, deprecated: 10.15, message: "You can remove calls to this method")
  func disallowDeferredLocationUpdates()
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "You can remove calls to this method")
  class func deferredLocationUpdatesAvailable() -> Bool
}
