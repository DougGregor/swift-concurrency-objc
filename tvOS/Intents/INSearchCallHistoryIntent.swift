
@available(tvOS 10.0, *)
class INSearchCallHistoryIntent : INIntent {
  @available(tvOS 11.0, *)
  init(__dateCreated dateCreated: INDateComponentsRange?, recipient: INPerson?, callCapabilities: INCallCapabilityOptions = [], callTypes: INCallRecordTypeOptions = [], unseen: NSNumber?)
  @NSCopying var dateCreated: INDateComponentsRange? { get }
  @NSCopying var recipient: INPerson? { get }
  var callCapabilities: INCallCapabilityOptions { get }
  @available(tvOS 11.0, *)
  var callTypes: INCallRecordTypeOptions { get }
  @available(tvOS 11.0, *)
  @NSCopying var __unseen: NSNumber? { get }
}
@available(tvOS 10.0, *)
protocol INSearchCallHistoryIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchCallHistoryIntent, completion: @escaping (INSearchCallHistoryIntentResponse) -> Void)
  func handle(intent: INSearchCallHistoryIntent) async -> INSearchCallHistoryIntentResponse
  optional func confirm(intent: INSearchCallHistoryIntent, completion: @escaping (INSearchCallHistoryIntentResponse) -> Void)
  optional func confirm(intent: INSearchCallHistoryIntent) async -> INSearchCallHistoryIntentResponse
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveCallTypeForSearchCallHistory:withCompletion: is deprecated. Use resolveCallTypesForSearchCallHistory:withCompletion: instead")
  optional func resolveCallType(for intent: INSearchCallHistoryIntent, with completion: @escaping (INCallRecordTypeResolutionResult) -> Void)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveCallTypeForSearchCallHistory:withCompletion: is deprecated. Use resolveCallTypesForSearchCallHistory:withCompletion: instead")
  optional func resolveCallType(for intent: INSearchCallHistoryIntent) async -> INCallRecordTypeResolutionResult
  optional func resolveDateCreated(for intent: INSearchCallHistoryIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDateCreated(for intent: INSearchCallHistoryIntent) async -> INDateComponentsRangeResolutionResult
  optional func resolveRecipient(for intent: INSearchCallHistoryIntent, with completion: @escaping (INPersonResolutionResult) -> Void)
  optional func resolveRecipient(for intent: INSearchCallHistoryIntent) async -> INPersonResolutionResult
  @available(tvOS 11.0, *)
  optional func resolveCallTypes(for intent: INSearchCallHistoryIntent, with completion: @escaping (INCallRecordTypeOptionsResolutionResult) -> Void)
  @available(tvOS 11.0, *)
  optional func resolveCallTypes(for intent: INSearchCallHistoryIntent) async -> INCallRecordTypeOptionsResolutionResult
  @available(tvOS 11.0, *)
  optional func resolveUnseen(for intent: INSearchCallHistoryIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  @available(tvOS 11.0, *)
  optional func resolveUnseen(for intent: INSearchCallHistoryIntent) async -> INBooleanResolutionResult
}
