
extension NSGridCell {
  @available(macOS 10.12, *)
  enum Placement : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case inherited
    case none
    case leading
    static var top: NSGridCell.Placement { get }
    case trailing
    static var bottom: NSGridCell.Placement { get }
    case center
    case fill
  }
}
extension NSGridRow {
  @available(macOS 10.12, *)
  enum Alignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case inherited
    case none
    case firstBaseline
    case lastBaseline
  }
}
extension NSGridView {
  @available(macOS 10.12, *)
  class let sizedForContent: CGFloat
}
@available(macOS 10.12, *)
class NSGridView : NSView {
  convenience init(numberOfColumns columnCount: Int, rows rowCount: Int)
  convenience init(views rows: [[NSView]])
  var numberOfRows: Int { get }
  var numberOfColumns: Int { get }
  func row(at index: Int) -> NSGridRow
  func index(of row: NSGridRow) -> Int
  func column(at index: Int) -> NSGridColumn
  func index(of column: NSGridColumn) -> Int
  func cell(atColumnIndex columnIndex: Int, rowIndex: Int) -> NSGridCell
  func cell(for view: NSView) -> NSGridCell?
  func addRow(with views: [NSView]) -> NSGridRow
  func insertRow(at index: Int, with views: [NSView]) -> NSGridRow
  func moveRow(at fromIndex: Int, to toIndex: Int)
  func removeRow(at index: Int)
  func addColumn(with views: [NSView]) -> NSGridColumn
  func insertColumn(at index: Int, with views: [NSView]) -> NSGridColumn
  func moveColumn(at fromIndex: Int, to toIndex: Int)
  func removeColumn(at index: Int)
  var xPlacement: NSGridCell.Placement
  var yPlacement: NSGridCell.Placement
  var rowAlignment: NSGridRow.Alignment
  var rowSpacing: CGFloat
  var columnSpacing: CGFloat
  func mergeCells(inHorizontalRange hRange: NSRange, verticalRange vRange: NSRange)
}
@available(macOS 10.12, *)
class NSGridRow : NSObject, NSCoding {
  weak var gridView: @sil_weak NSGridView? { get }
  var numberOfCells: Int { get }
  func cell(at index: Int) -> NSGridCell
  var yPlacement: NSGridCell.Placement
  var rowAlignment: NSGridRow.Alignment
  var height: CGFloat
  var topPadding: CGFloat
  var bottomPadding: CGFloat
  var isHidden: Bool
  func mergeCells(in range: NSRange)
}
@available(macOS 10.12, *)
class NSGridColumn : NSObject, NSCoding {
  weak var gridView: @sil_weak NSGridView? { get }
  var numberOfCells: Int { get }
  func cell(at index: Int) -> NSGridCell
  var xPlacement: NSGridCell.Placement
  var width: CGFloat
  var leadingPadding: CGFloat
  var trailingPadding: CGFloat
  var isHidden: Bool
  func mergeCells(in range: NSRange)
}
@available(macOS 10.12, *)
class NSGridCell : NSObject, NSCoding {
  var contentView: NSView?
  class var emptyContentView: NSView { get }
  weak var row: @sil_weak NSGridRow? { get }
  weak var column: @sil_weak NSGridColumn? { get }
  var xPlacement: NSGridCell.Placement
  var yPlacement: NSGridCell.Placement
  var rowAlignment: NSGridRow.Alignment
  var customPlacementConstraints: [NSLayoutConstraint]
}
