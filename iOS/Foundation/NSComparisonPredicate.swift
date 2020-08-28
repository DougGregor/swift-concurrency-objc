
extension NSComparisonPredicate {
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var caseInsensitive: NSComparisonPredicate.Options { get }
    static var diacriticInsensitive: NSComparisonPredicate.Options { get }
    @available(iOS 4.0, *)
    static var normalized: NSComparisonPredicate.Options { get }
  }
  enum Modifier : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case direct
    case all
    case any
  }
  enum Operator : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case lessThan
    case lessThanOrEqualTo
    case greaterThan
    case greaterThanOrEqualTo
    case equalTo
    case notEqualTo
    case matches
    case like
    case beginsWith
    case endsWith
    case `in`
    case customSelector
    @available(iOS 3.0, *)
    case contains
    @available(iOS 3.0, *)
    case between
  }
}
@available(iOS 3.0, *)
class NSComparisonPredicate : NSPredicate {
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, modifier: NSComparisonPredicate.Modifier, type: NSComparisonPredicate.Operator, options: NSComparisonPredicate.Options = [])
  init(leftExpression lhs: NSExpression, rightExpression rhs: NSExpression, customSelector selector: Selector)
  var predicateOperatorType: NSComparisonPredicate.Operator { get }
  var comparisonPredicateModifier: NSComparisonPredicate.Modifier { get }
  var leftExpression: NSExpression { get }
  var rightExpression: NSExpression { get }
  var customSelector: Selector? { get }
  var options: NSComparisonPredicate.Options { get }
}
