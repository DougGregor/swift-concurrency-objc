
@available(watchOS 6.2, *)
let ASWebAuthenticationSessionErrorDomain: String
@available(watchOS 6.2, *)
struct ASWebAuthenticationSessionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var canceledLogin: ASWebAuthenticationSessionError.Code { get }
}
extension ASWebAuthenticationSession {
  typealias CompletionHandler = (URL?, Error?) -> Void
}
@available(watchOS 6.2, *)
class ASWebAuthenticationSession : NSObject {
  init(url URL: URL, callbackURLScheme: String?, completionHandler: @escaping ASWebAuthenticationSession.CompletionHandler)
  @available(watchOS 6.2, *)
  var prefersEphemeralWebBrowserSession: Bool
  @available(watchOS 6.2, *)
  var canStart: Bool { get }
  func start() -> Bool
  func cancel()
}
