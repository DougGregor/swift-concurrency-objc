
class NSDictionary : NSObject, NSCopying, NSMutableCopying, NSSecureCoding, NSFastEnumeration {
  var count: Int { get }
  func object(forKey aKey: Any) -> Any?
  func keyEnumerator() -> NSEnumerator
  init(objects: UnsafePointer<AnyObject>?, forKeys keys: UnsafePointer<NSCopying>?, count cnt: Int)
}

extension NSDictionary : ExpressibleByDictionaryLiteral {
}

extension NSDictionary : _HasCustomAnyHashableRepresentation {
}

extension NSDictionary : Sequence {
  @objc subscript(key: Any) -> Any? { get }
}

extension NSDictionary {
  @objc(__swiftInitWithDictionary_NSDictionary:) convenience init(dictionary otherDictionary: __shared NSDictionary)
}

extension NSDictionary : CustomReflectable {
}
extension NSDictionary {
  var allKeys: [Any] { get }
  func allKeys(for anObject: Any) -> [Any]
  var allValues: [Any] { get }
  var descriptionInStringsFileFormat: String { get }
  func description(withLocale locale: Any?) -> String
  func description(withLocale locale: Any?, indent level: Int) -> String
  func isEqual(to otherDictionary: [AnyHashable : Any]) -> Bool
  func objectEnumerator() -> NSEnumerator
  func objects(forKeys keys: [Any], notFoundMarker marker: Any) -> [Any]
  @available(tvOS 11.0, *)
  func write(to url: URL) throws
  func keysSortedByValue(using comparator: Selector) -> [Any]
  subscript(key: NSCopying) -> Any? { get }
  @available(tvOS 9.0, *)
  func enumerateKeysAndObjects(_ block: (Any, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 9.0, *)
  func enumerateKeysAndObjects(options opts: NSEnumerationOptions = [], using block: (Any, Any, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(tvOS 9.0, *)
  func keysSortedByValue(comparator cmptr: (Any, Any) -> ComparisonResult) -> [Any]
  @available(tvOS 9.0, *)
  func keysSortedByValue(options opts: NSSortOptions = [], usingComparator cmptr: (Any, Any) -> ComparisonResult) -> [Any]
  @available(tvOS 9.0, *)
  func keysOfEntries(passingTest predicate: (Any, Any, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<AnyHashable>
  @available(tvOS 9.0, *)
  func keysOfEntries(options opts: NSEnumerationOptions = [], passingTest predicate: (Any, Any, UnsafeMutablePointer<ObjCBool>) -> Bool) -> Set<AnyHashable>
}
extension NSDictionary {
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  convenience init?(contentsOfFile path: String)
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  convenience init?(contentsOf url: URL)
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  func write(toFile path: String, atomically useAuxiliaryFile: Bool) -> Bool
  @available(tvOS, introduced: 9.0, deprecated: 100000)
  func write(to url: URL, atomically: Bool) -> Bool
}
extension NSDictionary {
  convenience init(object: Any, forKey key: NSCopying)
  convenience init(dictionary otherDictionary: [AnyHashable : Any])
  convenience init(dictionary otherDictionary: [AnyHashable : Any], copyItems flag: Bool)
  convenience init(objects: [Any], forKeys keys: [NSCopying])
  @available(tvOS 11.0, *)
  convenience init(contentsOf url: URL, error: ()) throws
}
class NSMutableDictionary : NSDictionary {
  func removeObject(forKey aKey: Any)
  func setObject(_ anObject: Any, forKey aKey: NSCopying)
  init(capacity numItems: Int)
}

extension NSMutableDictionary {
}
extension NSMutableDictionary {
  func addEntries(from otherDictionary: [AnyHashable : Any])
  func removeAllObjects()
  func removeObjects(forKeys keyArray: [Any])
  func setDictionary(_ otherDictionary: [AnyHashable : Any])
}
extension NSMutableDictionary {
}
extension NSDictionary {
  @available(tvOS 9.0, *)
  class func sharedKeySet(forKeys keys: [NSCopying]) -> Any
}
extension NSMutableDictionary {
  @available(tvOS 9.0, *)
  /*not inherited*/ init(sharedKeySet keyset: Any)
}
extension NSDictionary : NSFastEnumeration {
}
