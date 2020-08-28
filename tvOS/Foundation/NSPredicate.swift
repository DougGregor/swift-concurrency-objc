
@available(tvOS 9.0, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [Any]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(value: Bool)
  @available(tvOS 9.0, *)
  /*not inherited*/ init(block: @escaping (Any?, [String : Any]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(_ variables: [String : Any]) -> Self
  func evaluate(with object: Any?) -> Bool
  @available(tvOS 9.0, *)
  func evaluate(with object: Any?, substitutionVariables bindings: [String : Any]?) -> Bool
  @available(tvOS 9.0, *)
  func allowEvaluation()
}

extension NSPredicate {
  convenience init(format predicateFormat: __shared String, _ args: CVarArg...)
}
struct _predicateFlags {
  var _evaluationBlocked: UInt32
  var _reservedPredicateFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedPredicateFlags: UInt32)
}
extension NSArray {
  func filtered(using predicate: NSPredicate) -> [Any]
}
extension NSMutableArray {
  func filter(using predicate: NSPredicate)
}
extension NSSet {
  @available(tvOS 9.0, *)
  func filtered(using predicate: NSPredicate) -> Set<AnyHashable>
}
extension NSMutableSet {
  @available(tvOS 9.0, *)
  func filter(using predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(tvOS 9.0, *)
  func filtered(using p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(tvOS 9.0, *)
  func filter(using p: NSPredicate)
}
