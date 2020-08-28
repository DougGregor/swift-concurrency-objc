
class NSSortDescriptor : NSObject, NSSecureCoding, NSCopying {
  init(key: String?, ascending: Bool)
  init(key: String?, ascending: Bool, selector: Selector?)
  var key: String? { get }
  var ascending: Bool { get }
  var selector: Selector? { get }
  @available(macOS 10.9, *)
  func allowEvaluation()
  @available(macOS 10.6, *)
  init(key: String?, ascending: Bool, comparator cmptr: @escaping Comparator)
  @available(macOS 10.6, *)
  var comparator: Comparator { get }
  func compare(_ object1: Any, to object2: Any) -> ComparisonResult
  var reversedSortDescriptor: Any { get }
}

extension NSSortDescriptor {
  convenience init<Root, Value>(keyPath: KeyPath<Root, Value>, ascending: Bool)
  convenience init<Root, Value>(keyPath: KeyPath<Root, Value>, ascending: Bool, comparator cmptr: @escaping Comparator)
  var keyPath: AnyKeyPath? { get }
}
extension NSSet {
  @available(macOS 10.6, *)
  func sortedArray(using sortDescriptors: [NSSortDescriptor]) -> [Any]
}
extension NSArray {
  func sortedArray(using sortDescriptors: [NSSortDescriptor]) -> [Any]
}
extension NSMutableArray {
  func sort(using sortDescriptors: [NSSortDescriptor])
}
extension NSOrderedSet {
  @available(macOS 10.7, *)
  func sortedArray(using sortDescriptors: [NSSortDescriptor]) -> [Any]
}
extension NSMutableOrderedSet {
  @available(macOS 10.7, *)
  func sort(using sortDescriptors: [NSSortDescriptor])
}
