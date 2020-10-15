
@available(iOS 10.0, *)
enum INSendPaymentIntentResponseCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unspecified
  case ready
  case inProgress
  case success
  case failure
  case failureRequiringAppLaunch
  case failureCredentialsUnverified
  case failurePaymentsAmountBelowMinimum
  case failurePaymentsAmountAboveMaximum
  case failurePaymentsCurrencyUnsupported
  case failureInsufficientFunds
  case failureNoBankAccount
  @available(iOS 11.0, *)
  case failureNotEligible
  @available(iOS 11.1, *)
  case failureTermsAndConditionsAcceptanceRequired
}
@available(iOS 10.0, *)
class INSendPaymentIntentResponse : INIntentResponse {
  init(code: INSendPaymentIntentResponseCode, userActivity: NSUserActivity?)
  var code: INSendPaymentIntentResponseCode { get }
  @NSCopying var paymentRecord: INPaymentRecord?
}
