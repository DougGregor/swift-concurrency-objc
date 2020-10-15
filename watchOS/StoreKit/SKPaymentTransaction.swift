
@available(watchOS 6.2, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case purchasing
  case purchased
  case failed
  case restored
  @available(watchOS 6.2, *)
  case deferred
}
@available(watchOS 6.2, *)
class SKPaymentTransaction : NSObject {
  @available(watchOS 6.2, *)
  var error: Error? { get }
  @available(watchOS 6.2, *)
  var original: SKPaymentTransaction? { get }
  @available(watchOS 6.2, *)
  var payment: SKPayment { get }
  @available(watchOS 6.2, *)
  var downloads: [SKDownload] { get }
  @available(watchOS 6.2, *)
  var transactionDate: Date? { get }
  @available(watchOS 6.2, *)
  var transactionIdentifier: String? { get }
  @available(watchOS 6.2, *)
  var transactionState: SKPaymentTransactionState { get }
}
