
@available(macOS 10.7, *)
class SKPayment : NSObject, NSCopying, NSMutableCopying {
  @available(macOS 10.7, *)
  convenience init(product: SKProduct)
  @available(macOS 10.7, *)
  var productIdentifier: String { get }
  @available(macOS 10.7, *)
  var requestData: Data? { get }
  @available(macOS 10.7, *)
  var quantity: Int { get }
  @available(macOS 10.9, *)
  var applicationUsername: String? { get }
  @available(macOS 10.14, *)
  var simulatesAskToBuyInSandbox: Bool { get }
  @available(macOS 10.14.4, *)
  @NSCopying var paymentDiscount: SKPaymentDiscount? { get }
}
@available(macOS 10.7, *)
class SKMutablePayment : SKPayment {
}
