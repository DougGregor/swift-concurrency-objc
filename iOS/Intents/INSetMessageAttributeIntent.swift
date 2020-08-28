
@available(iOS 10.0, *)
class INSetMessageAttributeIntent : INIntent {
  init(identifiers: [String]?, attribute: INMessageAttribute)
  var identifiers: [String]? { get }
  var attribute: INMessageAttribute { get }
}
@available(iOS 10.0, *)
protocol INSetMessageAttributeIntentHandling : NSObjectProtocol {
  func handle(intent: INSetMessageAttributeIntent, completion: @escaping (INSetMessageAttributeIntentResponse) -> Void)
  func handle(intent: INSetMessageAttributeIntent) async -> INSetMessageAttributeIntentResponse
  optional func confirm(intent: INSetMessageAttributeIntent, completion: @escaping (INSetMessageAttributeIntentResponse) -> Void)
  optional func confirm(intent: INSetMessageAttributeIntent) async -> INSetMessageAttributeIntentResponse
  optional func resolveAttribute(for intent: INSetMessageAttributeIntent, with completion: @escaping (INMessageAttributeResolutionResult) -> Void)
  optional func resolveAttribute(for intent: INSetMessageAttributeIntent) async -> INMessageAttributeResolutionResult
}
