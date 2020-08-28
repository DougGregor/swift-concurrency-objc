
@available(tvOS 10.0, *)
class INSearchForMessagesIntent : INIntent {
  @available(tvOS 12.0, *)
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
  @available(tvOS 11.0, *)
  var speakableGroupNames: [INSpeakableString]? { get }
  @available(tvOS 11.0, *)
  var speakableGroupNamesOperator: INConditionalOperator { get }
  @available(tvOS 12.0, *)
  var conversationIdentifiers: [String]? { get }
  @available(tvOS 12.0, *)
  var conversationIdentifiersOperator: INConditionalOperator { get }
}
@available(tvOS 10.0, *)
protocol INSearchForMessagesIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForMessagesIntent, completion: @escaping (INSearchForMessagesIntentResponse) -> Void)
  optional func confirm(intent: INSearchForMessagesIntent, completion: @escaping (INSearchForMessagesIntentResponse) -> Void)
  optional func resolveRecipients(for intent: INSearchForMessagesIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  optional func resolveSenders(for intent: INSearchForMessagesIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  optional func resolveAttributes(for intent: INSearchForMessagesIntent, with completion: @escaping (INMessageAttributeOptionsResolutionResult) -> Void)
  optional func resolveDateTimeRange(for intent: INSearchForMessagesIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveGroupNamesForSearchForMessages:withCompletion: is deprecated. Use resolveSpeakableGroupNamesForSearchForMessages:withCompletion: instead")
  optional func resolveGroupNames(for intent: INSearchForMessagesIntent, with completion: @escaping ([INStringResolutionResult]) -> Void)
  @available(tvOS 11.0, *)
  optional func resolveSpeakableGroupNames(for intent: INSearchForMessagesIntent, with completion: @escaping ([INSpeakableStringResolutionResult]) -> Void)
}
