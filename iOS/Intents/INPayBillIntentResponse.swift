
@available(iOS 10.3, *)
enum INPayBillIntentResponseCode : Int {
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
@available(iOS 10.3, *)
class INPayBillIntentResponse : INIntentResponse {
  init(code: INPayBillIntentResponseCode, userActivity: NSUserActivity?)
  var code: INPayBillIntentResponseCode { get }
  @NSCopying var fromAccount: INPaymentAccount?
  @NSCopying var billDetails: INBillDetails?
  @NSCopying var transactionAmount: INPaymentAmount?
  @NSCopying var transactionScheduledDate: INDateComponentsRange?
  var transactionNote: String?
}
