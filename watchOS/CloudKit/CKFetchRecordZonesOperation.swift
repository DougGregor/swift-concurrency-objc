
@available(watchOS 3.0, *)
class CKFetchRecordZonesOperation : CKDatabaseOperation {
  class func fetchAllRecordZonesOperation() -> Self
  convenience init(recordZoneIDs zoneIDs: [CKRecordZone.ID])
  var recordZoneIDs: [CKRecordZone.ID]?
  var fetchRecordZonesCompletionBlock: (([CKRecordZone.ID : CKRecordZone]?, Error?) -> Void)?
}
