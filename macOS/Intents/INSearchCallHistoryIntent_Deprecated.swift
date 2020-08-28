
extension INSearchCallHistoryIntent {
  convenience init(call callType: INCallRecordType, dateCreated: INDateComponentsRange?, recipient: INPerson?, callCapabilities: INCallCapabilityOptions = [])
  var callType: INCallRecordType { get }
}
