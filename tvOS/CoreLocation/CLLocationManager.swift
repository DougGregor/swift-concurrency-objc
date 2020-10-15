
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
  @available(tvOS 14.0, *)
  var authorizationStatus: CLAuthorizationStatus { get }
  @available(tvOS, introduced: 9.0, deprecated: 14.0)
  class func authorizationStatus() -> CLAuthorizationStatus
  @available(tvOS 14.0, *)
  var accuracyAuthorization: CLAccuracyAuthorization { get }
  weak var delegate: @sil_weak CLLocationManagerDelegate?
  var distanceFilter: CLLocationDistance
  var desiredAccuracy: CLLocationAccuracy
  @NSCopying var location: CLLocation? { get }
  @available(tvOS 8.0, *)
  func requestWhenInUseAuthorization()
  @available(tvOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String, completion: ((Error?) -> Void)? = nil)
  @available(tvOS 14.0, *)
  func requestTemporaryFullAccuracyAuthorization(withPurposeKey purposeKey: String)
  func stopUpdatingLocation()
  @available(tvOS 9.0, *)
  func requestLocation()
}
