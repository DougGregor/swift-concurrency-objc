
@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
struct CKRecordKeyValueIterator : IteratorProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
typealias CKRecordValue = __CKRecordObjCValue

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
protocol CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKSubscription.NotificationInfo {
  @available(swift 4.2)
  var desiredKeys: [CKRecord.FieldKey]?
  convenience init(alertBody: String? = nil, alertLocalizationKey: String? = nil, alertLocalizationArgs: [CKRecord.FieldKey] = [], title: String? = nil, titleLocalizationKey: String? = nil, titleLocalizationArgs: [CKRecord.FieldKey] = [], subtitle: String? = nil, subtitleLocalizationKey: String? = nil, subtitleLocalizationArgs: [CKRecord.FieldKey] = [], alertActionLocalizationKey: String? = nil, alertLaunchImage: String? = nil, soundName: String? = nil, desiredKeys: [CKRecord.FieldKey] = [], shouldBadge: Bool = false, shouldSendContentAvailable: Bool = false, shouldSendMutableContent: Bool = false, category: String? = nil, collapseIDKey: String? = nil)
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
@nonobjc extension CKFetchRecordZoneChangesOperation.ZoneConfiguration {
  @available(swift 4.2)
  var desiredKeys: [CKRecord.FieldKey]?
  @available(swift 4.2)
  convenience init(previousServerChangeToken: CKServerChangeToken? = nil, resultsLimit: Int? = nil, desiredKeys: [CKRecord.FieldKey]? = nil)
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKShare {
  @available(swift 4.2)
  enum SystemFieldKey {
    static let title: CKRecord.FieldKey
    static let thumbnailImageData: CKRecord.FieldKey
    static let shareType: CKRecord.FieldKey
  }
}

@available(macOS 10.12, iOS 9.3, tvOS 9.2, watchOS 3.0, *)
@nonobjc extension CKContainer {
  @available(swift 4.2)
  func fetchAllLongLivedOperationIDs(completionHandler: @escaping ([CKOperation.ID]?, Error?) -> Void)
  @available(swift 4.2)
  func fetchLongLivedOperation(withID operationID: CKOperation.ID, completionHandler: @escaping (CKOperation?, Error?) -> Void)
}

@available(macOS 10.12, iOS 9.3, tvOS 9.2, watchOS 3.0, *)
@nonobjc extension CKOperation {
  @available(swift 4.2)
  var operationID: CKOperation.ID { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKModifySubscriptionsOperation {
  @available(swift 4.2)
  var subscriptionIDsToDelete: [CKSubscription.ID]?
  @available(swift 4.2)
  var modifySubscriptionsCompletionBlock: (([CKSubscription]?, [CKSubscription.ID]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKFetchSubscriptionsOperation {
  @available(swift 4.2)
  convenience init(subscriptionIDs: [CKSubscription.ID])
  @available(swift 4.2)
  var subscriptionIDs: [CKSubscription.ID]?
  @available(swift 4.2)
  var fetchSubscriptionCompletionBlock: (([CKSubscription.ID : CKSubscription]?, Error?) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKDatabase {
  @available(swift 4.2)
  func fetch(withSubscriptionID subscriptionID: CKSubscription.ID, completionHandler: @escaping (CKSubscription?, Error?) -> Void)
  @available(swift 4.2)
  func delete(withSubscriptionID subscriptionID: CKSubscription.ID, completionHandler: @escaping (String?, Error?) -> Void)
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKSubscription {
  @available(swift 4.2)
  var subscriptionID: CKSubscription.ID { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKQuerySubscription {
  @available(swift 4.2)
  var recordType: CKRecord.RecordType? { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKRecordZoneSubscription {
  @available(swift 4.2)
  convenience init(zoneID: CKRecordZone.ID, subscriptionID: CKSubscription.ID)
  @available(swift 4.2)
  var recordType: CKRecord.RecordType?
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKDatabaseSubscription {
  @available(swift 4.2)
  convenience init(subscriptionID: CKSubscription.ID)
  @available(swift 4.2)
  var recordType: CKRecord.RecordType?
}

@available(macOS 10.11, iOS 9.0, watchOS 3.0, *)
@nonobjc extension CKNotification {
  @available(swift 4.2)
  var subscriptionID: CKSubscription.ID? { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKFetchRecordZoneChangesOperation {
  @available(swift 4.2)
  var recordWithIDWasDeletedBlock: ((CKRecord.ID, CKRecord.RecordType) -> Void)?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKQuery {
  @available(swift 4.2)
  convenience init(recordType: CKRecord.RecordType, predicate: NSPredicate)
  @available(swift 4.2)
  var recordType: CKRecord.RecordType { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord {
  @available(swift 4.2)
  var recordType: CKRecord.RecordType { get }
  @available(swift 4.2)
  func object(forKey key: CKRecord.FieldKey) -> __CKRecordObjCValue?
  @available(swift 4.2)
  func setObject(_ object: __CKRecordObjCValue?, forKey key: CKRecord.FieldKey)
  @available(swift 4.2)
  subscript(key: CKRecord.FieldKey) -> __CKRecordObjCValue?
  @available(swift 4.2)
  func allKeys() -> [CKRecord.FieldKey]
  @available(swift 4.2)
  func changedKeys() -> [CKRecord.FieldKey]
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKFetchShareMetadataOperation {
  @available(swift 4.2)
  var rootRecordDesiredKeys: [CKRecord.FieldKey]?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKFetchRecordsOperation {
  @available(swift 4.2)
  var desiredKeys: [CKRecord.FieldKey]?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKQueryOperation {
  @available(swift 4.2)
  var desiredKeys: [CKRecord.FieldKey]?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord.ID {
  @available(swift 4.2)
  convenience init(recordName: String = UUID().uuidString, zoneID: CKRecordZone.ID = CKRecordZone.ID.default)
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord : Sequence {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord {
  typealias RecordType = String
  typealias FieldKey = String
  @available(swift 4.2)
  enum SystemType {
    static let userRecord: CKRecord.RecordType
    @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    static let share: CKRecord.RecordType
  }
  @available(swift 4.2)
  enum SystemFieldKey {
    @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    static let parent: CKRecord.RecordType
    @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    static let share: CKRecord.RecordType
  }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@nonobjc extension CKShare.Participant {
  @available(swift 4.2)
  typealias AcceptanceStatus = CKShare_Participant_AcceptanceStatus
  @available(swift 4.2)
  typealias Permission = CKShare_Participant_Permission
  @available(swift 4.2)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
  typealias Role = CKShare_Participant_Role
  @available(swift 4.2)
  @available(macOS, deprecated: 10.14, renamed: "CKShare.Participant.Role")
  @available(iOS, deprecated: 12.0, renamed: "CKShare.Participant.Role")
  @available(tvOS, deprecated: 12.0, renamed: "CKShare.Participant.Role")
  @available(watchOS, deprecated: 5.0, renamed: "CKShare.Participant.Role")
  typealias ParticipantType = CKShare_Participant_ParticipantType
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord.Reference {
  @available(swift 4.2)
  typealias Action = CKRecord_Reference_Action
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKContainer {
  @available(swift 4.2)
  enum Application {
    typealias Permissions = CKContainer_Application_Permissions
    typealias PermissionStatus = CKContainer_Application_PermissionStatus
    typealias PermissionBlock = CKContainer_Application_PermissionBlock
  }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKOperation {
  @available(swift 4.2)
  typealias ID = String
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension CKSubscription {
  @available(swift 4.2)
  typealias ID = String
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
@nonobjc extension CKFetchRecordZoneChangesOperation {
  @available(swift 4.2)
  convenience init(recordZoneIDs: [CKRecordZone.ID]? = nil, configurationsByRecordZoneID: [CKRecordZone.ID : CKFetchRecordZoneChangesOperation.ZoneConfiguration]? = nil)
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKModifyRecordZonesOperation {
  @available(swift 4.2)
  convenience init(recordZonesToSave: [CKRecordZone]? = nil, recordZoneIDsToDelete: [CKRecordZone.ID]? = nil)
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKModifyRecordsOperation {
  @available(swift 4.2)
  convenience init(recordsToSave: [CKRecord]? = nil, recordIDsToDelete: [CKRecord.ID]? = nil)
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKModifySubscriptionsOperation {
  @available(swift 4.2)
  convenience init(subscriptionsToSave: [CKSubscription]? = nil, subscriptionIDsToDelete: [CKSubscription.ID]? = nil)
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord {
  @available(swift, introduced: 4.2, deprecated: 4.2, message: "Use init(recordType:recordID:) + CKRecord.ID(zoneID:) instead")
  convenience init(recordType: CKRecord.RecordType, zoneID: CKRecordZone.ID)
  @available(swift 4.2)
  convenience init(recordType: CKRecord.RecordType, recordID: CKRecord.ID = CKRecord.ID())
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 6.0, *)
@nonobjc extension CKQuerySubscription {
  @available(swift 4.2)
  convenience init(recordType: CKRecord.RecordType, predicate: NSPredicate, subscriptionID: CKSubscription.ID = UUID().uuidString, options querySubscriptionOptions: CKQuerySubscription.Options = [])
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension CKError {
  var partialErrorsByItemID: [AnyHashable : Error]? { get }
  var ancestorRecord: CKRecord? { get }
  var serverRecord: CKRecord? { get }
  var clientRecord: CKRecord? { get }
  var retryAfterSeconds: Double? { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecordZone.ID {
  convenience init(zoneName: String = CKRecordZone.ID.defaultZoneName, ownerName: String = CKCurrentUserDefaultName)
  static let `default`: CKRecordZone.ID
  static let defaultZoneName: String
}

@available(macOS 10.11, iOS 9.0, watchOS 3.0, *)
extension CKRecordKeyValueSetting {
  @nonobjc subscript<T>(key: CKRecord.FieldKey) -> T? where T : CKRecordValueProtocol
  @nonobjc subscript(key: CKRecord.FieldKey) -> CKRecordValueProtocol?
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension String : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Date : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Data : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Bool : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Double : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Int : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension UInt : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Int8 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension UInt8 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Int16 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension UInt16 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Int32 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension UInt32 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Int64 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension UInt64 : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Float : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
extension Array : CKRecordValueProtocol where Element : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension NSString : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension NSDate : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension NSData : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension NSNumber : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension NSArray : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKRecord.Reference : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CKAsset : CKRecordValueProtocol {
}

@available(macOS 10.10, iOS 8.0, watchOS 3.0, *)
@nonobjc extension CLLocation : CKRecordValueProtocol {
}

