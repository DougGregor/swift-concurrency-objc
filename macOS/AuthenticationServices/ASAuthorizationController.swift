
@available(macOS 10.15, *)
protocol ASAuthorizationControllerDelegate : NSObjectProtocol {
  optional func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization)
  optional func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error)
}
@available(macOS 10.15, *)
protocol ASAuthorizationControllerPresentationContextProviding : NSObjectProtocol {
  func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor
}
@available(macOS 10.15, *)
class ASAuthorizationController : NSObject {
  var authorizationRequests: [ASAuthorizationRequest] { get }
  weak var delegate: @sil_weak ASAuthorizationControllerDelegate?
  weak var presentationContextProvider: @sil_weak ASAuthorizationControllerPresentationContextProviding?
  init(authorizationRequests: [ASAuthorizationRequest])
  func performRequests()
}
