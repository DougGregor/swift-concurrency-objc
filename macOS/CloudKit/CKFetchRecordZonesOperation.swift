
@available(macOS 10.10, *)
class CKFetchRecordZonesOperation : CKDatabaseOperation {
  class func fetchAllRecordZonesOperation() -> Self
  convenience init(recordZoneIDs zoneIDs: [CKRecordZone.ID])
  var recordZoneIDs: [CKRecordZone.ID]?
  var fetchRecordZonesCompletionBlock: (([CKRecordZone.ID : CKRecordZone]?, Error?) -> Void)?
}
