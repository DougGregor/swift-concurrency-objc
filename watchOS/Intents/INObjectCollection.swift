
@available(watchOS 7.0, *)
class INObjectCollection<ObjectType> : NSObject, NSCopying, NSSecureCoding where ObjectType : AnyObject {
  var sections: [INObjectSection<ObjectType>] { get }
  var allItems: [ObjectType] { get }
  var usesIndexedCollation: Bool
  init(sections: [INObjectSection<ObjectType>])
  convenience init(items: [ObjectType])
}
