
@available(watchOS, introduced: 3.0, deprecated: 4.0, message: "Instead of iterating notifications, consider using CKDatabaseSubscription, CKFetchDatabaseChangesOperation, and CKFetchRecordZoneChangesOperation as appropriate")
class CKMarkNotificationsReadOperation : CKOperation {
  convenience init(notificationIDsToMarkRead notificationIDs: [CKNotification.ID])
  var notificationIDs: [CKNotification.ID]?
  var markNotificationsReadCompletionBlock: (([CKNotification.ID]?, Error?) -> Void)?
}
