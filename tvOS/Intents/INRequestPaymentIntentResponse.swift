
@available(tvOS 10.0, *)
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
  @available(tvOS 11.0, *)
  case failureNotEligible
  @available(tvOS 11.1, *)
  case failureTermsAndConditionsAcceptanceRequired
}
@available(tvOS 10.0, *)
class INRequestPaymentIntentResponse : INIntentResponse {
  init(code: INRequestPaymentIntentResponseCode, userActivity: NSUserActivity?)
  var code: INRequestPaymentIntentResponseCode { get }
  @NSCopying var paymentRecord: INPaymentRecord?
}
