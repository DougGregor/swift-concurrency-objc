
@available(iOS 9.0, *)
let WCErrorDomain: String
@available(iOS 9.0, *)
struct WCError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var genericError: WCError.Code { get }
  static var sessionNotSupported: WCError.Code { get }
  static var sessionMissingDelegate: WCError.Code { get }
  static var sessionNotActivated: WCError.Code { get }
  static var deviceNotPaired: WCError.Code { get }
  static var watchAppNotInstalled: WCError.Code { get }
  static var notReachable: WCError.Code { get }
  static var invalidParameter: WCError.Code { get }
  static var payloadTooLarge: WCError.Code { get }
  static var payloadUnsupportedTypes: WCError.Code { get }
  static var messageReplyFailed: WCError.Code { get }
  static var messageReplyTimedOut: WCError.Code { get }
  static var fileAccessDenied: WCError.Code { get }
  static var deliveryFailed: WCError.Code { get }
  static var insufficientSpace: WCError.Code { get }
  @available(iOS 9.3, *)
  static var sessionInactive: WCError.Code { get }
  @available(iOS 9.3, *)
  static var transferTimedOut: WCError.Code { get }
  @available(iOS 13.0, *)
  static var companionAppNotInstalled: WCError.Code { get }
  @available(iOS 13.0, *)
  static var watchOnlyApp: WCError.Code { get }
}
