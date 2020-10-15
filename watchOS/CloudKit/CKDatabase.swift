
extension CKDatabase {
  @available(watchOS 3.0, *)
  enum Scope : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `public`
    case `private`
    case shared
  }
}
@available(watchOS 3.0, *)
class CKDatabase : NSObject {
  func add(_ operation: CKDatabaseOperation)
  @available(watchOS 3.0, *)
  var databaseScope: CKDatabase.Scope { get }
}

@available(macOS 10.10, iOS 8.0, watchOS 6.0, *)
@nonobjc extension CKDatabase {
  @available(swift 4.2)
  func fetch(withSubscriptionID subscriptionID: CKSubscription.ID, completionHandler: @escaping (CKSubscription?, Error?) -> Void)
  @available(swift 4.2)
  func delete(withSubscriptionID subscriptionID: CKSubscription.ID, completionHandler: @escaping (String?, Error?) -> Void)
}
extension CKDatabase {
  func fetch(withRecordID recordID: CKRecord.ID, completionHandler: @escaping (CKRecord?, Error?) -> Void)
  func save(_ record: CKRecord, completionHandler: @escaping (CKRecord?, Error?) -> Void)
  func delete(withRecordID recordID: CKRecord.ID, completionHandler: @escaping (CKRecord.ID?, Error?) -> Void)
  func perform(_ query: CKQuery, inZoneWith zoneID: CKRecordZone.ID?, completionHandler: @escaping ([CKRecord]?, Error?) -> Void)
  func fetchAllRecordZones(completionHandler: @escaping ([CKRecordZone]?, Error?) -> Void)
  func fetch(withRecordZoneID zoneID: CKRecordZone.ID, completionHandler: @escaping (CKRecordZone?, Error?) -> Void)
  func save(_ zone: CKRecordZone, completionHandler: @escaping (CKRecordZone?, Error?) -> Void)
  func delete(withRecordZoneID zoneID: CKRecordZone.ID, completionHandler: @escaping (CKRecordZone.ID?, Error?) -> Void)
  @available(watchOS 6.0, *)
  func __fetch(withSubscriptionID subscriptionID: String, completionHandler: @escaping (CKSubscription?, Error?) -> Void)
  @available(watchOS 6.0, *)
  func fetchAllSubscriptions(completionHandler: @escaping ([CKSubscription]?, Error?) -> Void)
  @available(watchOS 6.0, *)
  func save(_ subscription: CKSubscription, completionHandler: @escaping (CKSubscription?, Error?) -> Void)
  @available(watchOS 6.0, *)
  func __delete(withSubscriptionID subscriptionID: String, completionHandler: @escaping (String?, Error?) -> Void)
}
