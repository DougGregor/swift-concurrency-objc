
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "INStartAudioCallIntent is deprecated. Please adopt INStartCallIntent instead")
class INStartAudioCallIntent : INIntent {
  @available(iOS 11.0, *)
  init(destinationType: INCallDestinationType, contacts: [INPerson]?)
  @available(iOS 11.0, *)
  var destinationType: INCallDestinationType { get }
  var contacts: [INPerson]? { get }
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "INStartAudioCallIntent is deprecated. Please adopt INStartCallIntent instead")
protocol INStartAudioCallIntentHandling : NSObjectProtocol {
  func handle(intent: INStartAudioCallIntent, completion: @escaping (INStartAudioCallIntentResponse) -> Void)
  func handle(intent: INStartAudioCallIntent) async -> INStartAudioCallIntentResponse
  optional func confirm(intent: INStartAudioCallIntent, completion: @escaping (INStartAudioCallIntentResponse) -> Void)
  optional func confirm(intent: INStartAudioCallIntent) async -> INStartAudioCallIntentResponse
  @available(iOS 11.0, *)
  optional func resolveDestinationType(for intent: INStartAudioCallIntent, with completion: @escaping (INCallDestinationTypeResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveDestinationType(for intent: INStartAudioCallIntent) async -> INCallDestinationTypeResolutionResult
  optional func resolveContacts(for intent: INStartAudioCallIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  optional func resolveContacts(for intent: INStartAudioCallIntent) async -> [INPersonResolutionResult]
}
