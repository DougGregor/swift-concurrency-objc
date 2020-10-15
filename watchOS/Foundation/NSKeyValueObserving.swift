
struct NSKeyValueObservingOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var new: NSKeyValueObservingOptions { get }
  static var old: NSKeyValueObservingOptions { get }
  @available(watchOS 2.0, *)
  static var initial: NSKeyValueObservingOptions { get }
  @available(watchOS 2.0, *)
  static var prior: NSKeyValueObservingOptions { get }
}
enum NSKeyValueChange : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case setting
  case insertion
  case removal
  case replacement
}
enum NSKeyValueSetMutationKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case union
  case minus
  case intersect
  case set
}
struct NSKeyValueChangeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSKeyValueChangeKey {
  static let kindKey: NSKeyValueChangeKey
  static let newKey: NSKeyValueChangeKey
  static let oldKey: NSKeyValueChangeKey
  static let indexesKey: NSKeyValueChangeKey
  @available(watchOS 2.0, *)
  static let notificationIsPriorKey: NSKeyValueChangeKey
}
extension NSObject {
  class func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)
  func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)
}
extension NSObject {
  class func addObserver(_ observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutableRawPointer?)
  func addObserver(_ observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutableRawPointer?)
  @available(watchOS 2.0, *)
  class func removeObserver(_ observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutableRawPointer?)
  @available(watchOS 2.0, *)
  func removeObserver(_ observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutableRawPointer?)
  class func removeObserver(_ observer: NSObject, forKeyPath keyPath: String)
  func removeObserver(_ observer: NSObject, forKeyPath keyPath: String)
}
extension NSArray {
  func addObserver(_ observer: NSObject, toObjectsAt indexes: IndexSet, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutableRawPointer?)
  @available(watchOS 2.0, *)
  func removeObserver(_ observer: NSObject, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String, context: UnsafeMutableRawPointer?)
  func removeObserver(_ observer: NSObject, fromObjectsAt indexes: IndexSet, forKeyPath keyPath: String)
}
extension NSOrderedSet {
}
extension NSSet {
}
extension NSObject {
  class func willChangeValue(forKey key: String)
  func willChangeValue(forKey key: String)
  class func didChangeValue(forKey key: String)
  func didChangeValue(forKey key: String)
  class func willChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func willChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func didChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  func didChange(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, forKey key: String)
  class func willChangeValue(forKey key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, using objects: Set<AnyHashable>)
  func willChangeValue(forKey key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, using objects: Set<AnyHashable>)
  class func didChangeValue(forKey key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, using objects: Set<AnyHashable>)
  func didChangeValue(forKey key: String, withSetMutation mutationKind: NSKeyValueSetMutationKind, using objects: Set<AnyHashable>)
}
extension NSObject {
  @available(watchOS 2.0, *)
  class func keyPathsForValuesAffectingValue(forKey key: String) -> Set<String>
  class func automaticallyNotifiesObservers(forKey key: String) -> Bool
  var observationInfo: UnsafeMutableRawPointer?
  class func observationInfo() -> UnsafeMutableRawPointer?
  class func setObservationInfo(_ observationInfo: UnsafeMutableRawPointer?)
}
