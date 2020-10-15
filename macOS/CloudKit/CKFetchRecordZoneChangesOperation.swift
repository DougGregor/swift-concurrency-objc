
@available(macOS 10.12, *)
class CKFetchRecordZoneChangesOperation : CKDatabaseOperation {
  var recordZoneIDs: [CKRecordZone.ID]?
  var configurationsByRecordZoneID: [CKRecordZone.ID : CKFetchRecordZoneChangesOperation.ZoneConfiguration]?
  var fetchAllChanges: Bool
  var recordChangedBlock: ((CKRecord) -> Void)?
  var __recordWithIDWasDeletedBlock: ((CKRecord.ID, String) -> Void)?
  var recordZoneChangeTokensUpdatedBlock: ((CKRecordZone.ID, CKServerChangeToken?, Data?) -> Void)?
  var recordZoneFetchCompletionBlock: ((CKRecordZone.ID, CKServerChangeToken?, Data?, Bool, Error?) -> Void)?
  var fetchRecordZoneChangesCompletionBlock: ((Error?) -> Void)?
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKFetchRecordZoneChangesOperation {
  @available(swift 4.2)
  var recordWithIDWasDeletedBlock: ((CKRecord.ID, CKRecord.RecordType) -> Void)?
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
@nonobjc extension CKFetchRecordZoneChangesOperation {
  @available(swift 4.2)
  convenience init(recordZoneIDs: [CKRecordZone.ID]? = nil, configurationsByRecordZoneID: [CKRecordZone.ID : CKFetchRecordZoneChangesOperation.ZoneConfiguration]? = nil)
}
extension CKFetchRecordZoneChangesOperation {
  @available(macOS, introduced: 10.12, deprecated: 10.14)
  convenience init(recordZoneIDs: [CKRecordZone.ID], optionsByRecordZoneID: [CKRecordZone.ID : CKFetchRecordZoneChangesOperation.ZoneOptions]? = nil)
  @available(macOS, introduced: 10.12, deprecated: 10.14)
  var optionsByRecordZoneID: [CKRecordZone.ID : CKFetchRecordZoneChangesOperation.ZoneOptions]?
}
extension CKFetchRecordZoneChangesOperation {
  @available(macOS 10.14, *)
  class ZoneConfiguration : NSObject, NSSecureCoding, NSCopying {
    @NSCopying var previousServerChangeToken: CKServerChangeToken?
    var resultsLimit: Int
    var __desiredKeys: [String]?
  }
  @available(macOS, introduced: 10.12, deprecated: 10.14, renamed: "CKFetchRecordZoneChangesOperation.ZoneConfiguration")
  class ZoneOptions : NSObject, NSSecureCoding, NSCopying {
    @NSCopying var previousServerChangeToken: CKServerChangeToken?
    var resultsLimit: Int
    var desiredKeys: [String]?
  }
}
