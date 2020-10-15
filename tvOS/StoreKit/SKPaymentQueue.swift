
@available(tvOS 3.0, *)
class SKPaymentQueue : NSObject {
  @available(tvOS 13.0, *)
  weak var delegate: @sil_weak SKPaymentQueueDelegate?
  @available(tvOS 13.0, *)
  var storefront: SKStorefront? { get }
  @available(tvOS 3.0, *)
  class func `default`() -> Self
  @available(tvOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(tvOS 3.0, *)
  func add(_ payment: SKPayment)
  @available(tvOS 3.0, *)
  func restoreCompletedTransactions()
  @available(tvOS 7.0, *)
  func restoreCompletedTransactions(withApplicationUsername username: String?)
  @available(tvOS 3.0, *)
  func finishTransaction(_ transaction: SKPaymentTransaction)
  @available(tvOS 6.0, *)
  func start(_ downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func pause(_ downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func resume(_ downloads: [SKDownload])
  @available(tvOS 6.0, *)
  func cancel(_ downloads: [SKDownload])
  @available(tvOS 3.0, *)
  func add(_ observer: SKPaymentTransactionObserver)
  @available(tvOS 3.0, *)
  func remove(_ observer: SKPaymentTransactionObserver)
  @available(tvOS 14.0, *)
  var transactionObservers: [SKPaymentTransactionObserver] { get }
  @available(tvOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
}
protocol SKPaymentQueueDelegate : NSObjectProtocol {
  @available(tvOS 13.0, *)
  optional func paymentQueue(_ paymentQueue: SKPaymentQueue, shouldContinue transaction: SKPaymentTransaction, in newStorefront: SKStorefront) -> Bool
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(tvOS 3.0, *)
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(tvOS 3.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(tvOS 3.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  @available(tvOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue)
  @available(tvOS 6.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
  @available(tvOS 11.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, shouldAddStorePayment payment: SKPayment, for product: SKProduct) -> Bool
  @available(tvOS 13.0, *)
  @asyncHandler optional func paymentQueueDidChangeStorefront(_ queue: SKPaymentQueue)
  @available(tvOS 14.0, *)
  @asyncHandler optional func paymentQueue(_ queue: SKPaymentQueue, didRevokeEntitlementsForProductIdentifiers productIdentifiers: [String])
}
