
@available(macOS 10.15, *)
protocol ASWebAuthenticationSessionRequestDelegate : NSObjectProtocol {
  optional func authenticationSessionRequest(_ authenticationSessionRequest: ASWebAuthenticationSessionRequest, didCompleteWithCallbackURL callbackURL: URL)
  optional func authenticationSessionRequest(_ authenticationSessionRequest: ASWebAuthenticationSessionRequest, didCancelWithError error: Error)
}
@available(macOS 10.15, *)
class ASWebAuthenticationSessionRequest : NSObject, NSSecureCoding, NSCopying {
  var uuid: UUID { get }
  var url: URL { get }
  var callbackURLScheme: String? { get }
  var shouldUseEphemeralSession: Bool { get }
  weak var delegate: @sil_weak ASWebAuthenticationSessionRequestDelegate?
  func cancelWithError(_ error: Error)
  func complete(withCallbackURL url: URL)
}
