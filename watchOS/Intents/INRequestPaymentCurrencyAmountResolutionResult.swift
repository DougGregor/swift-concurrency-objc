
@available(watchOS 4.0, *)
enum INRequestPaymentCurrencyAmountUnsupportedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case paymentsAmountBelowMinimum
  case paymentsAmountAboveMaximum
  case paymentsCurrencyUnsupported
}
@available(watchOS 4.0, *)
class INRequestPaymentCurrencyAmountResolutionResult : INCurrencyAmountResolutionResult {
  class func unsupported(forReason reason: INRequestPaymentCurrencyAmountUnsupportedReason) -> Self
  init(currencyAmountResolutionResult: INCurrencyAmountResolutionResult)
}
