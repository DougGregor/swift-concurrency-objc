
extension INSendMessageIntent {
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, content: String?, groupName: String?, serviceName: String?, sender: INPerson?)
  @available(watchOS, introduced: 4.0, deprecated: 7.0, message: "Use the designated initializer with outgoingMessageType instead")
  convenience init(recipients: [INPerson]?, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?)
  @available(watchOS, introduced: 7.0, deprecated: 7.0, message: "Use the designated initializer with attachments instead instead")
  convenience init(recipients: [INPerson]?, outgoingMessageType: INOutgoingMessageType, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use speakableGroupNames instead")
  var groupName: String? { get }
}
