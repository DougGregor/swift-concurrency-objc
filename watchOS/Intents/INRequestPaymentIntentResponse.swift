
@available(watchOS 3.2, *)
enum INRequestPaymentIntentResponseCode : Int {
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
  case failureNoBankAccount
  @available(watchOS 4.0, *)
  case failureNotEligible
  @available(watchOS 4.1, *)
  case failureTermsAndConditionsAcceptanceRequired
}
@available(watchOS 3.2, *)
class INRequestPaymentIntentResponse : INIntentResponse {
  init(code: INRequestPaymentIntentResponseCode, userActivity: NSUserActivity?)
  var code: INRequestPaymentIntentResponseCode { get }
  @NSCopying var paymentRecord: INPaymentRecord?
}
