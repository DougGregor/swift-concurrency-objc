
@available(watchOS 3.2, *)
class INRequestPaymentIntent : INIntent {
  init(payer: INPerson?, currencyAmount: INCurrencyAmount?, note: String?)
  @NSCopying var payer: INPerson? { get }
  @NSCopying var currencyAmount: INCurrencyAmount? { get }
  var note: String? { get }
}
@available(watchOS 3.2, *)
protocol INRequestPaymentIntentHandling : NSObjectProtocol {
  func handle(intent: INRequestPaymentIntent, completion: @escaping (INRequestPaymentIntentResponse) -> Void)
  func handle(intent: INRequestPaymentIntent) async -> INRequestPaymentIntentResponse
  optional func confirm(intent: INRequestPaymentIntent, completion: @escaping (INRequestPaymentIntentResponse) -> Void)
  optional func confirm(intent: INRequestPaymentIntent) async -> INRequestPaymentIntentResponse
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolvePayerForRequestPayment:withCompletion: is deprecated. Use resolvePayerForRequestPayment:completion: instead")
  optional func resolvePayer(for intent: INRequestPaymentIntent, with completion: @escaping (INPersonResolutionResult) -> Void)
  @available(watchOS 4.0, *)
  optional func resolvePayer(for intent: INRequestPaymentIntent, with completion: @escaping (INRequestPaymentPayerResolutionResult) -> Void)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolveCurrencyAmountForRequestPayment:withCompletion: is deprecated. Use resolveCurrencyAmountForRequestPayment:completion: instead")
  optional func resolveCurrencyAmount(for intent: INRequestPaymentIntent, with completion: @escaping (INCurrencyAmountResolutionResult) -> Void)
  @available(watchOS 4.0, *)
  optional func resolveCurrencyAmount(for intent: INRequestPaymentIntent, with completion: @escaping (INRequestPaymentCurrencyAmountResolutionResult) -> Void)
  optional func resolveNote(for intent: INRequestPaymentIntent, with completion: @escaping (INStringResolutionResult) -> Void)
}
