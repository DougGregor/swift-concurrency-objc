
extension INSearchForMessagesIntent {
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, groupNames: [String]?)
  @available(tvOS, introduced: 11.0, deprecated: 12.0, message: "Use the designated initializer instead")
  convenience init(recipients: [INPerson]?, senders: [INPerson]?, searchTerms: [String]?, attributes: INMessageAttributeOptions = [], dateTime dateTimeRange: INDateComponentsRange?, identifiers: [String]?, notificationIdentifiers: [String]?, speakableGroupNames: [INSpeakableString]?)
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use speakableGroupNames instead")
  var groupNames: [String]? { get }
  @available(tvOS, introduced: 10.0, deprecated: 11.0, message: "Use speakableGroupNamesOperator instead")
  var groupNamesOperator: INConditionalOperator { get }
}
