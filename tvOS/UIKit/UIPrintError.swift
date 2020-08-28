
let UIPrintErrorDomain: String
struct UIPrintError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notAvailable: UIPrintError.Code { get }
  static var noContent: UIPrintError.Code { get }
  static var unknownImageFormat: UIPrintError.Code { get }
  static var jobFailed: UIPrintError.Code { get }
}
