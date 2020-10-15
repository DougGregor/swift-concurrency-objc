
@available(macOS 11.0, *)
class PKPaymentAuthorizationViewController : NSViewController {
  class func canMakePayments() -> Bool
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork]) -> Bool
  @available(macOS 11.0, *)
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork], capabilities capabilties: PKMerchantCapability) -> Bool
  weak var delegate: @sil_weak PKPaymentAuthorizationViewControllerDelegate?
  init?(paymentRequest request: PKPaymentRequest)
}
