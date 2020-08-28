
@available(tvOS 11.0, *)
class INCallRecord : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 13.0, *)
  init(__identifier identifier: String, dateCreated: Date?, caller: INPerson?, callRecordType: INCallRecordType, callCapability: INCallCapability, callDuration: NSNumber?, unseen: NSNumber?, numberOfCalls: NSNumber?)
  convenience init(__identifier identifier: String, dateCreated: Date?, caller: INPerson?, callRecordType: INCallRecordType, callCapability: INCallCapability, callDuration: NSNumber?, unseen: NSNumber?)
  var identifier: String { get }
  var dateCreated: Date? { get }
  @NSCopying var caller: INPerson? { get }
  var callRecordType: INCallRecordType { get }
  @NSCopying var __callDuration: NSNumber? { get }
  @NSCopying var __unseen: NSNumber? { get }
  var callCapability: INCallCapability { get }
  @available(tvOS 13.0, *)
  @NSCopying var __numberOfCalls: NSNumber? { get }
}
