
@available(watchOS 2.0, *)
class NSOrderedSet : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(at idx: Int) -> Any
  func index(of object: Any) -> Int
  init(objects: UnsafePointer<AnyObject>?, count cnt: Int)
}

extension NSOrderedSet : Sequence {
}

extension NSOrderedSet {
  convenience init(objects elements: Any...)
}

extension NSOrderedSet : ExpressibleByArrayLiteral {
}
extension NSOrderedSet {
  func objects(at indexes: IndexSet) -> [Any]
  var firstObject: Any? { get }
  var lastObject: Any? { get }
  func isEqual(to other: NSOrderedSet) -> Bool
  func contains(_ object: Any) -> Bool
  func intersects(_ other: NSOrderedSet) -> Bool
  func intersectsSet(_ set: Set<AnyHashable>) -> Bool
  func isSubset(of other: NSOrderedSet) -> Bool
  func isSubset(of set: Set<AnyHashable>) -> Bool
  subscript(idx: Int) -> Any { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  @NSCopying var reversed: NSOrderedSet { get }
  var array: [Any] { get }
  var set: Set<AnyHashable> { get }
  func enumerateObjects(_ block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(options opts: NSEnumerationOptions = [], using block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(at s: IndexSet, options opts: NSEnumerationOptions = [], using block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func index(ofObjectPassingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func index(_ opts: NSEnumerationOptions = [], ofObjectPassingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func index(ofObjectAt s: IndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  func indexes(ofObjectsPassingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexes(options opts: NSEnumerationOptions = [], ofObjectsPassingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func indexes(ofObjectsAt s: IndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  func index(of object: Any, inSortedRange range: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: (Any, Any) -> ComparisonResult) -> Int
  func sortedArray(comparator cmptr: (Any, Any) -> ComparisonResult) -> [Any]
  func sortedArray(options opts: NSSortOptions = [], usingComparator cmptr: (Any, Any) -> ComparisonResult) -> [Any]
  func description(withLocale locale: Any?) -> String
  func description(withLocale locale: Any?, indent level: Int) -> String
}
extension NSOrderedSet {
  convenience init(objects: UnsafePointer<AnyObject>, count cnt: Int)
  convenience init(object: Any)
  convenience init(orderedSet set: NSOrderedSet)
  convenience init(orderedSet set: NSOrderedSet, copyItems flag: Bool)
  convenience init(orderedSet set: NSOrderedSet, range: NSRange, copyItems flag: Bool)
  convenience init(array: [Any])
  convenience init(array set: [Any], copyItems flag: Bool)
  convenience init(array set: [Any], range: NSRange, copyItems flag: Bool)
  convenience init(set: Set<AnyHashable>)
  convenience init(set: Set<AnyHashable>, copyItems flag: Bool)
}
@available(watchOS 2.0, *)
class NSMutableOrderedSet : NSOrderedSet {
  func insert(_ object: Any, at idx: Int)
  func removeObject(at idx: Int)
  func replaceObject(at idx: Int, with object: Any)
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject>, count cnt: Int)
}
extension NSMutableOrderedSet {
  func add(_ object: Any)
  func add(_ objects: UnsafePointer<AnyObject>?, count: Int)
  func addObjects(from array: [Any])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func moveObjects(at indexes: IndexSet, to idx: Int)
  func insert(_ objects: [Any], at indexes: IndexSet)
  func setObject(_ obj: Any, at idx: Int)
  func replaceObjects(in range: NSRange, with objects: UnsafePointer<AnyObject>?, count: Int)
  func replaceObjects(at indexes: IndexSet, with objects: [Any])
  func removeObjects(in range: NSRange)
  func removeObjects(at indexes: IndexSet)
  func removeAllObjects()
  func remove(_ object: Any)
  func removeObjects(in array: [Any])
  func intersect(_ other: NSOrderedSet)
  func minus(_ other: NSOrderedSet)
  func union(_ other: NSOrderedSet)
  func intersectSet(_ other: Set<AnyHashable>)
  func minusSet(_ other: Set<AnyHashable>)
  func unionSet(_ other: Set<AnyHashable>)
  func sort(comparator cmptr: (Any, Any) -> ComparisonResult)
  func sort(options opts: NSSortOptions = [], usingComparator cmptr: (Any, Any) -> ComparisonResult)
  func sortRange(_ range: NSRange, options opts: NSSortOptions = [], usingComparator cmptr: (Any, Any) -> ComparisonResult)
}
extension NSMutableOrderedSet {
}
