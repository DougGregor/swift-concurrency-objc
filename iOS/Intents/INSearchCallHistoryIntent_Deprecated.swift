
extension INSearchCallHistoryIntent {
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "Use the designated initializer instead")
  convenience init(call callType: INCallRecordType, dateCreated: INDateComponentsRange?, recipient: INPerson?, callCapabilities: INCallCapabilityOptions = [])
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "Use callTypes instead")
  var callType: INCallRecordType { get }
}
