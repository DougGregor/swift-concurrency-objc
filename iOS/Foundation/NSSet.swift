
class NSSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func member(_ object: Any) -> Any?
  func objectEnumerator() -> NSEnumerator
  init(objects: UnsafePointer<AnyObject>?, count cnt: Int)
}

extension NSSet : Sequence {
}

extension NSSet : _HasCustomAnyHashableRepresentation {
}

extension NSSet {
  convenience init(objects elements: Any...)
}

extension NSSet : ExpressibleByArrayLiteral {
}

extension NSSet {
  @nonobjc convenience init(set anSet: __shared NSSet)
}

extension NSSet : CustomReflectable {
}
extension NSSet {
  var allObjects: [Any] { get }
  func anyObject() -> Any?
  func contains(_ anObject: Any) -> Bool
  func description(withLocale locale: Any?) -> String
  func intersects(_ otherSet: Set<AnyHashable>) -> Bool
  func isEqual(to otherSet: Set<AnyHashable>) -> Bool
  func isSubset(of otherSet: Set<AnyHashable>) -> Bool
  @available(iOS 2.0, *)
  func adding(_ anObject: Any) -> Set<AnyHashable>
  @available(iOS 2.0, *)
  func addingObjects(from other: Set<AnyHashable>) -> Set<AnyHashable>
  @available(iOS 2.0, *)
  func addingObjects(from other: [Any]) -> Set<AnyHashable>
  @available(iOS 4.0, *)
  func enumerateObjects(_ block: (Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], using block: (Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 4.0, *)
  func objects(passingTest predicate: (Any, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<AnyHashable>
  @available(iOS 4.0, *)
  func objects(options opts: NSEnumerationOptions = [], passingTest predicate: (Any, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<AnyHashable>
}
extension NSSet {
  convenience init(object: Any)
  convenience init(objects: UnsafePointer<AnyObject>, count cnt: Int)
  convenience init(set: Set<AnyHashable>)
  convenience init(set: Set<AnyHashable>, copyItems flag: Bool)
  convenience init(array: [Any])
}
class NSMutableSet : NSSet {
  func add(_ object: Any)
  func remove(_ object: Any)
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject>, count cnt: Int)
}
extension NSMutableSet {
  func addObjects(from array: [Any])
  func intersect(_ otherSet: Set<AnyHashable>)
  func minus(_ otherSet: Set<AnyHashable>)
  func removeAllObjects()
  func union(_ otherSet: Set<AnyHashable>)
  func setSet(_ otherSet: Set<AnyHashable>)
}
extension NSMutableSet {
}
class NSCountedSet : NSMutableSet {
  func count(for object: Any) -> Int
}
