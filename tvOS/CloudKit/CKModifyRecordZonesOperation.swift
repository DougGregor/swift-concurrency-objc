
@available(tvOS 8.0, *)
class CKModifyRecordZonesOperation : CKDatabaseOperation {
  var recordZonesToSave: [CKRecordZone]?
  var recordZoneIDsToDelete: [CKRecordZone.ID]?
  var modifyRecordZonesCompletionBlock: (([CKRecordZone]?, [CKRecordZone.ID]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKModifyRecordZonesOperation {
  @available(swift 4.2)
  convenience init(recordZonesToSave: [CKRecordZone]? = nil, recordZoneIDsToDelete: [CKRecordZone.ID]? = nil)
}
