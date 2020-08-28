
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
  @available(tvOS 8.0, *)
  case authorizedAlways
  @available(tvOS 8.0, *)
  case authorizedWhenInUse
  @available(tvOS, introduced: 2.0, deprecated: 8.0, message: "Use kCLAuthorizationStatusAuthorizedAlways")
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
  @available(tvOS 12.0, *)
  case airborne
}
@available(tvOS 2.0, *)
class CLLocationManager : NSObject {
  @available(tvOS 4.0, *)
  class func locationServicesEnabled() -> Bool
  @available(tvOS 4.0, *)
  class func headingAvailable() -> Bool
  @available(tvOS 4.0, *)
  class func significantLocationChangeMonitoringAvailable() -> Bool
  @available(tvOS 7.0, *)
  class func isMonitoringAvailable(for regionClass: AnyClass) -> Bool
  @available(tvOS 7.0, *)
  class func isRangingAvailable() -> Bool
  @available(tvOS 14.0, *)
  var authorizationStatus: CLAuthorizationStatus { get }
  @available(tvOS, introduced: 9.0, deprecated: 14.0)
  class func authorizationStatus() -> CLAuthorizationStatus
  @available(tvOS 14.0, *)
  var accuracyAuthorization: CLAccuracyAuthorization { get }
  @available(tvOS 14.0, *)
  var isAuthorizedForWidgetUpdates: Bool { get }
  weak var delegate: @sil_weak CLLocationManagerDelegate?
  @available(tvOS 6.0, *)
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @available(tvOS 6.0, *)
  var pausesLocationUpdatesAutomatically: Bool
  @available(tvOS 9.0, *)
  var allowsBackgroundLocationUpdates: Bool
  @available(tvOS 11.0, *)
  var showsBackgroundLocationIndicator: Bool
  @NSCopying var location: CLLocation? { get }
  @available(tvOS 3.0, *)
  var headingFilter: CLLocationDegrees
  @available(tvOS 4.0, *)
  var headingOrientation: CLDeviceOrientation
  @available(tvOS 4.0, *)
  @NSCopying var heading: CLHeading? { get }
  @available(tvOS 4.0, *)
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  @available(tvOS 4.0, *)
  var monitoredRegions: Set<CLRegion> { get }
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use -rangedBeaconConstraints")
  var rangedRegions: Set<CLRegion> { get }
  @available(tvOS 13.0, *)
  var rangedBeaconConstraints: Set<CLBeaconIdentityConstraint> { get }
  @available(tvOS 8.0, *)
  func requestWhenInUseAuthorization()
  @available(tvOS 8.0, *)
  func requestAlwaysAuthorization()
  @available(tvOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String, completion: ((Error?) -> Void)? = nil)
  @available(tvOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String) async throws
  @available(tvOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String)
  func startUpdatingLocation()
  func stopUpdatingLocation()
  @available(tvOS 9.0, *)
  func requestLocation()
  @available(tvOS 3.0, *)
  func startUpdatingHeading()
  @available(tvOS 3.0, *)
  func stopUpdatingHeading()
  @available(tvOS 3.0, *)
  func dismissHeadingCalibrationDisplay()
  @available(tvOS 4.0, *)
  func startMonitoringSignificantLocationChanges()
  @available(tvOS 4.0, *)
  func stopMonitoringSignificantLocationChanges()
  @available(tvOS 4.0, *)
  func stopMonitoring(for region: CLRegion)
  @available(tvOS 5.0, *)
  func startMonitoring(for region: CLRegion)
  @available(tvOS 7.0, *)
  func requestState(for region: CLRegion)
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use -startRangingBeaconsSatisfyingConstraint:")
  func startRangingBeacons(in region: CLBeaconRegion)
  @available(tvOS, introduced: 7.0, deprecated: 13.0, message: "Use -stopRangingBeaconsSatisfyingConstraint:")
  func stopRangingBeacons(in region: CLBeaconRegion)
  @available(tvOS 13.0, *)
  func startRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(tvOS 13.0, *)
  func stopRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "You can remove calls to this method")
  func allowDeferredLocationUpdates(untilTraveled distance: CLLocationDistance, timeout: TimeInterval)
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "You can remove calls to this method")
  func disallowDeferredLocationUpdates()
  @available(tvOS, introduced: 6.0, deprecated: 13.0, message: "You can remove calls to this method")
  class func deferredLocationUpdatesAvailable() -> Bool
}
