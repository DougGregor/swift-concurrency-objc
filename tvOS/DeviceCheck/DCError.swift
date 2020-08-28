
@available(tvOS 11.0, *)
let DCErrorDomain: String
@available(tvOS 11.0, *)
struct DCError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknownSystemFailure: DCError.Code { get }
  static var featureUnsupported: DCError.Code { get }
  static var invalidInput: DCError.Code { get }
  static var invalidKey: DCError.Code { get }
  static var serverUnavailable: DCError.Code { get }
}
