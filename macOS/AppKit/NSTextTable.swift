
extension NSTextBlock {
  enum ValueType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case absoluteValueType
    case percentageValueType
  }
  enum Dimension : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case width
    case minimumWidth
    case maximumWidth
    case height
    case minimumHeight
    case maximumHeight
  }
  enum Layer : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case padding
    case border
    case margin
  }
  enum VerticalAlignment : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case topAlignment
    case middleAlignment
    case bottomAlignment
    case baselineAlignment
  }
}
extension NSTextTable {
  enum LayoutAlgorithm : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case automaticLayoutAlgorithm
    case fixedLayoutAlgorithm
  }
}
class NSTextBlock : NSObject, NSSecureCoding, NSCopying {
  func setValue(_ val: CGFloat, type: NSTextBlock.ValueType, for dimension: NSTextBlock.Dimension)
  func value(for dimension: NSTextBlock.Dimension) -> CGFloat
  func valueType(for dimension: NSTextBlock.Dimension) -> NSTextBlock.ValueType
  func setContentWidth(_ val: CGFloat, type: NSTextBlock.ValueType)
  var contentWidth: CGFloat { get }
  var contentWidthValueType: NSTextBlock.ValueType { get }
  func setWidth(_ val: CGFloat, type: NSTextBlock.ValueType, for layer: NSTextBlock.Layer, edge: NSRectEdge)
  func setWidth(_ val: CGFloat, type: NSTextBlock.ValueType, for layer: NSTextBlock.Layer)
  func width(for layer: NSTextBlock.Layer, edge: NSRectEdge) -> CGFloat
  func widthValueType(for layer: NSTextBlock.Layer, edge: NSRectEdge) -> NSTextBlock.ValueType
  var verticalAlignment: NSTextBlock.VerticalAlignment
  @NSCopying var backgroundColor: NSColor?
  func setBorderColor(_ color: NSColor?, for edge: NSRectEdge)
  func setBorderColor(_ color: NSColor?)
  func borderColor(for edge: NSRectEdge) -> NSColor?
  func rectForLayout(at startingPoint: NSPoint, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRect(forContentRect contentRect: NSRect, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackground(withFrame frameRect: NSRect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
}
class NSTextTableBlock : NSTextBlock {
  init(table: NSTextTable, startingRow row: Int, rowSpan: Int, startingColumn col: Int, columnSpan colSpan: Int)
  var table: NSTextTable { get }
  var startingRow: Int { get }
  var rowSpan: Int { get }
  var startingColumn: Int { get }
  var columnSpan: Int { get }
}
class NSTextTable : NSTextBlock {
  var numberOfColumns: Int
  var layoutAlgorithm: NSTextTable.LayoutAlgorithm
  var collapsesBorders: Bool
  var hidesEmptyCells: Bool
  func rect(for block: NSTextTableBlock, layoutAt startingPoint: NSPoint, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func boundsRect(for block: NSTextTableBlock, contentRect: NSRect, in rect: NSRect, textContainer: NSTextContainer, characterRange charRange: NSRange) -> NSRect
  func drawBackground(for block: NSTextTableBlock, withFrame frameRect: NSRect, in controlView: NSView, characterRange charRange: NSRange, layoutManager: NSLayoutManager)
}
