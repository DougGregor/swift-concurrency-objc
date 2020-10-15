
extension INSearchForMessagesIntent {
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, groupNames: [String]?)
  @available(watchOS, introduced: 4.0, deprecated: 5.0, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, speakableGroupNames: [INSpeakableString]?)
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use speakableGroupNames instead")
  var groupNames: [String]? { get }
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use speakableGroupNamesOperator instead")
  var groupNamesOperator: INConditionalOperator { get }
}
