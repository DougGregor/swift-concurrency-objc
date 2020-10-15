
extension INSearchCallHistoryIntent {
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use the designated initializer instead")
  convenience init(call callType: INCallRecordType, dateCreated: INDateComponentsRange?, recipient: INPerson?, callCapabilities: INCallCapabilityOptions = [])
  @available(watchOS, introduced: 3.2, deprecated: 4.0, message: "Use callTypes instead")
  var callType: INCallRecordType { get }
}
