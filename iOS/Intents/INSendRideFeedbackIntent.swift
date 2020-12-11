
@available(iOS 11.0, *)
class INSendRideFeedbackIntent : INIntent {
  init(rideIdentifier: String)
  var rideIdentifier: String { get }
  @NSCopying var rating: NSNumber?
  @NSCopying var tip: INCurrencyAmount?
}
@available(iOS 11.0, *)
protocol INSendRideFeedbackIntentHandling : NSObjectProtocol {
  func handle(sendRideFeedback sendRideFeedbackintent: INSendRideFeedbackIntent, completion: @escaping (INSendRideFeedbackIntentResponse) -> Void)
  func handle(sendRideFeedback sendRideFeedbackintent: INSendRideFeedbackIntent) async -> INSendRideFeedbackIntentResponse
  optional func confirm(sendRideFeedback sendRideFeedbackIntent: INSendRideFeedbackIntent, completion: @escaping (INSendRideFeedbackIntentResponse) -> Void)
  optional func confirm(sendRideFeedback sendRideFeedbackIntent: INSendRideFeedbackIntent) async -> INSendRideFeedbackIntentResponse
}
