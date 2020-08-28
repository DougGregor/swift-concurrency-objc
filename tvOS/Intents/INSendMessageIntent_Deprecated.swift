
extension INSendMessageIntent {
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, content: String?, groupName: String?, serviceName: String?, sender: INPerson?)
  @available(tvOS, introduced: 11.0, deprecated: 14.0, message: "Use the designated initializer with outgoingMessageType instead")
  convenience init(recipients: [INPerson]?, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?)
  @available(tvOS, introduced: 14.0, deprecated: 14.0, message: "Use the designated initializer with attachments instead instead")
  convenience init(recipients: [INPerson]?, outgoingMessageType: INOutgoingMessageType, content: String?, speakableGroupName: INSpeakableString?, conversationIdentifier: String?, serviceName: String?, sender: INPerson?)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use speakableGroupNames instead")
  var groupName: String? { get }
}
