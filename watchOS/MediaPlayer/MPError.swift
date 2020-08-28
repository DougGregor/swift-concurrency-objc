
@available(watchOS 5.0, *)
let MPErrorDomain: String
@available(watchOS 5.0, *)
struct MPError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: MPError.Code { get }
  static var permissionDenied: MPError.Code { get }
  static var cloudServiceCapabilityMissing: MPError.Code { get }
  static var networkConnectionFailed: MPError.Code { get }
  static var notFound: MPError.Code { get }
  static var notSupported: MPError.Code { get }
  @available(watchOS 5.0, *)
  static var cancelled: MPError.Code { get }
  @available(watchOS 5.0, *)
  static var requestTimedOut: MPError.Code { get }
}
