
extension NSExpression {
  enum ExpressionType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case constantValue
    case evaluatedObject
    case variable
    case keyPath
    case function
    @available(macOS 10.5, *)
    case unionSet
    @available(macOS 10.5, *)
    case intersectSet
    @available(macOS 10.5, *)
    case minusSet
    @available(macOS 10.5, *)
    case subquery
    @available(macOS 10.5, *)
    case aggregate
    @available(macOS 10.9, *)
    case anyKey
    case block
    @available(macOS 10.11, *)
    case conditional
  }
}
@available(macOS 10.4, *)
class NSExpression : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, argumentArray arguments: [Any])
  @available(macOS 10.6, *)
  /*not inherited*/ init(format expressionFormat: String, arguments argList: CVaListPointer)
  /*not inherited*/ init(forConstantValue obj: Any?)
  class func expressionForEvaluatedObject() -> NSExpression
  /*not inherited*/ init(forVariable string: String)
  /*not inherited*/ init(forKeyPath keyPath: String)
  /*not inherited*/ init(forFunction name: String, arguments parameters: [Any])
  @available(macOS 10.5, *)
  /*not inherited*/ init(forAggregate subexpressions: [NSExpression])
  @available(macOS 10.5, *)
  /*not inherited*/ init(forUnionSet left: NSExpression, with right: NSExpression)
  @available(macOS 10.5, *)
  /*not inherited*/ init(forIntersectSet left: NSExpression, with right: NSExpression)
  @available(macOS 10.5, *)
  /*not inherited*/ init(forMinusSet left: NSExpression, with right: NSExpression)
  @available(macOS 10.5, *)
  /*not inherited*/ init(forSubquery expression: NSExpression, usingIteratorVariable variable: String, predicate: NSPredicate)
  @available(macOS 10.5, *)
  /*not inherited*/ init(forFunction target: NSExpression, selectorName name: String, arguments parameters: [Any]?)
  @available(macOS 10.9, *)
  class func expressionForAnyKey() -> NSExpression
  @available(macOS 10.6, *)
  /*not inherited*/ init(block: @escaping (Any?, [NSExpression], NSMutableDictionary?) -> Any, arguments: [NSExpression]?)
  @available(macOS 10.11, *)
  /*not inherited*/ init(forConditional predicate: NSPredicate, trueExpression: NSExpression, falseExpression: NSExpression)
  init(expressionType type: NSExpression.ExpressionType)
  var expressionType: NSExpression.ExpressionType { get }
  var constantValue: Any? { get }
  var keyPath: String { get }
  var function: String { get }
  var variable: String { get }
  @NSCopying var operand: NSExpression { get }
  var arguments: [NSExpression]? { get }
  @available(macOS 10.5, *)
  var collection: Any { get }
  @available(macOS 10.5, *)
  @NSCopying var predicate: NSPredicate { get }
  @available(macOS 10.5, *)
  @NSCopying var left: NSExpression { get }
  @available(macOS 10.5, *)
  @NSCopying var right: NSExpression { get }
  @available(macOS 10.11, *)
  @NSCopying var `true`: NSExpression { get }
  @available(macOS 10.11, *)
  @NSCopying var `false`: NSExpression { get }
  @available(macOS 10.6, *)
  var expressionBlock: (Any?, [NSExpression], NSMutableDictionary?) -> Any { get }
  func expressionValue(with object: Any?, context: NSMutableDictionary?) -> Any?
  @available(macOS 10.9, *)
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
