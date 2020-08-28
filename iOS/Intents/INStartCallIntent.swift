
@available(iOS 13.0, *)
class INStartCallIntent : INIntent {
  @available(iOS 14.0, *)
  init(callRecordFilter: INCallRecordFilter?, callRecordToCallBack: INCallRecord?, audioRoute: INCallAudioRoute, destinationType: INCallDestinationType, contacts: [INPerson]?, callCapability: INCallCapability)
  @available(iOS 14.0, *)
  @NSCopying var callRecordFilter: INCallRecordFilter? { get }
  @available(iOS 14.0, *)
  @NSCopying var callRecordToCallBack: INCallRecord? { get }
  var audioRoute: INCallAudioRoute { get }
  var destinationType: INCallDestinationType { get }
  var contacts: [INPerson]? { get }
  var callCapability: INCallCapability { get }
}
@available(iOS 13.0, *)
protocol INStartCallIntentHandling : NSObjectProtocol {
  func handle(intent: INStartCallIntent, completion: @escaping (INStartCallIntentResponse) -> Void)
  func handle(intent: INStartCallIntent) async -> INStartCallIntentResponse
  optional func confirm(intent: INStartCallIntent, completion: @escaping (INStartCallIntentResponse) -> Void)
  optional func confirm(intent: INStartCallIntent) async -> INStartCallIntentResponse
  @available(iOS 14.0, *)
  optional func resolveCallRecordToCallBack(for intent: INStartCallIntent, with completion: @escaping (INCallRecordResolutionResult) -> Void)
  optional func resolveDestinationType(for intent: INStartCallIntent, with completion: @escaping (INCallDestinationTypeResolutionResult) -> Void)
  optional func resolveContacts(for intent: INStartCallIntent, with completion: @escaping ([INStartCallContactResolutionResult]) -> Void)
  optional func resolveCallCapability(for intent: INStartCallIntent, with completion: @escaping (INStartCallCallCapabilityResolutionResult) -> Void)
}
