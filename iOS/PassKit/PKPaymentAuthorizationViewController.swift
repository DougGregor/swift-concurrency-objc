
@available(iOS 8.0, *)
class PKPaymentAuthorizationViewController : UIViewController {
  class func canMakePayments() -> Bool
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork]) -> Bool
  @available(iOS 9.0, *)
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork], capabilities capabilties: PKMerchantCapability) -> Bool
  weak var delegate: @sil_weak PKPaymentAuthorizationViewControllerDelegate?
  init?(paymentRequest request: PKPaymentRequest)
}
