
@available(macOS 10.15, *)
class NSPersistentCloudKitContainerOptions : NSObject {
  var containerIdentifier: String { get }
  @available(macOS 11.0, *)
  var databaseScope: CKDatabase.Scope
  init(containerIdentifier: String)
}
