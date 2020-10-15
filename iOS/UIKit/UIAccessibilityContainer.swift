
extension NSObject {
  class func accessibilityElementCount() -> Int
  func accessibilityElementCount() -> Int
  class func accessibilityElement(at index: Int) -> Any?
  func accessibilityElement(at index: Int) -> Any?
  class func index(ofAccessibilityElement element: Any) -> Int
  func index(ofAccessibilityElement element: Any) -> Int
  @available(iOS 8.0, *)
  var accessibilityElements: [Any]?
  @available(iOS 11.0, *)
  var accessibilityContainerType: UIAccessibilityContainerType
  class func accessibilityElements() -> [Any]?
  class func setAccessibilityElements(_ accessibilityElements: [Any]?)
  class func accessibilityContainerType() -> UIAccessibilityContainerType
  class func setAccessibilityContainerType(_ accessibilityContainerType: UIAccessibilityContainerType)
}
@available(iOS 11.0, *)
protocol UIAccessibilityContainerDataTableCell : NSObjectProtocol {
  func accessibilityRowRange() -> NSRange
  func accessibilityColumnRange() -> NSRange
}
@available(iOS 11.0, *)
protocol UIAccessibilityContainerDataTable : NSObjectProtocol {
  func accessibilityDataTableCellElement(forRow row: Int, column: Int) -> UIAccessibilityContainerDataTableCell?
  func accessibilityRowCount() -> Int
  func accessibilityColumnCount() -> Int
  optional func accessibilityHeaderElements(forRow row: Int) -> [UIAccessibilityContainerDataTableCell]?
  optional func accessibilityHeaderElements(forColumn column: Int) -> [UIAccessibilityContainerDataTableCell]?
}
