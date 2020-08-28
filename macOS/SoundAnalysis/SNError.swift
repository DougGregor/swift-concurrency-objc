
@available(macOS 10.15, *)
let SNErrorDomain: String
@available(macOS 10.15, *)
struct SNError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownError: SNError.Code { get }
  static var operationFailed: SNError.Code { get }
  static var invalidFormat: SNError.Code { get }
  static var invalidModel: SNError.Code { get }
  static var invalidFile: SNError.Code { get }
}
