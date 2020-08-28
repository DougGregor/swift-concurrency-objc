
@available(iOS 10.0, *)
class NSPersistentStoreDescription : NSObject, NSCopying {
  var type: String
  var configuration: String?
  var url: URL?
  var options: [String : NSObject] { get }
  func setOption(_ option: NSObject?, forKey key: String)
  var isReadOnly: Bool
  var timeout: TimeInterval
  var sqlitePragmas: [String : NSObject] { get }
  func setValue(_ value: NSObject?, forPragmaNamed name: String)
  var shouldAddStoreAsynchronously: Bool
  var shouldMigrateStoreAutomatically: Bool
  var shouldInferMappingModelAutomatically: Bool
  init(url: URL)
}
extension NSPersistentStoreDescription {
  @available(iOS 13.0, *)
  var cloudKitContainerOptions: NSPersistentCloudKitContainerOptions?
}
