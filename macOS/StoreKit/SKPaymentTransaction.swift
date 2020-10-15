
@available(macOS 10.7, *)
enum SKPaymentTransactionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case purchasing
  case purchased
  case failed
  case restored
  @available(macOS 10.10, *)
  case deferred
}
@available(macOS 10.7, *)
class SKPaymentTransaction : NSObject {
  @available(macOS 10.7, *)
  var error: Error? { get }
  @available(macOS 10.7, *)
  var original: SKPaymentTransaction? { get }
  @available(macOS 10.7, *)
  var payment: SKPayment { get }
  @available(macOS 10.8, *)
  var downloads: [SKDownload] { get }
  @available(macOS 10.7, *)
  var transactionDate: Date? { get }
  @available(macOS 10.7, *)
  var transactionIdentifier: String? { get }
  @available(macOS 10.7, *)
  var transactionState: SKPaymentTransactionState { get }
}
