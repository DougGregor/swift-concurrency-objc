
@available(watchOS 3.0, *)
class PKPaymentToken : NSObject {
  @available(watchOS 3.0, *)
  var paymentMethod: PKPaymentMethod { get }
  var transactionIdentifier: String { get }
  var paymentData: Data { get }
}
