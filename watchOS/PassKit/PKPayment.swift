
@available(watchOS 3.0, *)
class PKPayment : NSObject {
  var token: PKPaymentToken { get }
  @available(watchOS 3.0, *)
  var billingContact: PKContact? { get }
  @available(watchOS 3.0, *)
  var shippingContact: PKContact? { get }
  var shippingMethod: PKShippingMethod? { get }
}
