
@available(watchOS 7.0, *)
class INCallRecordFilter : NSObject, NSCopying, NSSecureCoding {
  init(participants: [INPerson]?, callTypes: INCallRecordTypeOptions = [], callCapability: INCallCapability)
  var participants: [INPerson]? { get }
  var callTypes: INCallRecordTypeOptions { get }
  var callCapability: INCallCapability { get }
}
