
@available(iOS 14.0, *)
let NIErrorDomain: String
@available(iOS 14.0, *)
struct NIError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unsupportedPlatform: NIError.Code { get }
  static var invalidConfiguration: NIError.Code { get }
  static var sessionFailed: NIError.Code { get }
  static var resourceUsageTimeout: NIError.Code { get }
  static var activeSessionsLimitExceeded: NIError.Code { get }
  static var userDidNotAllow: NIError.Code { get }
}
