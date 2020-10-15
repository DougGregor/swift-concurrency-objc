
@available(iOS 9.0, *)
protocol PKAddPaymentPassViewControllerDelegate : NSObjectProtocol {
  func addPaymentPassViewController(_ controller: PKAddPaymentPassViewController, generateRequestWithCertificateChain certificates: [Data], nonce: Data, nonceSignature: Data, completionHandler handler: @escaping (PKAddPaymentPassRequest) -> Void)
  func addPaymentPassViewController(_ controller: PKAddPaymentPassViewController, generateRequestWithCertificateChain certificates: [Data], nonce: Data, nonceSignature: Data) async -> PKAddPaymentPassRequest
  @asyncHandler func addPaymentPassViewController(_ controller: PKAddPaymentPassViewController, didFinishAdding pass: PKPaymentPass?, error: Error?)
}
@available(iOS 9.0, *)
class PKAddPaymentPassViewController : UIViewController {
  class func canAddPaymentPass() -> Bool
  init?(requestConfiguration configuration: PKAddPaymentPassRequestConfiguration, delegate: PKAddPaymentPassViewControllerDelegate?)
  weak var delegate: @sil_weak PKAddPaymentPassViewControllerDelegate?
}
