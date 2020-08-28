
@available(watchOS 3.0, *)
class CKFetchDatabaseChangesOperation : CKDatabaseOperation {
  convenience init(previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var fetchAllChanges: Bool
  var recordZoneWithIDChangedBlock: ((CKRecordZone.ID) -> Void)?
  var recordZoneWithIDWasDeletedBlock: ((CKRecordZone.ID) -> Void)?
  @available(watchOS 4.0, *)
  var recordZoneWithIDWasPurgedBlock: ((CKRecordZone.ID) -> Void)?
  var changeTokenUpdatedBlock: ((CKServerChangeToken) -> Void)?
  var fetchDatabaseChangesCompletionBlock: ((CKServerChangeToken?, Bool, Error?) -> Void)?
}
