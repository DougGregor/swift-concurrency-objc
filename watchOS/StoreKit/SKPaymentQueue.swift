
@available(watchOS 6.2, *)
class SKPaymentQueue : NSObject {
  @available(watchOS 6.2, *)
  weak var delegate: @sil_weak SKPaymentQueueDelegate?
  @available(watchOS 6.2, *)
  var storefront: SKStorefront? { get }
  @available(watchOS 6.2, *)
  class func `default`() -> Self
  @available(watchOS 6.2, *)
  class func canMakePayments() -> Bool
  @available(watchOS 6.2, *)
  func add(_ payment: SKPayment)
  @available(watchOS 6.2, *)
  func restoreCompletedTransactions()
  @available(watchOS 6.2, *)
  func restoreCompletedTransactions(withApplicationUsername username: String?)
  @available(watchOS 6.2, *)
  func finishTransaction(_ transaction: SKPaymentTransaction)
  @available(watchOS 6.2, *)
  func start(_ downloads: [SKDownload])
  @available(watchOS 6.2, *)
  func pause(_ downloads: [SKDownload])
  @available(watchOS 6.2, *)
  func resume(_ downloads: [SKDownload])
  @available(watchOS 6.2, *)
  func cancel(_ downloads: [SKDownload])
  @available(watchOS 6.2, *)
  func add(_ observer: SKPaymentTransactionObserver)
  @available(watchOS 6.2, *)
  func remove(_ observer: SKPaymentTransactionObserver)
  @available(watchOS 7.0, *)
  var transactionObservers: [SKPaymentTransactionObserver] { get }
  @available(watchOS 6.2, *)
  var transactions: [SKPaymentTransaction] { get }
}
protocol SKPaymentQueueDelegate : NSObjectProtocol {
  @available(watchOS 6.2, *)
  optional func paymentQueue(_ paymentQueue: SKPaymentQueue, shouldContinue transaction: SKPaymentTransaction, in newStorefront: SKStorefront) -> Bool
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(watchOS 6.2, *)
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(watchOS 6.2, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(watchOS 6.2, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  @available(watchOS 6.2, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue)
  @available(watchOS 6.2, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
  @available(watchOS 6.2, *)
  @asyncHandler optional func paymentQueueDidChangeStorefront(_ queue: SKPaymentQueue)
  @available(watchOS 7.0, *)
  @asyncHandler optional func paymentQueue(_ queue: SKPaymentQueue, didRevokeEntitlementsForProductIdentifiers productIdentifiers: [String])
}
