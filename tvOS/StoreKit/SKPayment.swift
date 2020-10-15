
@available(tvOS 3.0, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(tvOS 3.0, *)
  convenience init(product: SKProduct)
  @available(tvOS 3.0, *)
  var productIdentifier: String { get }
  @available(tvOS 3.0, *)
  var requestData: Data? { get }
  @available(tvOS 3.0, *)
  var quantity: Int { get }
  @available(tvOS 7.0, *)
  var applicationUsername: String? { get }
  @available(tvOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  @available(tvOS 12.2, *)
  @NSCopying var paymentDiscount: SKPaymentDiscount? { get }
}
@available(tvOS 3.0, *)
class SKMutablePayment : SKPayment {
}
