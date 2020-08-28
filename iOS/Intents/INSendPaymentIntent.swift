
@available(iOS 10.0, *)
class INSendPaymentIntent : INIntent {
  init(payee: INPerson?, currencyAmount: INCurrencyAmount?, note: String?)
  @NSCopying var payee: INPerson? { get }
  @NSCopying var currencyAmount: INCurrencyAmount? { get }
  var note: String? { get }
}
@available(iOS 10.0, *)
protocol INSendPaymentIntentHandling : NSObjectProtocol {
  func handle(intent: INSendPaymentIntent, completion: @escaping (INSendPaymentIntentResponse) -> Void)
  optional func confirm(intent: INSendPaymentIntent, completion: @escaping (INSendPaymentIntentResponse) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolvePayeeForSendPayment:withCompletion: is deprecated. Use resolvePayeeForSendPayment:completion: instead")
  optional func resolvePayee(for intent: INSendPaymentIntent, with completion: @escaping (INPersonResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolvePayee(for intent: INSendPaymentIntent, with completion: @escaping (INSendPaymentPayeeResolutionResult) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolveCurrencyAmountForSendPayment:withCompletion: is deprecated. Use resolveCurrencyAmountForSendPayment:completion: instead")
  optional func resolveCurrencyAmount(for intent: INSendPaymentIntent, with completion: @escaping (INCurrencyAmountResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveCurrencyAmount(for intent: INSendPaymentIntent, with completion: @escaping (INSendPaymentCurrencyAmountResolutionResult) -> Void)
  optional func resolveNote(for intent: INSendPaymentIntent, with completion: @escaping (INStringResolutionResult) -> Void)
}
