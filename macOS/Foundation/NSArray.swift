
class NSArray : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(at index: Int) -> Any
  init(objects: UnsafePointer<AnyObject>?, count cnt: Int)
}

extension NSArray : ExpressibleByArrayLiteral {
}

extension NSArray : _HasCustomAnyHashableRepresentation {
}

extension NSArray : Sequence {
}

extension NSArray {
  convenience init(objects elements: Any...)
}

extension NSArray {
  @nonobjc convenience init(array anArray: __shared NSArray)
}

extension NSArray : CustomReflectable {
}
extension NSArray {
  func adding(_ anObject: Any) -> [Any]
  func addingObjects(from otherArray: [Any]) -> [Any]
  func componentsJoined(by separator: String) -> String
  func contains(_ anObject: Any) -> Bool
  func description(withLocale locale: Any?) -> String
  func description(withLocale locale: Any?, indent level: Int) -> String
  func firstObjectCommon(with otherArray: [Any]) -> Any?
  func index(of anObject: Any) -> Int
  func index(of anObject: Any, in range: NSRange) -> Int
  func indexOfObjectIdentical(to anObject: Any) -> Int
  func indexOfObjectIdentical(to anObject: Any, in range: NSRange) -> Int
  func isEqual(to otherArray: [Any]) -> Bool
  @available(macOS 10.6, *)
  var firstObject: Any? { get }
  var lastObject: Any? { get }
  func objectEnumerator() -> NSEnumerator
  func reverseObjectEnumerator() -> NSEnumerator
  var sortedArrayHint: Data { get }
  func sortedArray(_ comparator: @convention(c) (Any, Any, UnsafeMutableRawPointer?) -> Int, context: UnsafeMutableRawPointer?) -> [Any]
  func sortedArray(_ comparator: @convention(c) (Any, Any, UnsafeMutableRawPointer?) -> Int, context: UnsafeMutableRawPointer?, hint: Data?) -> [Any]
  func sortedArray(using comparator: Selector) -> [Any]
  func subarray(with range: NSRange) -> [Any]
  @available(macOS 10.13, *)
  func write(to url: URL) throws
  func objects(at indexes: IndexSet) -> [Any]
  subscript(idx: Int) -> Any { get }
  @available(macOS 10.6, *)
  func enumerateObjects(_ block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.6, *)
  func enumerateObjects(options opts: NSEnumerationOptions = [], using block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.6, *)
  func enumerateObjects(at s: IndexSet, options opts: NSEnumerationOptions = [], using block: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.6, *)
  func indexOfObject(passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(macOS 10.6, *)
  func indexOfObject(options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(macOS 10.6, *)
  func indexOfObject(at s: IndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Int
  @available(macOS 10.6, *)
  func indexesOfObjects(passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(macOS 10.6, *)
  func indexesOfObjects(options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(macOS 10.6, *)
  func indexesOfObjects(at s: IndexSet, options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Int, UnsafeMutablePointer<ObjCBool>) -> Bool) -> IndexSet
  @available(macOS 10.6, *)
  func sortedArray(comparator cmptr: (Any, Any) -> ComparisonResult) -> [Any]
  @available(macOS 10.6, *)
  func sortedArray(options opts: NSSortOptions = [], usingComparator cmptr: (Any, Any) -> ComparisonResult) -> [Any]
  @available(macOS 10.6, *)
  func index(of obj: Any, inSortedRange r: NSRange, options opts: NSBinarySearchingOptions = [], usingComparator cmp: (Any, Any) -> ComparisonResult) -> Int
}
struct NSBinarySearchingOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var firstEqual: NSBinarySearchingOptions { get }
  static var lastEqual: NSBinarySearchingOptions { get }
  static var insertionIndex: NSBinarySearchingOptions { get }
}
extension NSArray {
  convenience init(object anObject: Any)
  convenience init(objects: UnsafePointer<AnyObject>, count cnt: Int)
  convenience init(array: [Any])
  convenience init(array: [Any], copyItems flag: Bool)
  @available(macOS 10.13, *)
  convenience init(contentsOf url: URL, error: ()) throws
}
extension NSArray {
  @available(macOS, introduced: 10.0, deprecated: 100000)
  convenience init?(contentsOfFile path: String)
  @available(macOS, introduced: 10.0, deprecated: 100000)
  convenience init?(contentsOf url: URL)
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 100000)
  func write(to url: URL, atomically: Bool) -> Bool
}
class NSMutableArray : NSArray {
  func add(_ anObject: Any)
  func insert(_ anObject: Any, at index: Int)
  func removeLastObject()
  func removeObject(at index: Int)
  func replaceObject(at index: Int, with anObject: Any)
  init(capacity numItems: Int)
  convenience init(objects: UnsafePointer<AnyObject>, count cnt: Int)
}
extension NSMutableArray {
  func addObjects(from otherArray: [Any])
  func exchangeObject(at idx1: Int, withObjectAt idx2: Int)
  func removeAllObjects()
  func remove(_ anObject: Any, in range: NSRange)
  func remove(_ anObject: Any)
  func removeObject(identicalTo anObject: Any, in range: NSRange)
  func removeObject(identicalTo anObject: Any)
  func removeObjects(in otherArray: [Any])
  func removeObjects(in range: NSRange)
  func replaceObjects(in range: NSRange, withObjectsFrom otherArray: [Any], range otherRange: NSRange)
  func replaceObjects(in range: NSRange, withObjectsFrom otherArray: [Any])
  func setArray(_ otherArray: [Any])
  func sort(_ compare: @convention(c) (Any, Any, UnsafeMutableRawPointer?) -> Int, context: UnsafeMutableRawPointer?)
  func sort(using comparator: Selector)
  func insert(_ objects: [Any], at indexes: IndexSet)
  func removeObjects(at indexes: IndexSet)
  func replaceObjects(at indexes: IndexSet, with objects: [Any])
  @available(macOS 10.6, *)
  func sort(comparator cmptr: (Any, Any) -> ComparisonResult)
  @available(macOS 10.6, *)
  func sort(options opts: NSSortOptions = [], usingComparator cmptr: (Any, Any) -> ComparisonResult)
}
extension NSMutableArray {
}
