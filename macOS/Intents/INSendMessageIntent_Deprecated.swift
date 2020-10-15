
extension INSendMessageIntent {
  convenience init(recipients: [INPerson]?, content: String?, groupName: String?, serviceName: String?, sender: INPerson?)
  @available(macOS, introduced: 10.13, deprecated: 11.0, message: "Use the designated initializer with outgoingMessageType instead")
  convenience init(recipients: [INPerson]?, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?)
  @available(macOS, introduced: 11.0, deprecated: 11.0, message: "Use the designated initializer with attachments instead instead")
  convenience init(recipients: [INPerson]?, outgoingMessageType: INOutgoingMessageType, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?)
  var groupName: String? { get }
}
