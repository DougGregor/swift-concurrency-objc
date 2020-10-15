
@available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Instead of iterating notifications to enumerate changed record zones, use CKDatabaseSubscription, CKFetchDatabaseChangesOperation, and CKFetchRecordZoneChangesOperation")
class CKFetchNotificationChangesOperation : CKOperation {
  convenience init(previousServerChangeToken: CKServerChangeToken?)
  @NSCopying var previousServerChangeToken: CKServerChangeToken?
  var resultsLimit: Int
  var moreComing: Bool { get }
  var notificationChangedBlock: ((CKNotification) -> Void)?
  var fetchNotificationChangesCompletionBlock: ((CKServerChangeToken?, Error?) -> Void)?
}
