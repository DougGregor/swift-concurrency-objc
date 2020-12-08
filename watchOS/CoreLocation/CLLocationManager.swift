
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
  @available(watchOS 7.0, *)
  var authorizationStatus: CLAuthorizationStatus { get }
  @available(watchOS, introduced: 1.0, deprecated: 7.0)
  class func authorizationStatus() -> CLAuthorizationStatus
  @available(watchOS 7.0, *)
  var accuracyAuthorization: CLAccuracyAuthorization { get }
  weak var delegate: @sil_weak CLLocationManagerDelegate?
  @available(watchOS 4.0, *)
  var activityType: CLActivityType
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @available(watchOS 4.0, *)
  var allowsBackgroundLocationUpdates: Bool
  @NSCopying var location: CLLocation? { get }
  @available(watchOS 2.0, *)
  var headingFilter: CLLocationDegrees
  @available(watchOS 2.0, *)
  var headingOrientation: CLDeviceOrientation
  @available(watchOS 2.0, *)
  @NSCopying var heading: CLHeading? { get }
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
}
