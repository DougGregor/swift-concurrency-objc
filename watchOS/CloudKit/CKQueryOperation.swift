
extension CKQueryOperation {
  @available(watchOS 3.0, *)
  class Cursor : NSObject, NSCopying, NSSecureCoding {
  }
  @available(watchOS 3.0, *)
  class let maximumResults: Int
}
@available(watchOS 3.0, *)
class CKQueryOperation : CKDatabaseOperation {
  convenience init(query: CKQuery)
  convenience init(cursor: CKQueryOperation.Cursor)
  @NSCopying var query: CKQuery?
  @NSCopying var cursor: CKQueryOperation.Cursor?
  @NSCopying var zoneID: CKRecordZone.ID?
  var resultsLimit: Int
  var __desiredKeys: [String]?
  var recordFetchedBlock: ((CKRecord) -> Void)?
  var queryCompletionBlock: ((CKQueryOperation.Cursor?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKQueryOperation {
  @available(swift 4.2)
  var desiredKeys: [CKRecord.FieldKey]?
}
