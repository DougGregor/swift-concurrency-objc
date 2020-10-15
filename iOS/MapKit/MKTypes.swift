
@available(iOS 3.0, *)
enum MKMapType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case standard
  case satellite
  case hybrid
  @available(iOS 9.0, *)
  case satelliteFlyover
  @available(iOS 9.0, *)
  case hybridFlyover
  @available(iOS 11.0, *)
  case mutedStandard
}
let MKErrorDomain: String
@available(iOS 3.0, *)
struct MKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: MKError.Code { get }
  static var serverFailure: MKError.Code { get }
  static var loadingThrottled: MKError.Code { get }
  static var placemarkNotFound: MKError.Code { get }
  @available(iOS 7.0, *)
  static var directionsNotFound: MKError.Code { get }
  @available(iOS 13.0, *)
  static var decodingFailed: MKError.Code { get }
}
@available(iOS 11.0, *)
enum MKFeatureVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case adaptive
  case hidden
  case visible
}
