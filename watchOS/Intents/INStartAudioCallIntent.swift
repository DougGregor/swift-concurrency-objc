
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "INStartAudioCallIntent is deprecated. Please adopt INStartCallIntent instead")
class INStartAudioCallIntent : INIntent {
  @available(watchOS 4.0, *)
  init(destinationType: INCallDestinationType, contacts: [INPerson]?)
  @available(watchOS 4.0, *)
  var destinationType: INCallDestinationType { get }
  var contacts: [INPerson]? { get }
}
@available(watchOS, introduced: 3.2, deprecated: 6.0, message: "INStartAudioCallIntent is deprecated. Please adopt INStartCallIntent instead")
protocol INStartAudioCallIntentHandling : NSObjectProtocol {
  func handle(intent: INStartAudioCallIntent, completion: @escaping (INStartAudioCallIntentResponse) -> Void)
  optional func confirm(intent: INStartAudioCallIntent, completion: @escaping (INStartAudioCallIntentResponse) -> Void)
  @available(watchOS 4.0, *)
  optional func resolveDestinationType(for intent: INStartAudioCallIntent, with completion: @escaping (INCallDestinationTypeResolutionResult) -> Void)
  optional func resolveContacts(for intent: INStartAudioCallIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
}
