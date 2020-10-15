
@available(iOS 10.0, *)
class INSendMessageIntent : INIntent {
  @available(iOS 14.0, *)
  init(recipients: [INPerson]?, outgoingMessageType: INOutgoingMessageType, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?, attachments: [INSendMessageAttachment]?)
  var recipients: [INPerson]? { get }
  @available(iOS 14.0, *)
  var outgoingMessageType: INOutgoingMessageType { get }
  var content: String? { get }
  @available(iOS 11.0, *)
  @NSCopying var speakableGroupName: INSpeakableString? { get }
  @available(iOS 11.0, *)
  var conversationIdentifier: String? { get }
  var serviceName: String? { get }
  @NSCopying var sender: INPerson? { get }
  @available(iOS 14.0, *)
  var attachments: [INSendMessageAttachment]? { get }
}
@available(iOS 10.0, *)
protocol INSendMessageIntentHandling : NSObjectProtocol {
  func handle(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void)
  optional func confirm(intent: INSendMessageIntent, completion: @escaping (INSendMessageIntentResponse) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolveRecipientsForSendMessage:withCompletion: is deprecated. Use resolveRecipientsForSendMessage:completion: instead")
  optional func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  @available(iOS 11.0, *)
  optional func resolveRecipients(for intent: INSendMessageIntent, with completion: @escaping ([INSendMessageRecipientResolutionResult]) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "resolveGroupNameForSendMessage:withCompletion: is deprecated. Use resolveSpeakableGroupNameForSendMessage:withCompletion: instead")
  optional func resolveGroupName(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(iOS 14.0, *)
  optional func resolveOutgoingMessageType(for intent: INSendMessageIntent, with completion: @escaping (INOutgoingMessageTypeResolutionResult) -> Void)
  optional func resolveContent(for intent: INSendMessageIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveSpeakableGroupName(for intent: INSendMessageIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
