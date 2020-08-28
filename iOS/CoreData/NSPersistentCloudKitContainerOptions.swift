
@available(iOS 13.0, *)
class NSPersistentCloudKitContainerOptions : NSObject {
  var containerIdentifier: String { get }
  @available(iOS 14.0, *)
  var databaseScope: CKDatabase.Scope
  init(containerIdentifier: String)
}
