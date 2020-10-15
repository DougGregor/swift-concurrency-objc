
@available(iOS 8.0, *)
class PKPayment : NSObject {
  var token: PKPaymentToken { get }
  @available(iOS 9.0, *)
  var billingContact: PKContact? { get }
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use billingContact instead")
  unowned(unsafe) var billingAddress: @sil_unmanaged ABRecord? { get }
  @available(iOS 9.0, *)
  var shippingContact: PKContact? { get }
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "Use shippingContact instead")
  unowned(unsafe) var shippingAddress: @sil_unmanaged ABRecord? { get }
  var shippingMethod: PKShippingMethod? { get }
}
