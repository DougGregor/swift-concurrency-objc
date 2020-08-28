
@available(tvOS 11.0, *)
enum INSearchForAccountsIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureCredentialsUnverified
  case failureAccountNotFound
  @available(tvOS 12.0, *)
  case failureTermsAndConditionsAcceptanceRequired
  @available(tvOS 12.0, *)
  case failureNotEligible
}
@available(tvOS 11.0, *)
class INSearchForAccountsIntentResponse : INIntentResponse {
  init(code: INSearchForAccountsIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSearchForAccountsIntentResponseCode { get }
  var accounts: [INPaymentAccount]?
}
