
@available(iOS 10.0, *)
class INRequestPaymentIntent : INIntent {
  init(payer: INPerson?, currencyAmount: INCurrencyAmount?, note: String?)
  @NSCopying var payer: INPerson? { get }
  @NSCopying var currencyAmount: INCurrencyAmount? { get }
  var note: String? { get }
}
@available(iOS 10.0, *)
protocol INRequestPaymentIntentHandling : NSObjectProtocol {
  func handle(intent: INRequestPaymentIntent, completion: @escaping (INRequestPaymentIntentResponse) -> Void)
  func handle(intent: INRequestPaymentIntent) async -> INRequestPaymentIntentResponse
  optional func confirm(intent: INRequestPaymentIntent, completion: @escaping (INRequestPaymentIntentResponse) -> Void)
  optional func confirm(intent: INRequestPaymentIntent) async -> INRequestPaymentIntentResponse
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolvePayerForRequestPayment:withCompletion: is deprecated. Use resolvePayerForRequestPayment:completion: instead")
  optional func resolvePayer(for intent: INRequestPaymentIntent, with completion: @escaping (INPersonResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolvePayer(for intent: INRequestPaymentIntent, with completion: @escaping (INRequestPaymentPayerResolutionResult) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolveCurrencyAmountForRequestPayment:withCompletion: is deprecated. Use resolveCurrencyAmountForRequestPayment:completion: instead")
  optional func resolveCurrencyAmount(for intent: INRequestPaymentIntent, with completion: @escaping (INCurrencyAmountResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveCurrencyAmount(for intent: INRequestPaymentIntent, with completion: @escaping (INRequestPaymentCurrencyAmountResolutionResult) -> Void)
  optional func resolveNote(for intent: INRequestPaymentIntent, with completion: @escaping (INStringResolutionResult) -> Void)
}
