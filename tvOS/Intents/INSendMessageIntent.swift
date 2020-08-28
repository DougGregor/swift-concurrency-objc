
@available(tvOS 10.0, *)
class INSendMessageIntent : INIntent {
  @available(tvOS 14.0, *)
  init(recipients: [INPerson]?, outgoingMessageType: INOutgoingMessageType, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?, attachments: [INSendMessageAttachment]?)
  var recipients: [INPerson]? { get }
  @available(tvOS 14.0, *)
  var outgoingMessageType: INOutgoingMessageType { get }
  var content: String? { get }
  @available(tvOS 11.0, *)
  @NSCopying var speakableGroupName: INSpeakableString? { get }
  @available(tvOS 11.0, *)
  var conversationIdentifier: String? { get }
  var serviceName: String? { get }
  @NSCopying var sender: INPerson? { get }
  @available(tvOS 14.0, *)
  var attachments: [INSendMessageAttachment]? { get }
}
@available(tvOS 10.0, *)
protocol INSendMessageIntentHandling : NSObjectProtocol {
  func handle(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void)
  func handle(intent: INSendMessageIntent) async -> INSendMessageIntentResponse
  optional func confirm(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void)
  optional func confirm(intent: INSendMessageIntent) async -> INSendMessageIntentResponse
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveRecipientsForSendMessage:withCompletion: is deprecated. Use resolveRecipientsForSendMessage:completion: instead")
  optional func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveRecipientsForSendMessage:withCompletion: is deprecated. Use resolveRecipientsForSendMessage:completion: instead")
  optional func resolveRecipients(for intent: INSendMessageIntent) async -> [INPersonResolutionResult]
  @available(tvOS 11.0, *)
  optional func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INSendMessageRecipientResolutionResult]) -> Void)
  @available(tvOS 11.0, *)
  optional func resolveRecipients(for intent: INSendMessageIntent) async -> [INSendMessageRecipientResolutionResult]
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveGroupNameForSendMessage:withCompletion: is deprecated. Use resolveSpeakableGroupNameForSendMessage:withCompletion: instead")
  optional func resolveGroupName(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "resolveGroupNameForSendMessage:withCompletion: is deprecated. Use resolveSpeakableGroupNameForSendMessage:withCompletion: instead")
  optional func resolveGroupName(for intent: INSendMessageIntent) async -> INStringResolutionResult
  @available(tvOS 14.0, *)
  optional func resolveOutgoingMessageType(for intent: INSendMessageIntent, with completion: @escaping (INOutgoingMessageTypeResolutionResult) -> Void)
  @available(tvOS 14.0, *)
  optional func resolveOutgoingMessageType(for intent: INSendMessageIntent) async -> INOutgoingMessageTypeResolutionResult
  optional func resolveContent(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveContent(for intent: INSendMessageIntent) async -> INStringResolutionResult
  @available(tvOS 11.0, *)
  optional func resolveSpeakableGroupName(for intent: INSendMessageIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  @available(tvOS 11.0, *)
  optional func resolveSpeakableGroupName(for intent: INSendMessageIntent) async -> INSpeakableStringResolutionResult
}
