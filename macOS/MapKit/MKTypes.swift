
@available(macOS 10.9, *)
enum MKMapType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case standard
  case satellite
  case hybrid
  @available(macOS 10.11, *)
  case satelliteFlyover
  @available(macOS 10.11, *)
  case hybridFlyover
  @available(macOS 10.13, *)
  case mutedStandard
}
let MKErrorDomain: String
@available(macOS 10.9, *)
struct MKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: MKError.Code { get }
  static var serverFailure: MKError.Code { get }
  static var loadingThrottled: MKError.Code { get }
  static var placemarkNotFound: MKError.Code { get }
  @available(macOS 10.9, *)
  static var directionsNotFound: MKError.Code { get }
  @available(macOS 10.15, *)
  static var decodingFailed: MKError.Code { get }
}
@available(macOS 11.0, *)
enum MKFeatureVisibility : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case adaptive
  case hidden
  case visible
}
