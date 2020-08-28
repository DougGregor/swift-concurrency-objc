
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fetchRequestType
  case saveRequestType
  @available(tvOS 13.0, *)
  case batchInsertRequestType
  @available(tvOS 8.0, *)
  case batchUpdateRequestType
  @available(tvOS 9.0, *)
  case batchDeleteRequestType
}
@available(tvOS 5.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
}
