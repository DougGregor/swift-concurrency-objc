
@available(iOS 14.0, *)
protocol ASAccountAuthenticationModificationControllerDelegate : NSObjectProtocol {
  optional func accountAuthenticationModificationController(_ controller: ASAccountAuthenticationModificationController, didSuccessfullyComplete request: ASAccountAuthenticationModificationRequest, userInfo: [AnyHashable : Any]? = nil)
  optional func accountAuthenticationModificationController(_ controller: ASAccountAuthenticationModificationController, didFail request: ASAccountAuthenticationModificationRequest, error: Error)
}
@available(iOS 14.0, *)
protocol ASAccountAuthenticationModificationControllerPresentationContextProviding : NSObjectProtocol {
  func presentationAnchor(for controller: ASAccountAuthenticationModificationController) -> ASPresentationAnchor
}
@available(iOS 14.0, *)
class ASAccountAuthenticationModificationController : NSObject {
  weak var delegate: @sil_weak ASAccountAuthenticationModificationControllerDelegate?
  weak var presentationContextProvider: @sil_weak ASAccountAuthenticationModificationControllerPresentationContextProviding?
  func perform(_ request: ASAccountAuthenticationModificationRequest)
}
