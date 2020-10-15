
@available(macOS 10.15, *)
let ASWebAuthenticationSessionErrorDomain: String
@available(macOS 10.15, *)
struct ASWebAuthenticationSessionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var canceledLogin: ASWebAuthenticationSessionError.Code { get }
  @available(macOS 10.15, *)
  static var presentationContextNotProvided: ASWebAuthenticationSessionError.Code { get }
  @available(macOS 10.15, *)
  static var presentationContextInvalid: ASWebAuthenticationSessionError.Code { get }
}
extension ASWebAuthenticationSession {
  typealias CompletionHandler = (URL?, Error?) -> Void
}
@available(macOS 10.15, *)
class ASWebAuthenticationSession : NSObject {
  init(url URL: URL, callbackURLScheme: String?, completionHandler: @escaping ASWebAuthenticationSession.CompletionHandler)
  @available(macOS 10.15, *)
  weak var presentationContextProvider: @sil_weak ASWebAuthenticationPresentationContextProviding?
  @available(macOS 10.15, *)
  var prefersEphemeralWebBrowserSession: Bool
  @available(macOS 10.15.4, *)
  var canStart: Bool { get }
  func start() -> Bool
  func cancel()
}
@available(macOS 10.15, *)
protocol ASWebAuthenticationPresentationContextProviding : NSObjectProtocol {
  func presentationAnchor(for session: ASWebAuthenticationSession) -> ASPresentationAnchor
}
