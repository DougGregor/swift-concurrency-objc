
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "INStartVideoCallIntent is deprecated. Please adopt INStartCallIntent instead")
class INStartVideoCallIntent : INIntent {
  init(contacts: [INPerson]?)
  var contacts: [INPerson]? { get }
}
@available(iOS, introduced: 10.0, deprecated: 13.0, message: "INStartVideoCallIntent is deprecated. Please adopt INStartCallIntent instead")
protocol INStartVideoCallIntentHandling : NSObjectProtocol {
  func handle(intent: INStartVideoCallIntent, completion: @escaping (INStartVideoCallIntentResponse) -> Void)
  func handle(intent: INStartVideoCallIntent) async -> INStartVideoCallIntentResponse
  optional func confirm(intent: INStartVideoCallIntent, completion: @escaping (INStartVideoCallIntentResponse) -> Void)
  optional func confirm(intent: INStartVideoCallIntent) async -> INStartVideoCallIntentResponse
  optional func resolveContacts(for intent: INStartVideoCallIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
}
