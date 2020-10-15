
@available(macOS 11.0, *)
class PKPayment : NSObject {
  var token: PKPaymentToken { get }
  @available(macOS 11.0, *)
  var billingContact: PKContact? { get }
  @available(macOS 11.0, *)
  var shippingContact: PKContact? { get }
  var shippingMethod: PKShippingMethod? { get }
}
