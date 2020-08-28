
let MCErrorDomain: String
@available(iOS 7.0, *)
struct MCError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: MCError.Code { get }
  static var notConnected: MCError.Code { get }
  static var invalidParameter: MCError.Code { get }
  static var unsupported: MCError.Code { get }
  static var timedOut: MCError.Code { get }
  static var cancelled: MCError.Code { get }
  static var unavailable: MCError.Code { get }
}
