
@available(iOS 11.0, *)
enum INTransferMoneyIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureCredentialsUnverified
  case failureInsufficientFunds
}
@available(iOS 11.0, *)
class INTransferMoneyIntentResponse : INIntentResponse {
  init(code: INTransferMoneyIntentResponseCode, userActivity: NSUserActivity?)
  var code: INTransferMoneyIntentResponseCode { get }
  @NSCopying var fromAccount: INPaymentAccount?
  @NSCopying var toAccount: INPaymentAccount?
  @NSCopying var transactionAmount: INPaymentAmount?
  @NSCopying var transactionScheduledDate: INDateComponentsRange?
  var transactionNote: String?
  @NSCopying var transferFee: INCurrencyAmount?
}
