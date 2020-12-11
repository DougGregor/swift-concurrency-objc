
@available(iOS 3.0, *)
class SKPaymentQueue : NSObject {
  @available(iOS 13.0, *)
  weak var delegate: @sil_weak SKPaymentQueueDelegate?
  @available(iOS 13.0, *)
  var storefront: SKStorefront? { get }
  @available(iOS 3.0, *)
  class func `default`() -> Self
  @available(iOS 3.0, *)
  class func canMakePayments() -> Bool
  @available(iOS 3.0, *)
  func add(_ payment: SKPayment)
  @available(iOS 3.0, *)
  func restoreCompletedTransactions()
  @available(iOS 7.0, *)
  func restoreCompletedTransactions(withApplicationUsername username: String?)
  @available(iOS 3.0, *)
  func finishTransaction(_ transaction: SKPaymentTransaction)
  @available(iOS 6.0, *)
  func start(_ downloads: [SKDownload])
  @available(iOS 6.0, *)
  func pause(_ downloads: [SKDownload])
  @available(iOS 6.0, *)
  func resume(_ downloads: [SKDownload])
  @available(iOS 6.0, *)
  func cancel(_ downloads: [SKDownload])
  @available(iOS 3.0, *)
  func add(_ observer: SKPaymentTransactionObserver)
  @available(iOS 3.0, *)
  func remove(_ observer: SKPaymentTransactionObserver)
  @available(iOS 14.0, *)
  var transactionObservers: [SKPaymentTransactionObserver] { get }
  @available(iOS 3.0, *)
  var transactions: [SKPaymentTransaction] { get }
  @available(iOS 13.4, *)
  func showPriceConsentIfNeeded()
  @available(iOS 14.0, *)
  func presentCodeRedemptionSheet()
}
protocol SKPaymentQueueDelegate : NSObjectProtocol {
  @available(iOS 13.0, *)
  optional func paymentQueue(_ paymentQueue: SKPaymentQueue, shouldContinue transaction: SKPaymentTransaction, in newStorefront: SKStorefront) -> Bool
  @available(iOS 13.4, *)
  optional func paymentQueueShouldShowPriceConsent(_ paymentQueue: SKPaymentQueue) -> Bool
}
protocol SKPaymentTransactionObserver : NSObjectProtocol {
  @available(iOS 3.0, *)
  func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, removedTransactions transactions: [SKPaymentTransaction])
  @available(iOS 3.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error)
  @available(iOS 3.0, *)
  optional func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue)
  @available(iOS 6.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, updatedDownloads downloads: [SKDownload])
  @available(iOS 11.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, shouldAddStorePayment payment: SKPayment, for product: SKProduct) -> Bool
  @available(iOS 13.0, *)
  optional func paymentQueueDidChangeStorefront(_ queue: SKPaymentQueue)
  @available(iOS 14.0, *)
  optional func paymentQueue(_ queue: SKPaymentQueue, didRevokeEntitlementsForProductIdentifiers productIdentifiers: [String])
}
