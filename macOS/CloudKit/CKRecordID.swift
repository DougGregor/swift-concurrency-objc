
extension CKRecord {
  @available(macOS 10.10, *)
  class ID : NSObject, NSSecureCoding, NSCopying {
    convenience init(recordName: String)
    init(__recordName recordName: String, zoneID: CKRecordZone.ID)
    var recordName: String { get }
    @NSCopying var zoneID: CKRecordZone.ID { get }
  }
}
