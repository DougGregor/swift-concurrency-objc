
@available(watchOS 3.2, *)
class INSendPaymentIntent : INIntent {
  init(payee: INPerson?, currencyAmount: INCurrencyAmount?, note: String?)
  @NSCopying var payee: INPerson? { get }
  @NSCopying var currencyAmount: INCurrencyAmount? { get }
  var note: String? { get }
}
@available(watchOS 3.2, *)
protocol INSendPaymentIntentHandling : NSObjectProtocol {
  func handle(intent: INSendPaymentIntent, completion: @escaping (INSendPaymentIntentResponse) -> Void)
  func handle(intent: INSendPaymentIntent) async -> INSendPaymentIntentResponse
  optional func confirm(intent: INSendPaymentIntent, completion: @escaping (INSendPaymentIntentResponse) -> Void)
  optional func confirm(intent: INSendPaymentIntent) async -> INSendPaymentIntentResponse
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolvePayeeForSendPayment:withCompletion: is deprecated. Use resolvePayeeForSendPayment:completion: instead")
  optional func resolvePayee(for intent: INSendPaymentIntent, with completion: @escaping (INPersonResolutionResult) -> Void)
  @available(watchOS 4.0, *)
  optional func resolvePayee(for intent: INSendPaymentIntent, with completion: @escaping (INSendPaymentPayeeResolutionResult) -> Void)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolveCurrencyAmountForSendPayment:withCompletion: is deprecated. Use resolveCurrencyAmountForSendPayment:completion: instead")
  optional func resolveCurrencyAmount(for intent: INSendPaymentIntent, with completion: @escaping (INCurrencyAmountResolutionResult) -> Void)
  @available(watchOS 4.0, *)
  optional func resolveCurrencyAmount(for intent: INSendPaymentIntent, with completion: @escaping (INSendPaymentCurrencyAmountResolutionResult) -> Void)
  optional func resolveNote(for intent: INSendPaymentIntent, with completion: @escaping (INStringResolutionResult) -> Void)
}
