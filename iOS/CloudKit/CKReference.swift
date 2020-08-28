
@available(iOS 8.0, *)
enum CKRecord_Reference_Action : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case deleteSelf
}
extension CKRecord {
  @available(iOS 8.0, *)
  class Reference : NSObject, NSSecureCoding, NSCopying {
    init(recordID: CKRecord.ID, action: CKRecord_Reference_Action)
    convenience init(record: CKRecord, action: CKRecord_Reference_Action)
    var action: CKRecord_Reference_Action { get }
    @NSCopying var recordID: CKRecord.ID { get }
  }
}
