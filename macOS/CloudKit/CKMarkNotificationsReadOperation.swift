
@available(macOS, introduced: 10.10, deprecated: 10.13, message: "Instead of iterating notifications, consider using CKDatabaseSubscription, CKFetchDatabaseChangesOperation, and CKFetchRecordZoneChangesOperation as appropriate")
class CKMarkNotificationsReadOperation : CKOperation {
  convenience init(notificationIDsToMarkRead notificationIDs: [CKNotification.ID])
  var notificationIDs: [CKNotification.ID]?
  var markNotificationsReadCompletionBlock: (([CKNotification.ID]?, Error?) -> Void)?
}
