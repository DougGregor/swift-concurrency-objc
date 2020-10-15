
@available(watchOS 4.0, *)
enum INRequestPaymentPayerUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case credentialsUnverified
  case noAccount
  @available(watchOS 4.1, *)
  case noValidHandle
}
@available(watchOS 4.0, *)
class INRequestPaymentPayerResolutionResult : INPersonResolutionResult {
  class func unsupported(forReason reason: INRequestPaymentPayerUnsupportedReason) -> Self
  init(personResolutionResult: INPersonResolutionResult)
}
