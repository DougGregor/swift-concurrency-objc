
@available(watchOS 4.0, *)
enum INSendPaymentCurrencyAmountUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case paymentsAmountBelowMinimum
  case paymentsAmountAboveMaximum
  case paymentsCurrencyUnsupported
}
@available(watchOS 4.0, *)
class INSendPaymentCurrencyAmountResolutionResult : INCurrencyAmountResolutionResult {
  class func unsupported(forReason reason: INSendPaymentCurrencyAmountUnsupportedReason) -> Self
  init(currencyAmountResolutionResult: INCurrencyAmountResolutionResult)
}
