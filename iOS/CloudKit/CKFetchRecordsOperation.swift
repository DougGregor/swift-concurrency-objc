
@available(iOS 8.0, *)
class CKFetchRecordsOperation : CKDatabaseOperation {
  convenience init(recordIDs: [CKRecord.ID])
  class func fetchCurrentUserRecordOperation() -> Self
  var recordIDs: [CKRecord.ID]?
  var __desiredKeys: [String]?
  var perRecordProgressBlock: ((CKRecord.ID, Double) -> Void)?
  var perRecordCompletionBlock: ((CKRecord?, CKRecord.ID?, Error?) -> Void)?
  var fetchRecordsCompletionBlock: (([CKRecord.ID : CKRecord]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKFetchRecordsOperation {
  @available(swift 4.2)
  var desiredKeys: [CKRecord.FieldKey]?
}
