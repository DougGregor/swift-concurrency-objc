
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
  @available(iOS 8.0, *)
  case authorizedAlways
  @available(iOS 8.0, *)
  case authorizedWhenInUse
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use kCLAuthorizationStatusAuthorizedAlways")
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
  @available(iOS 12.0, *)
  case airborne
}
@available(iOS 2.0, *)
class CLLocationManager : NSObject {
  @available(iOS 4.0, *)
  class func locationServicesEnabled() -> Bool
  @available(iOS 4.0, *)
  class func headingAvailable() -> Bool
  @available(iOS 4.0, *)
  class func significantLocationChangeMonitoringAvailable() -> Bool
  @available(iOS 7.0, *)
  class func isMonitoringAvailable(for regionClass: AnyClass) -> Bool
  @available(iOS 7.0, *)
  class func isRangingAvailable() -> Bool
  @available(iOS 14.0, *)
  var authorizationStatus: CLAuthorizationStatus { get }
  @available(iOS, introduced: 4.2, deprecated: 14.0)
  class func authorizationStatus() -> CLAuthorizationStatus
  @available(iOS 14.0, *)
  var accuracyAuthorization: CLAccuracyAuthorization { get }
  @available(iOS 14.0, *)
  var isAuthorizedForWidgetUpdates: Bool { get }
  weak var delegate: @sil_weak CLLocationManagerDelegate?
  @available(iOS 6.0, *)
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @available(iOS 6.0, *)
  var pausesLocationUpdatesAutomatically: Bool
  @available(iOS 9.0, *)
  var allowsBackgroundLocationUpdates: Bool
  @available(iOS 11.0, *)
  var showsBackgroundLocationIndicator: Bool
  @NSCopying var location: CLLocation? { get }
  @available(iOS 3.0, *)
  var headingFilter: CLLocationDegrees
  @available(iOS 4.0, *)
  var headingOrientation: CLDeviceOrientation
  @available(iOS 4.0, *)
  @NSCopying var heading: CLHeading? { get }
  @available(iOS 4.0, *)
  var maximumRegionMonitoringDistance: CLLocationDistance { get }
  @available(iOS 4.0, *)
  var monitoredRegions: Set<CLRegion> { get }
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use -rangedBeaconConstraints")
  var rangedRegions: Set<CLRegion> { get }
  @available(iOS 13.0, *)
  var rangedBeaconConstraints: Set<CLBeaconIdentityConstraint> { get }
  @available(iOS 8.0, *)
  func requestWhenInUseAuthorization()
  @available(iOS 8.0, *)
  func requestAlwaysAuthorization()
  @available(iOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String, completion: ((Error?) -> Void)? = nil)
  @available(iOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorizationAsync(withPurposeKey purposeKey: String) async throws
  @available(iOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String)
  func startUpdatingLocation()
  func stopUpdatingLocation()
  @available(iOS 9.0, *)
  func requestLocation()
  @available(iOS 3.0, *)
  func startUpdatingHeading()
  @available(iOS 3.0, *)
  func stopUpdatingHeading()
  @available(iOS 3.0, *)
  func dismissHeadingCalibrationDisplay()
  @available(iOS 4.0, *)
  func startMonitoringSignificantLocationChanges()
  @available(iOS 4.0, *)
  func stopMonitoringSignificantLocationChanges()
  @available(iOS 4.0, *)
  func stopMonitoring(for region: CLRegion)
  @available(iOS 5.0, *)
  func startMonitoring(for region: CLRegion)
  @available(iOS 7.0, *)
  func requestState(for region: CLRegion)
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use -startRangingBeaconsSatisfyingConstraint:")
  func startRangingBeacons(in region: CLBeaconRegion)
  @available(iOS, introduced: 7.0, deprecated: 13.0, message: "Use -stopRangingBeaconsSatisfyingConstraint:")
  func stopRangingBeacons(in region: CLBeaconRegion)
  @available(iOS 13.0, *)
  func startRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(iOS 13.0, *)
  func stopRangingBeacons(satisfying constraint: CLBeaconIdentityConstraint)
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "You can remove calls to this method")
  func allowDeferredLocationUpdates(untilTraveled distance: CLLocationDistance, timeout: TimeInterval)
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "You can remove calls to this method")
  func disallowDeferredLocationUpdates()
  @available(iOS, introduced: 6.0, deprecated: 13.0, message: "You can remove calls to this method")
  class func deferredLocationUpdatesAvailable() -> Bool
}
