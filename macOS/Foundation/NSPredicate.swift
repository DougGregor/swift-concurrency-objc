
@available(macOS 10.4, *)
class NSPredicate : NSObject, NSSecureCoding, NSCopying {
  /*not inherited*/ init(format predicateFormat: String, argumentArray arguments: [Any]?)
  /*not inherited*/ init(format predicateFormat: String, arguments argList: CVaListPointer)
  @available(macOS 10.9, *)
  /*not inherited*/ init?(fromMetadataQueryString queryString: String)
  /*not inherited*/ init(value: Bool)
  @available(macOS 10.6, *)
  /*not inherited*/ init(block: @escaping (Any?, [String : Any]?) -> Bool)
  var predicateFormat: String { get }
  func withSubstitutionVariables(_ variables: [String : Any]) -> Self
  func evaluate(with object: Any?) -> Bool
  @available(macOS 10.5, *)
  func evaluate(with object: Any?, substitutionVariables bindings: [String : Any]?) -> Bool
  @available(macOS 10.9, *)
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
  @available(macOS 10.5, *)
  func filtered(using predicate: NSPredicate) -> Set<AnyHashable>
}
extension NSMutableSet {
  @available(macOS 10.5, *)
  func filter(using predicate: NSPredicate)
}
extension NSOrderedSet {
  @available(macOS 10.7, *)
  func filtered(using p: NSPredicate) -> NSOrderedSet
}
extension NSMutableOrderedSet {
  @available(macOS 10.7, *)
  func filter(using p: NSPredicate)
}
