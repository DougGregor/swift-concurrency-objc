
@available(iOS 8.0, *)
let __CKRecordTypeUserRecord: String
@available(iOS 10.0, *)
let __CKRecordParentKey: String
@available(iOS 10.0, *)
let __CKRecordShareKey: String
protocol __CKRecordObjCValue : NSObjectProtocol {
}
@available(iOS 8.0, *)
class CKRecord : NSObject, NSSecureCoding, NSCopying {
  init(__recordType recordType: String, recordID: CKRecord.ID)
  var __recordType: String { get }
  @NSCopying var recordID: CKRecord.ID { get }
  var recordChangeTag: String? { get }
  @NSCopying var creatorUserRecordID: CKRecord.ID? { get }
  var creationDate: Date? { get }
  @NSCopying var lastModifiedUserRecordID: CKRecord.ID? { get }
  var modificationDate: Date? { get }
  func __object(forKey key: String) -> __CKRecordObjCValue?
  func __setObject(_ object: __CKRecordObjCValue?, forKey key: String)
  func __allKeys() -> [String]
  func allTokens() -> [String]
  subscript(key: String) -> __CKRecordObjCValue?
  func __changedKeys() -> [String]
  func encodeSystemFields(with coder: NSCoder)
  @available(iOS 10.0, *)
  @NSCopying var share: CKRecord.Reference? { get }
  @available(iOS 10.0, *)
  @NSCopying var parent: CKRecord.Reference?
  @available(iOS 10.0, *)
  func setParent(_ parentRecord: CKRecord?)
  @available(iOS 10.0, *)
  func setParent(_ parentRecordID: CKRecord.ID?)
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord {
  @available(swift 4.2)
  var recordType: CKRecord.RecordType { get }
  @available(swift 4.2)
  func object(forKey key: CKRecord.FieldKey) -> __CKRecordObjCValue?
  @available(swift 4.2)
  func setObject(_ object: __CKRecordObjCValue?, forKey key: CKRecord.FieldKey)
  @available(swift 4.2)
  subscript(key: CKRecord.FieldKey) -> __CKRecordObjCValue?
  @available(swift 4.2)
  func allKeys() -> [CKRecord.FieldKey]
  @available(swift 4.2)
  func changedKeys() -> [CKRecord.FieldKey]
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord : Sequence {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord {
  typealias RecordType = String
  typealias FieldKey = String
  @available(swift 4.2)
  enum SystemType {
    static let userRecord: CKRecord.RecordType
    @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    static let share: CKRecord.RecordType
  }
  @available(swift 4.2)
  enum SystemFieldKey {
    @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    static let parent: CKRecord.RecordType
    @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    static let share: CKRecord.RecordType
  }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord {
  @available(swift, introduced: 4.2, deprecated: 4.2, message: "Use init(recordType:recordID:) + CKRecord.ID(zoneID:) instead")
  convenience init(recordType: CKRecord.RecordType, zoneID: CKRecordZone.ID)
  @available(swift 4.2)
  convenience init(recordType: CKRecord.RecordType, recordID: CKRecord.ID = CKRecord.ID())
}
extension NSString : __CKRecordObjCValue {
}
extension NSNumber : __CKRecordObjCValue {
}
extension NSArray : __CKRecordObjCValue {
}
extension NSDate : __CKRecordObjCValue {
}
extension NSData : __CKRecordObjCValue {
}
extension CKRecord.Reference : __CKRecordObjCValue {
}
extension CKAsset : __CKRecordObjCValue {
}
extension CLLocation : __CKRecordObjCValue {
}
@available(iOS 9.0, *)
protocol CKRecordKeyValueSetting : NSObjectProtocol {
  func object(forKey key: String) -> __CKRecordObjCValue?
  func setObject(_ object: __CKRecordObjCValue?, forKey key: String)
  subscript(key: String) -> __CKRecordObjCValue? { get set }
  func allKeys() -> [String]
  func changedKeys() -> [String]
}

@available(macOS 10.11, iOS 9.0, watchOS 3.0, *)
extension CKRecordKeyValueSetting {
  @nonobjc subscript<T>(key: CKRecord.FieldKey) -> T? where T : CKRecordValueProtocol
  @nonobjc subscript(key: CKRecord.FieldKey) -> CKRecordValueProtocol?
}
@available(iOS 9.0, *)
extension CKRecord : CKRecordKeyValueSetting {
}
