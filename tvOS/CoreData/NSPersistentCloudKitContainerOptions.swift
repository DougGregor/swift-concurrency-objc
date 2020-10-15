
@available(tvOS 13.0, *)
class NSPersistentCloudKitContainerOptions : NSObject {
  var containerIdentifier: String { get }
  @available(tvOS 14.0, *)
  var databaseScope: CKDatabase.Scope
  init(containerIdentifier: String)
}
