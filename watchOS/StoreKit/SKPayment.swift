
@available(watchOS 6.2, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(watchOS 6.2, *)
  convenience init(product: SKProduct)
  @available(watchOS 6.2, *)
  var productIdentifier: String { get }
  @available(watchOS 6.2, *)
  var requestData: Data? { get }
  @available(watchOS 6.2, *)
  var quantity: Int { get }
  @available(watchOS 6.2, *)
  var applicationUsername: String? { get }
  @available(watchOS 6.2, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  @available(watchOS 6.2, *)
  @NSCopying var paymentDiscount: SKPaymentDiscount? { get }
}
@available(watchOS 6.2, *)
class SKMutablePayment : SKPayment {
}
