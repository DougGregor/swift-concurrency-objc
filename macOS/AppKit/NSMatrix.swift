
extension NSMatrix {
  enum Mode : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case radioModeMatrix
    case highlightModeMatrix
    case listModeMatrix
    case trackModeMatrix
  }
}
class NSMatrix : NSControl, NSUserInterfaceValidations, NSViewToolTipOwner {
  init(frame frameRect: NSRect, mode: NSMatrix.Mode, prototype cell: NSCell, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  init(frame frameRect: NSRect, mode: NSMatrix.Mode, cellClass factoryId: AnyClass?, numberOfRows rowsHigh: Int, numberOfColumns colsWide: Int)
  var cellClass: AnyClass
  @NSCopying var prototype: NSCell?
  func makeCell(atRow row: Int, column col: Int) -> NSCell
  var mode: NSMatrix.Mode
  var allowsEmptySelection: Bool
  func sendAction(_ selector: Selector, to object: Any, forAllCells flag: Bool)
  var cells: [NSCell] { get }
  func sort(using comparator: Selector)
  func sort(using compare: @convention(c) (Any, Any, UnsafeMutableRawPointer?) -> Int, context: UnsafeMutableRawPointer?)
  var selectedCells: [NSCell] { get }
  var selectedRow: Int { get }
  var selectedColumn: Int { get }
  var isSelectionByRect: Bool
  func setSelectionFrom(_ startPos: Int, to endPos: Int, anchor anchorPos: Int, highlight lit: Bool)
  func deselectSelectedCell()
  func deselectAllCells()
  func selectCell(atRow row: Int, column col: Int)
  func selectCell(withTag tag: Int) -> Bool
  var cellSize: NSSize
  var intercellSpacing: NSSize
  func setScrollable(_ flag: Bool)
  @NSCopying var backgroundColor: NSColor
  @NSCopying var cellBackgroundColor: NSColor?
  var drawsCellBackground: Bool
  var drawsBackground: Bool
  func setState(_ value: Int, atRow row: Int, column col: Int)
  func getNumberOfRows(_ rowCount: UnsafeMutablePointer<Int>?, columns colCount: UnsafeMutablePointer<Int>?)
  var numberOfRows: Int { get }
  var numberOfColumns: Int { get }
  func cell(atRow row: Int, column col: Int) -> NSCell?
  func cellFrame(atRow row: Int, column col: Int) -> NSRect
  func getRow(_ row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, of cell: NSCell) -> Bool
  func getRow(_ row: UnsafeMutablePointer<Int>, column col: UnsafeMutablePointer<Int>, for point: NSPoint) -> Bool
  func renewRows(_ newRows: Int, columns newCols: Int)
  func putCell(_ newCell: NSCell, atRow row: Int, column col: Int)
  func addRow()
  func addRow(with newCells: [NSCell])
  func insertRow(_ row: Int)
  func insertRow(_ row: Int, with newCells: [NSCell]?)
  func removeRow(_ row: Int)
  func addColumn()
  func addColumn(with newCells: [NSCell])
  func insertColumn(_ column: Int)
  func insertColumn(_ column: Int, with newCells: [NSCell]?)
  func removeColumn(_ col: Int)
  func cell(withTag tag: Int) -> NSCell?
  var doubleAction: Selector?
  var autosizesCells: Bool
  func sizeToCells()
  func setValidateSize(_ flag: Bool)
  func drawCell(atRow row: Int, column col: Int)
  func highlightCell(_ flag: Bool, atRow row: Int, column col: Int)
  var isAutoscroll: Bool
  func scrollCellToVisible(atRow row: Int, column col: Int)
  var mouseDownFlags: Int { get }
  func sendAction() -> Bool
  func sendDoubleAction()
  weak var delegate: @sil_weak NSMatrixDelegate?
  func textShouldBeginEditing(_ textObject: NSText) -> Bool
  func textShouldEndEditing(_ textObject: NSText) -> Bool
  func textDidBeginEditing(_ notification: Notification)
  func textDidEndEditing(_ notification: Notification)
  func textDidChange(_ notification: Notification)
  func selectText(_ sender: Any?)
  func selectText(atRow row: Int, column col: Int) -> NSCell?
  func setToolTip(_ toolTipString: String?, for cell: NSCell)
  func toolTip(for cell: NSCell) -> String?
  @available(macOS 10.8, *)
  var autorecalculatesCellSize: Bool
}
extension NSMatrix {
  var tabKeyTraversesCells: Bool
  var keyCell: NSCell?
}
protocol NSMatrixDelegate : NSControlTextEditingDelegate {
}
