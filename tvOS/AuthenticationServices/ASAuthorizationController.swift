
@available(tvOS 13.0, *)
protocol ASAuthorizationControllerDelegate : NSObjectProtocol {
  @asyncHandler optional func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization)
  @asyncHandler optional func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error)
}
@available(tvOS 13.0, *)
protocol ASAuthorizationControllerPresentationContextProviding : NSObjectProtocol {
  func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor
}
@available(tvOS 13.0, *)
class ASAuthorizationController : NSObject {
  var authorizationRequests: [ASAuthorizationRequest] { get }
  weak var delegate: @sil_weak ASAuthorizationControllerDelegate?
  weak var presentationContextProvider: @sil_weak ASAuthorizationControllerPresentationContextProviding?
  init(authorizationRequests: [ASAuthorizationRequest])
  func performRequests()
}
