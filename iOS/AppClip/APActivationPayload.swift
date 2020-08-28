
@available(iOS 14.0, *)
let APActivationPayloadErrorDomain: String
@available(iOS 14.0, *)
struct APActivationPayloadError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var disallowed: APActivationPayloadError.Code { get }
  static var doesNotMatch: APActivationPayloadError.Code { get }
}
@available(iOS 14.0, *)
class APActivationPayload : NSObject, NSSecureCoding, NSCopying {
  var url: URL? { get }
}
