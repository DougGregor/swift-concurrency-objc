
extension NSRuleEditor.PredicatePartKey {
  static let leftExpression: NSRuleEditor.PredicatePartKey
  static let rightExpression: NSRuleEditor.PredicatePartKey
  static let comparisonModifier: NSRuleEditor.PredicatePartKey
  static let options: NSRuleEditor.PredicatePartKey
  static let operatorType: NSRuleEditor.PredicatePartKey
  static let customSelector: NSRuleEditor.PredicatePartKey
  static let compoundType: NSRuleEditor.PredicatePartKey
}
class NSRuleEditor : NSControl {
  weak var delegate: @sil_weak NSRuleEditorDelegate?
  var formattingStringsFilename: String?
  var formattingDictionary: [String : String]?
  func reloadCriteria()
  var nestingMode: NSRuleEditor.NestingMode
  var rowHeight: CGFloat
  var isEditable: Bool
  var canRemoveAllRows: Bool
  var predicate: NSPredicate? { get }
  func reloadPredicate()
  func predicate(forRow row: Int) -> NSPredicate?
  var numberOfRows: Int { get }
  func subrowIndexes(forRow rowIndex: Int) -> IndexSet
  func criteria(forRow row: Int) -> [Any]
  func displayValues(forRow row: Int) -> [Any]
  func row(forDisplayValue displayValue: Any) -> Int
  func rowType(forRow rowIndex: Int) -> NSRuleEditor.RowType
  func parentRow(forRow rowIndex: Int) -> Int
  func addRow(_ sender: Any?)
  func insertRow(at rowIndex: Int, with rowType: NSRuleEditor.RowType, asSubrowOfRow parentRow: Int, animate shouldAnimate: Bool)
  func setCriteria(_ criteria: [Any], andDisplayValues values: [Any], forRowAt rowIndex: Int)
  func removeRow(at rowIndex: Int)
  func removeRows(at rowIndexes: IndexSet, includeSubrows: Bool)
  var selectedRowIndexes: IndexSet { get }
  func selectRowIndexes(_ indexes: IndexSet, byExtendingSelection extend: Bool)
  var rowClass: AnyClass
  var rowTypeKeyPath: String
  var subrowsKeyPath: String
  var criteriaKeyPath: String
  var displayValuesKeyPath: String
}
protocol NSRuleEditorDelegate : NSObjectProtocol {
  func ruleEditor(_ editor: NSRuleEditor, numberOfChildrenForCriterion criterion: Any?, with rowType: NSRuleEditor.RowType) -> Int
  func ruleEditor(_ editor: NSRuleEditor, child index: Int, forCriterion criterion: Any?, with rowType: NSRuleEditor.RowType) -> Any
  func ruleEditor(_ editor: NSRuleEditor, displayValueForCriterion criterion: Any, inRow row: Int) -> Any
  optional func ruleEditor(_ editor: NSRuleEditor, predicatePartsForCriterion criterion: Any, withDisplayValue value: Any, inRow row: Int) -> [NSRuleEditor.PredicatePartKey : Any]?
  @asyncHandler optional func ruleEditorRowsDidChange(_ notification: Notification)
}
extension NSRuleEditor {
  class let rowsDidChangeNotification: NSNotification.Name
  struct PredicatePartKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  enum NestingMode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case single
    case list
    case compound
    case simple
  }
  enum RowType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case simple
    case compound
  }
}
