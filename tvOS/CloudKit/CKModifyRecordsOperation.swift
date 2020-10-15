
extension CKModifyRecordsOperation {
  @available(tvOS 8.0, *)
  enum RecordSavePolicy : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case ifServerRecordUnchanged
    case changedKeys
    case allKeys
  }
}
@available(tvOS 8.0, *)
class CKModifyRecordsOperation : CKDatabaseOperation {
  var recordsToSave: [CKRecord]?
  var recordIDsToDelete: [CKRecord.ID]?
  var savePolicy: CKModifyRecordsOperation.RecordSavePolicy
  var clientChangeTokenData: Data?
  var isAtomic: Bool
  var perRecordProgressBlock: ((CKRecord, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord, Error?) -> Void)?
  var modifyRecordsCompletionBlock: (([CKRecord]?, [CKRecord.ID]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKModifyRecordsOperation {
  @available(swift 4.2)
  convenience init(recordsToSave: [CKRecord]? = nil, recordIDsToDelete: [CKRecord.ID]? = nil)
}
