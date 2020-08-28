
@available(macOS 10.5, *)
class NSPredicateEditorRowTemplate : NSObject, NSCoding, NSCopying {
  func match(for predicate: NSPredicate) -> Double
  var templateViews: [NSView] { get }
  func setPredicate(_ predicate: NSPredicate)
  func predicate(withSubpredicates subpredicates: [NSPredicate]?) -> NSPredicate
  func displayableSubpredicates(of predicate: NSPredicate) -> [NSPredicate]?
  init(leftExpressions: [NSExpression], rightExpressions: [NSExpression], modifier: NSComparisonPredicate.Modifier, operators: [NSNumber], options: Int)
  init(leftExpressions: [NSExpression], rightExpressionAttributeType attributeType: NSAttributeType, modifier: NSComparisonPredicate.Modifier, operators: [NSNumber], options: Int)
  init(compoundTypes: [NSNumber])
  var leftExpressions: [NSExpression]? { get }
  var rightExpressions: [NSExpression]? { get }
  var rightExpressionAttributeType: NSAttributeType { get }
  var modifier: NSComparisonPredicate.Modifier { get }
  var operators: [NSNumber]? { get }
  var options: Int { get }
  var compoundTypes: [NSNumber]? { get }
  class func templates(withAttributeKeyPaths keyPaths: [String], in entityDescription: NSEntityDescription) -> [NSPredicateEditorRowTemplate]
}
