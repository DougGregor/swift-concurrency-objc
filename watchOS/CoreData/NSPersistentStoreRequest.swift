
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fetchRequestType
  case saveRequestType
  @available(watchOS 6.0, *)
  case batchInsertRequestType
  @available(watchOS 2.0, *)
  case batchUpdateRequestType
  @available(watchOS 2.0, *)
  case batchDeleteRequestType
}
@available(watchOS 2.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
}
