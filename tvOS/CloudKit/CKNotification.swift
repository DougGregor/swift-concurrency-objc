
extension CKNotification {
  @available(tvOS 8.0, *)
  class ID : NSObject, NSCopying, NSSecureCoding {
  }
  @available(tvOS 8.0, *)
  enum NotificationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case query
    case recordZone
    case readNotification
    @available(tvOS 10.0, *)
    case database
  }
}
@available(tvOS 8.0, *)
class CKNotification : NSObject {
  convenience init?(fromRemoteNotificationDictionary notificationDictionary: [AnyHashable : Any])
  var notificationType: CKNotification.NotificationType { get }
  @NSCopying var notificationID: CKNotification.ID? { get }
  var containerIdentifier: String? { get }
  @available(tvOS 13.0, *)
  @NSCopying var subscriptionOwnerUserRecordID: CKRecord.ID? { get }
  var isPruned: Bool { get }
  @available(tvOS 10.0, *)
  @NSCopying var badge: NSNumber? { get }
  @available(tvOS 9.0, *)
  var __subscriptionID: String? { get }
}

@available(macOS 10.11, iOS 9.0, watchOS 3.0, *)
@nonobjc extension CKNotification {
  @available(swift 4.2)
  var subscriptionID: CKSubscription.ID? { get }
}
extension CKQueryNotification {
  @available(tvOS 8.0, *)
  enum Reason : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case recordCreated
    case recordUpdated
    case recordDeleted
  }
}
@available(tvOS 8.0, *)
class CKQueryNotification : CKNotification {
  var queryNotificationReason: CKQueryNotification.Reason { get }
  var recordFields: [String : Any]? { get }
  @NSCopying var recordID: CKRecord.ID? { get }
  @available(tvOS 10.0, *)
  var databaseScope: CKDatabase.Scope { get }
}
@available(tvOS 8.0, *)
class CKRecordZoneNotification : CKNotification {
  @NSCopying var recordZoneID: CKRecordZone.ID? { get }
  @available(tvOS 10.0, *)
  var databaseScope: CKDatabase.Scope { get }
}
@available(tvOS 10.0, *)
class CKDatabaseNotification : CKNotification {
  var databaseScope: CKDatabase.Scope { get }
}
