
protocol PKPaymentAuthorizationControllerDelegate : NSObjectProtocol {
  @available(watchOS 3.0, *)
  func paymentAuthorizationControllerDidFinish(_ controller: PKPaymentAuthorizationController)
  @available(watchOS 4.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didAuthorizePayment:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment, completion: @escaping (PKPaymentAuthorizationStatus) -> Void)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didAuthorizePayment:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didAuthorizePayment payment: PKPayment) async -> PKPaymentAuthorizationStatus
  @available(watchOS 3.0, *)
  optional func paymentAuthorizationControllerWillAuthorizePayment(_ controller: PKPaymentAuthorizationController)
  @available(watchOS 7.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didRequestMerchantSessionUpdate handler: @escaping (PKPaymentRequestMerchantSessionUpdate) -> Void)
  @available(watchOS 4.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingMethod shippingMethod: PKShippingMethod, handler completion: @escaping (PKPaymentRequestShippingMethodUpdate) -> Void)
  @available(watchOS 4.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingContact contact: PKContact, handler completion: @escaping (PKPaymentRequestShippingContactUpdate) -> Void)
  @available(watchOS 4.0, *)
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, handler completion: @escaping (PKPaymentRequestPaymentMethodUpdate) -> Void)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didSelectShippingMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingMethod shippingMethod: PKShippingMethod, completion: @escaping (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didSelectShippingMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingMethod shippingMethod: PKShippingMethod) async -> (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem])
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didSelectShippingContact:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingContact contact: PKContact, completion: @escaping (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didSelectShippingContact:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectShippingContact contact: PKContact) async -> (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem])
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didSelectPaymentMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectPaymentMethod paymentMethod: PKPaymentMethod, completion: @escaping ([PKPaymentSummaryItem]) -> Void)
  @available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Use paymentAuthorizationController:didSelectPaymentMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationController(_ controller: PKPaymentAuthorizationController, didSelectPaymentMethod paymentMethod: PKPaymentMethod) async -> [PKPaymentSummaryItem]
}
@available(watchOS 3.0, *)
class PKPaymentAuthorizationController : NSObject {
  class func canMakePayments() -> Bool
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork]) -> Bool
  class func canMakePayments(usingNetworks supportedNetworks: [PKPaymentNetwork], capabilities capabilties: PKMerchantCapability) -> Bool
  weak var delegate: @sil_weak PKPaymentAuthorizationControllerDelegate?
  init(paymentRequest request: PKPaymentRequest)
  func present(completion: ((Bool) -> Void)? = nil)
  func present() async -> Bool
  func dismiss(completion: (() -> Void)? = nil)
  func dismiss() async
}
