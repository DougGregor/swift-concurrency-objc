
@available(watchOS 4.0, *)
class INCallRecord : NSObject, NSCopying, NSSecureCoding {
  @available(watchOS 6.0, *)
  init(__identifier identifier: String, dateCreated: Date?, caller: INPerson?, callRecordType: INCallRecordType, callCapability: INCallCapability, callDuration: NSNumber?, unseen: NSNumber?, numberOfCalls: NSNumber?)
  convenience init(__identifier identifier: String, dateCreated: Date?, caller: INPerson?, callRecordType: INCallRecordType, callCapability: INCallCapability, callDuration: NSNumber?, unseen: NSNumber?)
  var identifier: String { get }
  var dateCreated: Date? { get }
  @NSCopying var caller: INPerson? { get }
  var callRecordType: INCallRecordType { get }
  @NSCopying var __callDuration: NSNumber? { get }
  @NSCopying var __unseen: NSNumber? { get }
  var callCapability: INCallCapability { get }
  @available(watchOS 6.0, *)
  @NSCopying var __numberOfCalls: NSNumber? { get }
}

@available(macOS 10.15, iOS 11.0, watchOS 4.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INCallRecord {
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc convenience init(identifier: String, dateCreated: Date? = nil, caller: INPerson? = nil, callRecordType: INCallRecordType = .unknown, callCapability: INCallCapability = .unknown, callDuration: Double? = nil, unseen: Bool? = nil, numberOfCalls: Int? = nil)
  @available(iOS, obsoleted: 13.0)
  @available(watchOS, obsoleted: 6.0)
  @nonobjc convenience init(identifier: String, dateCreated: Date? = nil, caller: INPerson? = nil, callRecordType: INCallRecordType, callCapability: INCallCapability, callDuration: Double? = nil, unseen: Bool? = nil)
  @nonobjc final var callDuration: Double? { get }
  @nonobjc final var unseen: Bool? { get }
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc final var numberOfCalls: Int? { get }
}
