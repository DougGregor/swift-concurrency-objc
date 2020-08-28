
struct NSPersistentCloudKitContainerSchemaInitializationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var dryRun: NSPersistentCloudKitContainerSchemaInitializationOptions { get }
  static var printSchema: NSPersistentCloudKitContainerSchemaInitializationOptions { get }
}
@available(tvOS 13.0, *)
class NSPersistentCloudKitContainer : NSPersistentContainer {
  func initializeCloudKitSchema(options: NSPersistentCloudKitContainerSchemaInitializationOptions = []) throws
  func record(for managedObjectID: NSManagedObjectID) -> CKRecord?
  func records(for managedObjectIDs: [NSManagedObjectID]) -> [NSManagedObjectID : CKRecord]
  func recordID(for managedObjectID: NSManagedObjectID) -> CKRecord.ID?
  func recordIDs(for managedObjectIDs: [NSManagedObjectID]) -> [NSManagedObjectID : CKRecord.ID]
  @available(tvOS 14.0, *)
  func canUpdateRecord(forManagedObjectWith objectID: NSManagedObjectID) -> Bool
  @available(tvOS 14.0, *)
  func canDeleteRecord(forManagedObjectWith objectID: NSManagedObjectID) -> Bool
  @available(tvOS 14.0, *)
  func canModifyManagedObjects(in store: NSPersistentStore) -> Bool
}
