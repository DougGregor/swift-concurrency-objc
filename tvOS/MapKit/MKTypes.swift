
@available(tvOS 9.2, *)
enum MKMapType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case standard
  case satellite
  case hybrid
  @available(tvOS 9.0, *)
  case satelliteFlyover
  @available(tvOS 9.0, *)
  case hybridFlyover
  @available(tvOS 11.0, *)
  case mutedStandard
}
@available(tvOS 9.2, *)
let MKErrorDomain: String
@available(tvOS 9.2, *)
struct MKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: MKError.Code { get }
  static var serverFailure: MKError.Code { get }
  static var loadingThrottled: MKError.Code { get }
  static var placemarkNotFound: MKError.Code { get }
  @available(tvOS 7.0, *)
  static var directionsNotFound: MKError.Code { get }
  @available(tvOS 13.0, *)
  static var decodingFailed: MKError.Code { get }
}
@available(tvOS 11.0, *)
enum MKFeatureVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case adaptive
  case hidden
  case visible
}
