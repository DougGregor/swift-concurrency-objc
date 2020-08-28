
@available(iOS 9.0, *)
class GKRuleSystem : NSObject {
  func evaluate()
  var state: NSMutableDictionary { get }
  var rules: [GKRule] { get }
  func add(_ rule: GKRule)
  func add(_ rules: [GKRule])
  func removeAllRules()
  var agenda: [GKRule] { get }
  var executed: [GKRule] { get }
  var facts: [Any] { get }
  func grade(forFact fact: NSObjectProtocol) -> Float
  func minimumGrade(forFacts facts: [Any]) -> Float
  func maximumGrade(forFacts facts: [Any]) -> Float
  func assertFact(_ fact: NSObjectProtocol)
  func assertFact(_ fact: NSObjectProtocol, grade: Float)
  func retractFact(_ fact: NSObjectProtocol)
  func retractFact(_ fact: NSObjectProtocol, grade: Float)
  func reset()
}
@available(iOS 9.0, *)
class GKRule : NSObject {
  var salience: Int
  func evaluatePredicate(in system: GKRuleSystem) -> Bool
  func performAction(in system: GKRuleSystem)
  convenience init(predicate: NSPredicate, assertingFact fact: NSObjectProtocol, grade: Float)
  convenience init(predicate: NSPredicate, retractingFact fact: NSObjectProtocol, grade: Float)
  convenience init(blockPredicate predicate: @escaping (GKRuleSystem) -> Bool, action: @escaping (GKRuleSystem) -> Void)
}
@available(iOS 9.0, *)
class GKNSPredicateRule : GKRule {
  var predicate: NSPredicate { get }
  init(predicate: NSPredicate)
}
