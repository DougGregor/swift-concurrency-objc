
@available(watchOS 3.2, *)
class INSearchForMessagesIntent : INIntent {
  @available(watchOS 5.0, *)
  init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, speakableGroupNames: [INSpeakableString]?, conversationIdentifiers: [String]?)
  var recipients: [INPerson]? { get }
  var recipientsOperator: INConditionalOperator { get }
  var senders: [INPerson]? { get }
  var sendersOperator: INConditionalOperator { get }
  var searchTerms: [String]? { get }
  var searchTermsOperator: INConditionalOperator { get }
  var attributes: INMessageAttributeOptions { get }
  @NSCopying var dateTimeRange: INDateComponentsRange? { get }
  var identifiers: [String]? { get }
  var identifiersOperator: INConditionalOperator { get }
  var notificationIdentifiers: [String]? { get }
  var notificationIdentifiersOperator: INConditionalOperator { get }
  @available(watchOS 4.0, *)
  var speakableGroupNames: [INSpeakableString]? { get }
  @available(watchOS 4.0, *)
  var speakableGroupNamesOperator: INConditionalOperator { get }
  @available(watchOS 5.0, *)
  var conversationIdentifiers: [String]? { get }
  @available(watchOS 5.0, *)
  var conversationIdentifiersOperator: INConditionalOperator { get }
}
@available(watchOS 3.2, *)
protocol INSearchForMessagesIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForMessagesIntent, completion: @escaping (INSearchForMessagesIntentResponse) -> Void)
  func handle(intent: INSearchForMessagesIntent) async -> INSearchForMessagesIntentResponse
  optional func confirm(intent: INSearchForMessagesIntent, completion: @escaping (INSearchForMessagesIntentResponse) -> Void)
  optional func confirm(intent: INSearchForMessagesIntent) async -> INSearchForMessagesIntentResponse
  optional func resolveRecipients(for intent: INSearchForMessagesIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  optional func resolveRecipients(for intent: INSearchForMessagesIntent) async -> [INPersonResolutionResult]
  optional func resolveSenders(for intent: INSearchForMessagesIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  optional func resolveSenders(for intent: INSearchForMessagesIntent) async -> [INPersonResolutionResult]
  optional func resolveAttributes(for intent: INSearchForMessagesIntent, with completion: @escaping (INMessageAttributeOptionsResolutionResult) -> Void)
  optional func resolveAttributes(for intent: INSearchForMessagesIntent) async -> INMessageAttributeOptionsResolutionResult
  optional func resolveDateTimeRange(for intent: INSearchForMessagesIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDateTimeRange(for intent: INSearchForMessagesIntent) async -> INDateComponentsRangeResolutionResult
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolveGroupNamesForSearchForMessages:withCompletion: is deprecated. Use resolveSpeakableGroupNamesForSearchForMessages:withCompletion: instead")
  optional func resolveGroupNames(for intent: INSearchForMessagesIntent, with completion: @escaping ([INStringResolutionResult]) -> Void)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolveGroupNamesForSearchForMessages:withCompletion: is deprecated. Use resolveSpeakableGroupNamesForSearchForMessages:withCompletion: instead")
  optional func resolveGroupNames(for intent: INSearchForMessagesIntent) async -> [INStringResolutionResult]
  @available(watchOS 4.0, *)
  optional func resolveSpeakableGroupNames(for intent: INSearchForMessagesIntent, with completion: @escaping ([INSpeakableStringResolutionResult]) -> Void)
  @available(watchOS 4.0, *)
  optional func resolveSpeakableGroupNames(for intent: INSearchForMessagesIntent) async -> [INSpeakableStringResolutionResult]
}
