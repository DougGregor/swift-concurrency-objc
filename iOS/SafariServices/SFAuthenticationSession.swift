
@available(iOS, introduced: 11.0, deprecated: 12.0, message: "Use ASWebAuthenticationSessionErrorCode instead")
struct SFAuthenticationError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var canceledLogin: SFAuthenticationError.Code { get }
}
@available(iOS, introduced: 11.0, deprecated: 12.0)
let SFAuthenticationErrorDomain: String
extension SFAuthenticationSession {
  typealias CompletionHandler = (URL?, Error?) -> Void
}
@available(iOS, introduced: 11.0, deprecated: 12.0)
class SFAuthenticationSession : NSObject {
  init(url URL: URL, callbackURLScheme: String?, completionHandler: @escaping SFAuthenticationSession.CompletionHandler)
  func start() -> Bool
  func cancel()
}
