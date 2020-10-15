
extension NSExceptionName {
  static let undefinedKeyException: NSExceptionName
}
struct NSKeyValueOperator : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSKeyValueOperator {
  static let averageKeyValueOperator: NSKeyValueOperator
  static let countKeyValueOperator: NSKeyValueOperator
  static let distinctUnionOfArraysKeyValueOperator: NSKeyValueOperator
  static let distinctUnionOfObjectsKeyValueOperator: NSKeyValueOperator
  static let distinctUnionOfSetsKeyValueOperator: NSKeyValueOperator
  static let maximumKeyValueOperator: NSKeyValueOperator
  static let minimumKeyValueOperator: NSKeyValueOperator
  static let sumKeyValueOperator: NSKeyValueOperator
  static let unionOfArraysKeyValueOperator: NSKeyValueOperator
  static let unionOfObjectsKeyValueOperator: NSKeyValueOperator
  static let unionOfSetsKeyValueOperator: NSKeyValueOperator
}
extension NSObject {
  class var accessInstanceVariablesDirectly: Bool { get }
  class func value(forKey key: String) -> Any?
  func value(forKey key: String) -> Any?
  class func setValue(_ value: Any?, forKey key: String)
  func setValue(_ value: Any?, forKey key: String)
  class func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
  class func mutableArrayValue(forKey key: String) -> NSMutableArray
  func mutableArrayValue(forKey key: String) -> NSMutableArray
  @available(tvOS 9.0, *)
  class func mutableOrderedSetValue(forKey key: String) -> NSMutableOrderedSet
  @available(tvOS 9.0, *)
  func mutableOrderedSetValue(forKey key: String) -> NSMutableOrderedSet
  class func mutableSetValue(forKey key: String) -> NSMutableSet
  func mutableSetValue(forKey key: String) -> NSMutableSet
  class func value(forKeyPath keyPath: String) -> Any?
  func value(forKeyPath keyPath: String) -> Any?
  class func setValue(_ value: Any?, forKeyPath keyPath: String)
  func setValue(_ value: Any?, forKeyPath keyPath: String)
  class func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKeyPath inKeyPath: String) throws
  class func mutableArrayValue(forKeyPath keyPath: String) -> NSMutableArray
  func mutableArrayValue(forKeyPath keyPath: String) -> NSMutableArray
  @available(tvOS 9.0, *)
  class func mutableOrderedSetValue(forKeyPath keyPath: String) -> NSMutableOrderedSet
  @available(tvOS 9.0, *)
  func mutableOrderedSetValue(forKeyPath keyPath: String) -> NSMutableOrderedSet
  class func mutableSetValue(forKeyPath keyPath: String) -> NSMutableSet
  func mutableSetValue(forKeyPath keyPath: String) -> NSMutableSet
  class func value(forUndefinedKey key: String) -> Any?
  func value(forUndefinedKey key: String) -> Any?
  class func setValue(_ value: Any?, forUndefinedKey key: String)
  func setValue(_ value: Any?, forUndefinedKey key: String)
  class func setNilValueForKey(_ key: String)
  func setNilValueForKey(_ key: String)
  class func dictionaryWithValues(forKeys keys: [String]) -> [String : Any]
  func dictionaryWithValues(forKeys keys: [String]) -> [String : Any]
  class func setValuesForKeys(_ keyedValues: [String : Any])
  func setValuesForKeys(_ keyedValues: [String : Any])
}
extension NSArray {
}
extension NSDictionary {
}
extension NSMutableDictionary {
}
extension NSOrderedSet {
}
extension NSSet {
}
