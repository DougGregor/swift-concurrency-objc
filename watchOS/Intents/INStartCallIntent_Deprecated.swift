
extension INStartCallIntent {
  @available(watchOS, introduced: 6.0, deprecated: 7.0)
  convenience init(audioRoute: INCallAudioRoute, destinationType: INCallDestinationType, contacts: [INPerson]?, recordTypeForRedialing: INCallRecordType, callCapability: INCallCapability)
  @available(watchOS, introduced: 6.0, deprecated: 7.0)
  var recordTypeForRedialing: INCallRecordType { get }
}
