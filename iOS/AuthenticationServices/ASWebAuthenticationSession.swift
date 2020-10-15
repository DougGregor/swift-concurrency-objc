
@available(iOS 12.0, *)
let ASWebAuthenticationSessionErrorDomain: String
@available(iOS 12.0, *)
struct ASWebAuthenticationSessionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var canceledLogin: ASWebAuthenticationSessionError.Code { get }
  @available(iOS 13.0, *)
  static var presentationContextNotProvided: ASWebAuthenticationSessionError.Code { get }
  @available(iOS 13.0, *)
  static var presentationContextInvalid: ASWebAuthenticationSessionError.Code { get }
}
extension ASWebAuthenticationSession {
  typealias CompletionHandler = (URL?, Error?) -> Void
}
@available(iOS 12.0, *)
class ASWebAuthenticationSession : NSObject {
  init(url URL: URL, callbackURLScheme: String?, completionHandler: @escaping ASWebAuthenticationSession.CompletionHandler)
  @available(iOS 13.0, *)
  weak var presentationContextProvider: @sil_weak ASWebAuthenticationPresentationContextProviding?
  @available(iOS 13.0, *)
  var prefersEphemeralWebBrowserSession: Bool
  @available(iOS 13.4, *)
  var canStart: Bool { get }
  func start() -> Bool
  func cancel()
}
@available(iOS 13.0, *)
protocol ASWebAuthenticationPresentationContextProviding : NSObjectProtocol {
  func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor
}
