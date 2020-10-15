
extension INSearchForMessagesIntent {
  @available(macOS, introduced: 10.12, deprecated: 10.13, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, groupNames: [String]?)
  @available(macOS, introduced: 10.13, deprecated: 10.14, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, speakableGroupNames: [INSpeakableString]?)
  @available(macOS, introduced: 10.12, deprecated: 10.13, message: "Use speakableGroupNames instead")
  var groupNames: [String]? { get }
  @available(macOS, introduced: 10.12, deprecated: 10.13, message: "Use speakableGroupNamesOperator instead")
  var groupNamesOperator: INConditionalOperator { get }
}
