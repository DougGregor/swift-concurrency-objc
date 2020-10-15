
@available(watchOS 3.2, *)
class INSendMessageIntent : INIntent {
  @available(watchOS 7.0, *)
  init(recipients: [INPerson]?, outgoingMessageType: INOutgoingMessageType, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?, attachments: [INSendMessageAttachment]?)
  var recipients: [INPerson]? { get }
  @available(watchOS 7.0, *)
  var outgoingMessageType: INOutgoingMessageType { get }
  var content: String? { get }
  @available(watchOS 4.0, *)
  @NSCopying var speakableGroupName: INSpeakableString? { get }
  @available(watchOS 4.0, *)
  var conversationIdentifier: String? { get }
  var serviceName: String? { get }
  @NSCopying var sender: INPerson? { get }
  @available(watchOS 7.0, *)
  var attachments: [INSendMessageAttachment]? { get }
}
@available(watchOS 3.2, *)
protocol INSendMessageIntentHandling : NSObjectProtocol {
  func handle(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void)
  optional func confirm(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolveRecipientsForSendMessage:withCompletion: is deprecated. Use resolveRecipientsForSendMessage:completion: instead")
  optional func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  @available(watchOS 4.0, *)
  optional func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INSendMessageRecipientResolutionResult]) -> Void)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "resolveGroupNameForSendMessage:withCompletion: is deprecated. Use resolveSpeakableGroupNameForSendMessage:withCompletion: instead")
  optional func resolveGroupName(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(watchOS 7.0, *)
  optional func resolveOutgoingMessageType(for intent: INSendMessageIntent, with completion: @escaping (INOutgoingMessageTypeResolutionResult) -> Void)
  optional func resolveContent(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(watchOS 4.0, *)
  optional func resolveSpeakableGroupName(for intent: INSendMessageIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
