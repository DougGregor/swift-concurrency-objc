
extension NSExpression {
  enum ExpressionType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case constantValue
    case evaluatedObject
    case variable
    case keyPath
    case function
    @available(iOS 3.0, *)
    case unionSet
    @available(iOS 3.0, *)
    case intersectSet
    @available(iOS 3.0, *)
    case minusSet
    @available(iOS 3.0, *)
    case subquery
    @available(iOS 3.0, *)
    case aggregate
    @available(iOS 7.0, *)
    case anyKey
    case block
    @available(iOS 9.0, *)
    case conditional
  }
}
@available(iOS 3.0, *)
class NSExpression : NSObject, NSSecureCoding, NSCopying {
  @available(iOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [Any])
  @available(iOS 4.0, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: Any?)
  class func expressionForEvaluatedObject() -> NSExpression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [Any])
  @available(iOS 3.0, *)
  /*not inherited*/ init(forAggregate subexpressions: [NSExpression])
  @available(iOS 3.0, *)
  /*not inherited*/ init(forUnionSet left: NSExpression, with right: NSExpression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forIntersectSet left: NSExpression, with right: NSExpression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forMinusSet left: NSExpression, with right: NSExpression)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: NSPredicate)
  @available(iOS 3.0, *)
  /*not inherited*/ init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [Any]?)
  @available(iOS 7.0, *)
  class func expressionForAnyKey() -> NSExpression
  @available(iOS 4.0, *)
  /*not inherited*/ init(block: @escaping (Any?, [NSExpression], NSMutableDictionary?) -> Any, arguments: [NSExpression]?)
  @available(iOS 9.0, *)
  /*not inherited*/ init(forConditional predicate: NSPredicate, trueExpression: NSExpression, falseExpression: NSExpression)
  init(expressionType type: NSExpression.ExpressionType)
  var expressionType: NSExpression.ExpressionType { get }
  var constantValue: Any? { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: NSExpression { get }
  var arguments: [NSExpression]? { get }
  @available(iOS 3.0, *)
  var collection: Any { get }
  @available(iOS 3.0, *)
  @NSCopying var predicate: NSPredicate { get }
  @available(iOS 3.0, *)
  @NSCopying var left: NSExpression { get }
  @available(iOS 3.0, *)
  @NSCopying var right: NSExpression { get }
  @available(iOS 9.0, *)
  @NSCopying var `true`: NSExpression { get }
  @available(iOS 9.0, *)
  @NSCopying var `false`: NSExpression { get }
  @available(iOS 4.0, *)
  var expressionBlock: (Any?, [NSExpression], NSMutableDictionary?) -> Any { get }
  func expressionValue(with object: Any?, context: NSMutableDictionary?) -> Any?
  @available(iOS 7.0, *)
  func allowEvaluation()
}

extension NSExpression {
  convenience init(format expressionFormat: __shared String, _ args: CVarArg...)
}

extension NSExpression {
  convenience init<Root, Value>(forKeyPath keyPath: KeyPath<Root, Value>)
}
struct _expressionFlags {
  var _evaluationBlocked: UInt32
  var _reservedExpressionFlags: UInt32
  init()
  init(_evaluationBlocked: UInt32, _reservedExpressionFlags: UInt32)
}
