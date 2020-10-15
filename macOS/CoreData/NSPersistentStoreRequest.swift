
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fetchRequestType
  case saveRequestType
  @available(macOS 10.15, *)
  case batchInsertRequestType
  @available(macOS 10.10, *)
  case batchUpdateRequestType
  @available(macOS 10.11, *)
  case batchDeleteRequestType
}
@available(macOS 10.7, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
}
