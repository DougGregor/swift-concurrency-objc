
@available(watchOS 6.0, *)
class NSPersistentCloudKitContainerOptions : NSObject {
  var containerIdentifier: String { get }
  @available(watchOS 7.0, *)
  var databaseScope: CKDatabase.Scope
  init(containerIdentifier: String)
}
