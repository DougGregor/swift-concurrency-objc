
@available(macOS 10.7, *)
class SKPaymentQueue : NSObject {
  @available(macOS 10.15, *)
  weak var delegate: @sil_weak SKPaymentQueueDelegate?
  @available(macOS 10.15, *)
  var storefront: SKStorefront? { get }
  @available(macOS 10.7, *)
  class func `default`() -> Self
  @available(macOS 10.7, *)
  class func canMakePayments() -> Bool
  @available(macOS 10.7, *)
  func add(_ payment: SKPayment)
  @available(macOS 10.7, *)
  func restoreCompletedTransactions()
  @available(macOS 10.9, *)
  func restoreCompletedTransactions(withApplicationUsername username: String?)
  @available(macOS 10.7, *)
  func finishTransaction(_ transaction: SKPaymentTransaction)
  @available(macOS 10.8, *)
  func start(_ downloads: [SKDownload])
  @available(macOS 10.8, *)
  func pause(_ downloads: [SKDownload])
  @available(macOS 10.8, *)
  func resume(_ downloads: [SKDownload])
  @available(macOS 10.8, *)
  func cancel(_ downloads: [SKDownload])
  @available(macOS 10.7, *)
  func add(_ observer: SKPaymentTransactionObserver)
  @available(macOS 10.7, *)
  func remove(_ observer: SKPaymentTransactionObserver)
  @available(macOS 11.0, *)
  var transactionObservers: [SKPaymentTransactionObserver] { get }
  @available(macOS 10.7, *)
  var transactions: [SKPaymentTransaction] { get }
}
protocol SKPaymentQueueDelegate : NSObjectProtocol {
  @available(macOS 10.15, *)
  optional func paymentQueue(_ paymentQueue: SKPaymentQueue, shouldContinue transaction: SKPaymentTransaction, in newStorefront: SKStorefront) -> Bool
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(macOS 10.7, *)
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(macOS 10.7, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(macOS 10.7, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  @available(macOS 10.7, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue)
  @available(macOS 10.8, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
  @available(macOS 11.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, shouldAddStorePayment payment: SKPayment, for product: SKProduct) -> Bool
  @available(macOS 10.15, *)
  optional func paymentQueueDidChangeStorefront(_ queue: SKPaymentQueue)
  @available(macOS 11.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, didRevokeEntitlementsForProductIdentifiers productIdentifiers: [String])
}
