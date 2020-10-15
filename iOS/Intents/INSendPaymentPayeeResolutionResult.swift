
@available(iOS 11.0, *)
enum INSendPaymentPayeeUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case credentialsUnverified
  case insufficientFunds
  case noAccount
  @available(iOS 11.1, *)
  case noValidHandle
}
@available(iOS 11.0, *)
class INSendPaymentPayeeResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INSendPaymentPayeeUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
