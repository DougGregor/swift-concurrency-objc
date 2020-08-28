
@available(tvOS 11.0, *)
class INSendRideFeedbackIntent : INIntent {
  init(rideIdentifier: String)
  var rideIdentifier: String { get }
  @NSCopying var rating: NSNumber?
  @NSCopying var tip: INCurrencyAmount?
}
@available(tvOS 11.0, *)
protocol INSendRideFeedbackIntentHandling : NSObjectProtocol {
  func handle(sendRideFeedback sendRideFeedbackintent: INSendRideFeedbackIntent, completion: @escaping (INSendRideFeedbackIntentResponse) -> Void)
  optional func confirm(sendRideFeedback sendRideFeedbackIntent: INSendRideFeedbackIntent, completion: @escaping (INSendRideFeedbackIntentResponse) -> Void)
}
