
@available(iOS 8.0, *)
class CKQuery : NSObject, NSSecureCoding, NSCopying {
  init(__recordType recordType: String, predicate: NSPredicate)
  var __recordType: String { get }
  @NSCopying var predicate: NSPredicate { get }
  var sortDescriptors: [NSSortDescriptor]?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKQuery {
  @available(swift 4.2)
  convenience init(recordType: CKRecord.RecordType, predicate: NSPredicate)
  @available(swift 4.2)
  var recordType: CKRecord.RecordType { get }
}
