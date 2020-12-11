
protocol PKPaymentAuthorizationViewControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  func paymentAuthorizationViewControllerDidFinish(_ controller: PKPaymentAuthorizationViewController)
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, handler completion: @escaping (PKPaymentAuthorizationResult) -> Void)
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment) async -> PKPaymentAuthorizationResult
  @available(iOS 8.3, *)
  optional func paymentAuthorizationViewControllerWillAuthorizePayment(_ controller: PKPaymentAuthorizationViewController)
  @available(iOS 14.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didRequestMerchantSessionUpdate handler: @escaping (PKPaymentRequestMerchantSessionUpdate) -> Void)
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect shippingMethod: PKShippingMethod, handler completion: @escaping (PKPaymentRequestShippingMethodUpdate) -> Void)
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect shippingMethod: PKShippingMethod) async -> PKPaymentRequestShippingMethodUpdate
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, handler completion: @escaping (PKPaymentRequestShippingContactUpdate) -> Void)
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact) async -> PKPaymentRequestShippingContactUpdate
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect paymentMethod: PKPaymentMethod, handler completion: @escaping (PKPaymentRequestPaymentMethodUpdate) -> Void)
  @available(iOS 11.0, *)
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect paymentMethod: PKPaymentMethod) async -> PKPaymentRequestPaymentMethodUpdate
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didAuthorizePayment:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment, completion: @escaping (PKPaymentAuthorizationStatus) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didAuthorizePayment:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didAuthorizePayment payment: PKPayment) async -> PKPaymentAuthorizationStatus
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didSelectShippingMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect shippingMethod: PKShippingMethod, completion: @escaping (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didSelectShippingMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect shippingMethod: PKShippingMethod) async -> (PKPaymentAuthorizationStatus, [PKPaymentSummaryItem])
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "ABRecordRef has been deprecated. Please migrate away from this delegate callback as soon as possible.")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingAddress address: ABRecord, completion: @escaping (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "ABRecordRef has been deprecated. Please migrate away from this delegate callback as soon as possible.")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingAddress address: ABRecord) async -> (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem])
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didSelectShippingContact:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact, completion: @escaping (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didSelectShippingContact:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelectShippingContact contact: PKContact) async -> (PKPaymentAuthorizationStatus, [PKShippingMethod], [PKPaymentSummaryItem])
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didSelectPaymentMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect paymentMethod: PKPaymentMethod, completion: @escaping ([PKPaymentSummaryItem]) -> Void)
  @available(iOS, introduced: 9.0, deprecated: 11.0, message: "Use paymentAuthorizationViewController:didSelectPaymentMethod:handler: instead to provide more granular errors")
  optional func paymentAuthorizationViewController(_ controller: PKPaymentAuthorizationViewController, didSelect paymentMethod: PKPaymentMethod) async -> [PKPaymentSummaryItem]
}
