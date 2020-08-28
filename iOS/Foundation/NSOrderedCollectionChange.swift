
@available(iOS 13.0, *)
enum NSCollectionChangeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case insert
  case remove
}
@available(iOS 13.0, *)
class NSOrderedCollectionChange : NSObject {
  var object: Any? { get }
  var changeType: NSCollectionChangeType { get }
  var index: Int { get }
  var associatedIndex: Int { get }
  convenience init(object anObject: Any?, type: NSCollectionChangeType, index: Int)
  init(object anObject: Any?, type: NSCollectionChangeType, index: Int, associatedIndex: Int)
}
