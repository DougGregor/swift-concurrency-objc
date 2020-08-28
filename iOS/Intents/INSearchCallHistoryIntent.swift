
@available(iOS 10.0, *)
class INSearchCallHistoryIntent : INIntent {
  @available(iOS 11.0, *)
  init(__dateCreated dateCreated: INDateComponentsRange?, recipient: INPerson?, callCapabilities: INCallCapabilityOptions = [], callTypes: INCallRecordTypeOptions = [], unseen: NSNumber?)
  @NSCopying var dateCreated: INDateComponentsRange? { get }
  @NSCopying var recipient: INPerson? { get }
  var callCapabilities: INCallCapabilityOptions { get }
  @available(iOS 11.0, *)
  var callTypes: INCallRecordTypeOptions { get }
  @available(iOS 11.0, *)
  @NSCopying var __unseen: NSNumber? { get }
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSearchCallHistoryIntent {
  @available(iOS 11.0, watchOS 4.0, *)
  @nonobjc convenience init(dateCreated: INDateComponentsRange? = nil, recipient: INPerson? = nil, callCapabilities: INCallCapabilityOptions, callTypes: INCallRecordTypeOptions, unseen: Bool? = nil)
  @available(iOS 11.0, watchOS 4.0, *)
  @nonobjc final var unseen: Bool? { get }
}
@available(iOS 10.0, *)
protocol INSearchCallHistoryIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchCallHistoryIntent, completion: @escaping (INSearchCallHistoryIntentResponse) -> Void)
  func handle(intent: INSearchCallHistoryIntent) async -> INSearchCallHistoryIntentResponse
  optional func confirm(intent: INSearchCallHistoryIntent, completion: @escaping (INSearchCallHistoryIntentResponse) -> Void)
  optional func confirm(intent: INSearchCallHistoryIntent) async -> INSearchCallHistoryIntentResponse
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolveCallTypeForSearchCallHistory:withCompletion: is deprecated. Use resolveCallTypesForSearchCallHistory:withCompletion: instead")
  optional func resolveCallType(for intent: INSearchCallHistoryIntent, with completion: @escaping (INCallRecordTypeResolutionResult) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolveCallTypeForSearchCallHistory:withCompletion: is deprecated. Use resolveCallTypesForSearchCallHistory:withCompletion: instead")
  optional func resolveCallType(for intent: INSearchCallHistoryIntent) async -> INCallRecordTypeResolutionResult
  optional func resolveDateCreated(for intent: INSearchCallHistoryIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDateCreated(for intent: INSearchCallHistoryIntent) async -> INDateComponentsRangeResolutionResult
  optional func resolveRecipient(for intent: INSearchCallHistoryIntent, with completion: @escaping (INPersonResolutionResult) -> Void)
  optional func resolveRecipient(for intent: INSearchCallHistoryIntent) async -> INPersonResolutionResult
  @available(iOS 11.0, *)
  optional func resolveCallTypes(for intent: INSearchCallHistoryIntent, with completion: @escaping (INCallRecordTypeOptionsResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveCallTypes(for intent: INSearchCallHistoryIntent) async -> INCallRecordTypeOptionsResolutionResult
  @available(iOS 11.0, *)
  optional func resolveUnseen(for intent: INSearchCallHistoryIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveUnseen(for intent: INSearchCallHistoryIntent) async -> INBooleanResolutionResult
}
