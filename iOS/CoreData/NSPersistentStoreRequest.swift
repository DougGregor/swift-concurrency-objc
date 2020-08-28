
enum NSPersistentStoreRequestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fetchRequestType
  case saveRequestType
  @available(iOS 13.0, *)
  case batchInsertRequestType
  @available(iOS 8.0, *)
  case batchUpdateRequestType
  @available(iOS 9.0, *)
  case batchDeleteRequestType
}
@available(iOS 5.0, *)
class NSPersistentStoreRequest : NSObject, NSCopying {
  var affectedStores: [NSPersistentStore]?
  var requestType: NSPersistentStoreRequestType { get }
}
