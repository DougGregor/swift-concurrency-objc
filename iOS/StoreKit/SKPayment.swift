
@available(iOS 3.0, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(iOS 3.0, *)
  convenience init(product: SKProduct)
  @available(iOS 3.0, *)
  var productIdentifier: String { get }
  @available(iOS 3.0, *)
  var requestData: Data? { get }
  @available(iOS 3.0, *)
  var quantity: Int { get }
  @available(iOS 7.0, *)
  var applicationUsername: String? { get }
  @available(iOS 8.3, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  @available(iOS 12.2, *)
  @NSCopying var paymentDiscount: SKPaymentDiscount? { get }
}
@available(iOS 3.0, *)
class SKMutablePayment : SKPayment {
}
