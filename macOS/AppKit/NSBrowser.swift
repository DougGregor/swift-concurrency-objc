
extension NSAppKitVersion {
}
class NSBrowser : NSControl {
  func loadColumnZero()
  var isLoaded: Bool { get }
  var doubleAction: Selector?
  func setCellClass(_ factoryId: AnyClass)
  var cellPrototype: Any!
  weak var delegate: @sil_weak NSBrowserDelegate?
  var reusesColumns: Bool
  var hasHorizontalScroller: Bool
  @available(macOS 10.6, *)
  var autohidesScroller: Bool
  var separatesColumns: Bool
  var isTitled: Bool
  var minColumnWidth: CGFloat
  var maxVisibleColumns: Int
  var allowsMultipleSelection: Bool
  var allowsBranchSelection: Bool
  var allowsEmptySelection: Bool
  var takesTitleFromPreviousColumn: Bool
  var sendsActionOnArrowKeys: Bool
  @available(macOS 10.6, *)
  func item(at indexPath: IndexPath) -> Any?
  @available(macOS 10.6, *)
  func item(atRow row: Int, inColumn column: Int) -> Any?
  @available(macOS 10.6, *)
  func indexPath(forColumn column: Int) -> IndexPath
  @available(macOS 10.6, *)
  func isLeafItem(_ item: Any?) -> Bool
  @available(macOS 10.6, *)
  func reloadData(forRowIndexes rowIndexes: IndexSet, inColumn column: Int)
  @available(macOS 10.6, *)
  func parentForItems(inColumn column: Int) -> Any?
  @available(macOS 10.6, *)
  func scrollRowToVisible(_ row: Int, inColumn column: Int)
  func setTitle(_ string: String, ofColumn column: Int)
  func title(ofColumn column: Int) -> String?
  var pathSeparator: String
  func setPath(_ path: String) -> Bool
  func path() -> String
  func path(toColumn column: Int) -> String
  @available(macOS 10.6, *)
  var clickedColumn: Int { get }
  @available(macOS 10.6, *)
  var clickedRow: Int { get }
  var selectedColumn: Int { get }
  func selectedCell(inColumn column: Int) -> Any?
  var selectedCells: [NSCell]? { get }
  func selectRow(_ row: Int, inColumn column: Int)
  func selectedRow(inColumn column: Int) -> Int
  @available(macOS 10.6, *)
  var selectionIndexPath: IndexPath?
  @available(macOS 10.6, *)
  var selectionIndexPaths: [IndexPath]
  @available(macOS 10.5, *)
  func selectRowIndexes(_ indexes: IndexSet, inColumn column: Int)
  @available(macOS 10.5, *)
  func selectedRowIndexes(inColumn column: Int) -> IndexSet?
  func reloadColumn(_ column: Int)
  func validateVisibleColumns()
  func scrollColumnsRight(by shiftAmount: Int)
  func scrollColumnsLeft(by shiftAmount: Int)
  func scrollColumnToVisible(_ column: Int)
  var lastColumn: Int
  func addColumn()
  var numberOfVisibleColumns: Int { get }
  var firstVisibleColumn: Int { get }
  var lastVisibleColumn: Int { get }
  func loadedCell(atRow row: Int, column col: Int) -> Any?
  func tile()
  func doClick(_ sender: Any?)
  func doDoubleClick(_ sender: Any?)
  func sendAction() -> Bool
  func titleFrame(ofColumn column: Int) -> NSRect
  func drawTitle(ofColumn column: Int, in rect: NSRect)
  var titleHeight: CGFloat { get }
  func frame(ofColumn column: Int) -> NSRect
  func frame(ofInsideOfColumn column: Int) -> NSRect
  @available(macOS 10.6, *)
  func frame(ofRow row: Int, inColumn column: Int) -> NSRect
  @available(macOS 10.6, *)
  func getRow(_ row: UnsafeMutablePointer<Int>?, column: UnsafeMutablePointer<Int>?, for point: NSPoint) -> Bool
  func columnWidth(forColumnContentWidth columnContentWidth: CGFloat) -> CGFloat
  func columnContentWidth(forColumnWidth columnWidth: CGFloat) -> CGFloat
  var columnResizingType: NSBrowser.ColumnResizingType
  var prefersAllColumnUserResizing: Bool
  func setWidth(_ columnWidth: CGFloat, ofColumn columnIndex: Int)
  func width(ofColumn column: Int) -> CGFloat
  @available(macOS 10.6, *)
  var rowHeight: CGFloat
  @available(macOS 10.6, *)
  func noteHeightOfRowsWithIndexesChanged(_ indexSet: IndexSet, inColumn columnIndex: Int)
  @available(macOS 10.6, *)
  func setDefaultColumnWidth(_ columnWidth: CGFloat)
  @available(macOS 10.6, *)
  func defaultColumnWidth() -> CGFloat
  var columnsAutosaveName: NSBrowser.ColumnsAutosaveName
  class func removeSavedColumns(withAutosaveName name: NSBrowser.ColumnsAutosaveName)
  @available(macOS 10.5, *)
  func canDragRows(with rowIndexes: IndexSet, inColumn column: Int, with event: NSEvent) -> Bool
  @available(macOS 10.5, *)
  func draggingImageForRows(with rowIndexes: IndexSet, inColumn column: Int, with event: NSEvent, offset dragImageOffset: NSPointPointer?) -> NSImage?
  @available(macOS 10.5, *)
  func setDraggingSourceOperationMask(_ mask: NSDragOperation, forLocal isLocal: Bool)
  @available(macOS 10.5, *)
  var allowsTypeSelect: Bool
  @available(macOS 10.5, *)
  var backgroundColor: NSColor
  @available(macOS 10.6, *)
  func editItem(at indexPath: IndexPath, with event: NSEvent?, select: Bool)
}
extension NSBrowser {
  class let columnConfigurationDidChangeNotification: NSNotification.Name
  typealias ColumnsAutosaveName = String
  enum ColumnResizingType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noColumnResizing
    case autoColumnResizing
    case userColumnResizing
  }
  @available(macOS 10.5, *)
  enum DropOperation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case on
    case above
  }
}
protocol NSBrowserDelegate : NSObjectProtocol {
  optional func browser(_ sender: NSBrowser, numberOfRowsInColumn column: Int) -> Int
  optional func browser(_ sender: NSBrowser, createRowsForColumn column: Int, in matrix: NSMatrix)
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, numberOfChildrenOfItem item: Any?) -> Int
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, child index: Int, ofItem item: Any?) -> Any
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, isLeafItem item: Any?) -> Bool
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, objectValueForItem item: Any?) -> Any?
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, heightOfRow row: Int, inColumn columnIndex: Int) -> CGFloat
  @available(macOS 10.6, *)
  optional func rootItem(for browser: NSBrowser) -> Any?
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, setObjectValue object: Any?, forItem item: Any?)
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, shouldEditItem item: Any?) -> Bool
  optional func browser(_ sender: NSBrowser, willDisplayCell cell: Any, atRow row: Int, column: Int)
  optional func browser(_ sender: NSBrowser, titleOfColumn column: Int) -> String?
  optional func browser(_ sender: NSBrowser, selectCellWith title: String, inColumn column: Int) -> Bool
  optional func browser(_ sender: NSBrowser, selectRow row: Int, inColumn column: Int) -> Bool
  optional func browser(_ sender: NSBrowser, isColumnValid column: Int) -> Bool
  optional func browserWillScroll(_ sender: NSBrowser)
  @asyncHandler optional func browserDidScroll(_ sender: NSBrowser)
  optional func browser(_ browser: NSBrowser, shouldSizeColumn columnIndex: Int, forUserResize: Bool, toWidth suggestedWidth: CGFloat) -> CGFloat
  optional func browser(_ browser: NSBrowser, sizeToFitWidthOfColumn columnIndex: Int) -> CGFloat
  @asyncHandler optional func browserColumnConfigurationDidChange(_ notification: Notification)
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, shouldShowCellExpansionForRow row: Int, column: Int) -> Bool
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, writeRowsWith rowIndexes: IndexSet, inColumn column: Int, to pasteboard: NSPasteboard) -> Bool
  @available(macOS, introduced: 10.5, deprecated: 10.13, message: "Use NSFilePromiseReceiver objects instead")
  optional func browser(_ browser: NSBrowser, namesOfPromisedFilesDroppedAtDestination dropDestination: URL, forDraggedRowsWith rowIndexes: IndexSet, inColumn column: Int) -> [String]
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, canDragRowsWith rowIndexes: IndexSet, inColumn column: Int, with event: NSEvent) -> Bool
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, draggingImageForRowsWith rowIndexes: IndexSet, inColumn column: Int, with event: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage?
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, validateDrop info: NSDraggingInfo, proposedRow row: UnsafeMutablePointer<Int>, column: UnsafeMutablePointer<Int>, dropOperation: UnsafeMutablePointer<NSBrowser.DropOperation>) -> NSDragOperation
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, acceptDrop info: NSDraggingInfo, atRow row: Int, column: Int, dropOperation: NSBrowser.DropOperation) -> Bool
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, typeSelectStringForRow row: Int, inColumn column: Int) -> String?
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(macOS 10.5, *)
  optional func browser(_ browser: NSBrowser, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, inColumn column: Int, for searchString: String?) -> Int
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, previewViewControllerForLeafItem item: Any) -> NSViewController?
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, headerViewControllerForItem item: Any?) -> NSViewController?
  @asyncHandler optional func browser(_ browser: NSBrowser, didChangeLastColumn oldLastColumn: Int, toColumn column: Int)
  @available(macOS 10.6, *)
  optional func browser(_ browser: NSBrowser, selectionIndexesForProposedSelection proposedSelectionIndexes: IndexSet, inColumn column: Int) -> IndexSet
}
extension NSBrowser {
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use the item based NSBrowser instead")
  func setMatrixClass(_ factoryId: AnyClass)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use the item based NSBrowser instead")
  func matrixClass() -> AnyClass
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use the item based NSBrowser instead")
  func column(of matrix: NSMatrix) -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use the item based NSBrowser instead")
  func matrix(inColumn column: Int) -> NSMatrix?
}
