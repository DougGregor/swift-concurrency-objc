
@available(watchOS 6.0, *)
protocol ASAuthorizationControllerDelegate : NSObjectProtocol {
  optional func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization)
  optional func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error)
}
@available(watchOS 6.0, *)
class ASAuthorizationController : NSObject {
  var authorizationRequests: [ASAuthorizationRequest] { get }
  weak var delegate: @sil_weak ASAuthorizationControllerDelegate?
  init(authorizationRequests: [ASAuthorizationRequest])
  func performRequests()
}
