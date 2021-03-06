
@available(macOS 10.6, *)
class NSCache<KeyType, ObjectType> : NSObject where KeyType : AnyObject, ObjectType : AnyObject {
  var name: String
  unowned(unsafe) var delegate: @sil_unmanaged NSCacheDelegate?
  func object(forKey key: KeyType) -> ObjectType?
  func setObject(_ obj: ObjectType, forKey key: KeyType)
  func setObject(_ obj: ObjectType, forKey key: KeyType, cost g: Int)
  func removeObject(forKey key: KeyType)
  func removeAllObjects()
  var totalCostLimit: Int
  var countLimit: Int
  var evictsObjectsWithDiscardedContent: Bool
}
protocol NSCacheDelegate : NSObjectProtocol {
  @available(macOS 10.6, *)
  optional func cache(_ cache: NSCache<AnyObject, AnyObject>, willEvictObject obj: Any)
}
