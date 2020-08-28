
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
  @available(watchOS 2.0, *)
  case authorizedAlways
  @available(watchOS 2.0, *)
  case authorizedWhenInUse
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use kCLAuthorizationStatusAuthorizedAlways")
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
  @available(watchOS 5.0, *)
  case airborne
}
@available(watchOS 2.0, *)
class CLLocationManager : NSObject {
  @available(watchOS 2.0, *)
  class func locationServicesEnabled() -> Bool
  @available(watchOS 2.0, *)
  class func headingAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func significantLocationChangeMonitoringAvailable() -> Bool
  @available(watchOS 2.0, *)
  class func isMonitoringAvailable(for regionClass: AnyClass) -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  class func regionMonitoringAvailable() -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +isMonitoringAvailableForClass: and -authorizationStatus instead")
  class func regionMonitoringEnabled() -> Bool
  @available(watchOS 2.0, *)
  class func isRangingAvailable() -> Bool
  @available(watchOS 7.0, *)
  var authorizationStatus: CLAuthorizationStatus { get }
  @available(watchOS, introduced: 1.0, deprecated: 7.0)
  class func authorizationStatus() -> CLAuthorizationStatus
  @available(watchOS 7.0, *)
  var accuracyAuthorization: CLAccuracyAuthorization { get }
  @available(watchOS 7.0, *)
  var isAuthorizedForWidgetUpdates: Bool { get }
  weak var delegate: @sil_weak CLLocationManagerDelegate?
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  var locationServicesEnabled: Bool { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Set the purpose string in Info.plist using key NSLocationUsageDescription")
  var purpose: String?
  @available(watchOS 4.0, *)
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @available(watchOS 2.0, *)
  var pausesLocationUpdatesAutomatically: Bool
  @available(watchOS 4.0, *)
  var allowsBackgroundLocationUpdates: Bool
  @available(watchOS 4.0, *)
  var showsBackgroundLocationIndicator: Bool
  @NSCopying var location: CLLocation? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  var headingAvailable: Bool { get }
  @available(watchOS 2.0, *)
  var headingFilter: CLLocationDegrees
  @available(watchOS 2.0, *)
  var headingOrientation: CLDeviceOrientation
  @available(watchOS 2.0, *)
  @NSCopying var heading: CLHeading? { get }
  @available(watchOS 2.0, *)
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  @available(watchOS 2.0, *)
  var monitoredRegions: Set<CLRegion> { get }
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Use -rangedBeaconConstraints")
  var rangedRegions: Set<CLRegion> { get }
  @available(watchOS 6.0, *)
  var rangedBeaconConstraints: Set<CLBeaconIdentityConstraint> { get }
  @available(watchOS 2.0, *)
  func requestWhenInUseAuthorization()
  @available(watchOS 2.0, *)
  func requestAlwaysAuthorization()
  @available(watchOS 7.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String, completion: ((Error?) -> Void)? = nil)
  @available(watchOS 7.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String) async throws
  @available(watchOS 7.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String)
  @available(watchOS 3.0, *)
  func startUpdatingLocation()
  func stopUpdatingLocation()
  @available(watchOS 2.0, *)
  func requestLocation()
  @available(watchOS 2.0, *)
  func startUpdatingHeading()
  @available(watchOS 2.0, *)
  func stopUpdatingHeading()
  @available(watchOS 2.0, *)
  func dismissHeadingCalibrationDisplay()
  @available(watchOS 2.0, *)
  func startMonitoringSignificantLocationChanges()
  @available(watchOS 2.0, *)
  func stopMonitoringSignificantLocationChanges()
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  func startMonitoring(for region: CLRegion, desiredAccuracy accuracy: CLLocationAccuracy)
  @available(watchOS 2.0, *)
  func stopMonitoring(for region: CLRegion)
  @available(watchOS 2.0, *)
  func startMonitoring(for region: CLRegion)
  @available(watchOS 2.0, *)
  func requestState(for region: CLRegion)
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Use -startRangingBeaconsSatisfyingConstraint:")
  func startRangingBeacons(in region: CLBeaconRegion)
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "Use -stopRangingBeaconsSatisfyingConstraint:")
  func stopRangingBeacons(in region: CLBeaconRegion)
  @available(watchOS 6.0, *)
  func startRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(watchOS 6.0, *)
  func stopRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "You can remove calls to this method")
  func allowDeferredLocationUpdates(untilTraveled distance: CLLocationDistance, timeout: TimeInterval)
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "You can remove calls to this method")
  func disallowDeferredLocationUpdates()
  @available(watchOS, introduced: 2.0, deprecated: 6.0, message: "You can remove calls to this method")
  class func deferredLocationUpdatesAvailable() -> Bool
}
