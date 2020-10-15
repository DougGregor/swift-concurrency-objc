
extension NSTableView {
  enum DropOperation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case on
    case above
  }
  enum ColumnAutoresizingStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noColumnAutoresizing
    case uniformColumnAutoresizingStyle
    case sequentialColumnAutoresizingStyle
    case reverseSequentialColumnAutoresizingStyle
    case lastColumnOnlyAutoresizingStyle
    case firstColumnOnlyAutoresizingStyle
  }
  struct GridLineStyle : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var solidVerticalGridLineMask: NSTableView.GridLineStyle { get }
    static var solidHorizontalGridLineMask: NSTableView.GridLineStyle { get }
    @available(macOS 10.7, *)
    static var dashedHorizontalGridLineMask: NSTableView.GridLineStyle { get }
  }
  @available(macOS 10.7, *)
  enum RowSizeStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case custom
    case small
    case medium
    case large
  }
  @available(macOS 11.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case fullWidth
    case inset
    case sourceList
    case plain
  }
  enum SelectionHighlightStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.6, *)
    case none
    case regular
    @available(macOS, introduced: 10.5, deprecated: 100000, message: "Set the NSTableView.style property to NSTableViewStyleSourceList instead.")
    case sourceList
  }
  @available(macOS 10.6, *)
  enum DraggingDestinationFeedbackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case regular
    case sourceList
    @available(macOS 10.9, *)
    case gap
  }
  @available(macOS 10.11, *)
  enum RowActionEdge : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case leading
    case trailing
  }
  typealias AutosaveName = String
  @available(macOS 10.7, *)
  struct AnimationOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var effectFade: NSTableView.AnimationOptions { get }
    static var effectGap: NSTableView.AnimationOptions { get }
    static var slideUp: NSTableView.AnimationOptions { get }
    static var slideDown: NSTableView.AnimationOptions { get }
    static var slideLeft: NSTableView.AnimationOptions { get }
    static var slideRight: NSTableView.AnimationOptions { get }
  }
  class let selectionDidChangeNotification: NSNotification.Name
  class let columnDidMoveNotification: NSNotification.Name
  class let columnDidResizeNotification: NSNotification.Name
  class let selectionIsChangingNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let rowViewIdentifier: NSUserInterfaceItemIdentifier
}
class NSTableView : NSControl, NSUserInterfaceValidations, NSTextViewDelegate, NSDraggingSource, NSAccessibilityTable {
  weak var dataSource: @sil_weak NSTableViewDataSource?
  weak var delegate: @sil_weak NSTableViewDelegate?
  var headerView: NSTableHeaderView?
  var cornerView: NSView?
  var allowsColumnReordering: Bool
  var allowsColumnResizing: Bool
  var columnAutoresizingStyle: NSTableView.ColumnAutoresizingStyle
  var gridStyleMask: NSTableView.GridLineStyle
  var intercellSpacing: NSSize
  var usesAlternatingRowBackgroundColors: Bool
  @NSCopying var backgroundColor: NSColor
  @NSCopying var gridColor: NSColor
  @available(macOS 10.7, *)
  var rowSizeStyle: NSTableView.RowSizeStyle
  @available(macOS 10.7, *)
  var effectiveRowSizeStyle: NSTableView.RowSizeStyle { get }
  var rowHeight: CGFloat
  func noteHeightOfRows(withIndexesChanged indexSet: IndexSet)
  var tableColumns: [NSTableColumn] { get }
  var numberOfColumns: Int { get }
  var numberOfRows: Int { get }
  func addTableColumn(_ tableColumn: NSTableColumn)
  func removeTableColumn(_ tableColumn: NSTableColumn)
  func moveColumn(_ oldIndex: Int, toColumn newIndex: Int)
  func column(withIdentifier identifier: NSUserInterfaceItemIdentifier) -> Int
  func tableColumn(withIdentifier identifier: NSUserInterfaceItemIdentifier) -> NSTableColumn?
  func tile()
  func sizeLastColumnToFit()
  func scrollRowToVisible(_ row: Int)
  func scrollColumnToVisible(_ column: Int)
  func reloadData()
  func noteNumberOfRowsChanged()
  @available(macOS 10.6, *)
  func reloadData(forRowIndexes rowIndexes: IndexSet, columnIndexes: IndexSet)
  var editedColumn: Int { get }
  var editedRow: Int { get }
  var clickedColumn: Int { get }
  var clickedRow: Int { get }
  var doubleAction: Selector?
  var sortDescriptors: [NSSortDescriptor]
  func setIndicatorImage(_ image: NSImage?, in tableColumn: NSTableColumn)
  func indicatorImage(in tableColumn: NSTableColumn) -> NSImage?
  weak var highlightedTableColumn: @sil_weak NSTableColumn?
  var verticalMotionCanBeginDrag: Bool
  func canDragRows(with rowIndexes: IndexSet, at mouseDownPoint: NSPoint) -> Bool
  func dragImageForRows(with dragRows: IndexSet, tableColumns: [NSTableColumn], event dragEvent: NSEvent, offset dragImageOffset: NSPointPointer) -> NSImage
  func setDraggingSourceOperationMask(_ mask: NSDragOperation, forLocal isLocal: Bool)
  func setDropRow(_ row: Int, dropOperation: NSTableView.DropOperation)
  var allowsMultipleSelection: Bool
  var allowsEmptySelection: Bool
  var allowsColumnSelection: Bool
  func deselectAll(_ sender: Any?)
  func selectColumnIndexes(_ indexes: IndexSet, byExtendingSelection extend: Bool)
  func selectRowIndexes(_ indexes: IndexSet, byExtendingSelection extend: Bool)
  var selectedColumnIndexes: IndexSet { get }
  var selectedRowIndexes: IndexSet { get }
  func deselectColumn(_ column: Int)
  func deselectRow(_ row: Int)
  var selectedColumn: Int { get }
  var selectedRow: Int { get }
  func isColumnSelected(_ column: Int) -> Bool
  func isRowSelected(_ row: Int) -> Bool
  var numberOfSelectedColumns: Int { get }
  var numberOfSelectedRows: Int { get }
  @available(macOS 10.5, *)
  var allowsTypeSelect: Bool
  @available(macOS 11.0, *)
  var style: NSTableView.Style
  @available(macOS 11.0, *)
  var effectiveStyle: NSTableView.Style { get }
  @available(macOS 10.5, *)
  var selectionHighlightStyle: NSTableView.SelectionHighlightStyle
  @available(macOS 10.6, *)
  var draggingDestinationFeedbackStyle: NSTableView.DraggingDestinationFeedbackStyle
  func rect(ofColumn column: Int) -> NSRect
  func rect(ofRow row: Int) -> NSRect
  @available(macOS 10.5, *)
  func columnIndexes(in rect: NSRect) -> IndexSet
  func rows(in rect: NSRect) -> NSRange
  func column(at point: NSPoint) -> Int
  func row(at point: NSPoint) -> Int
  func frameOfCell(atColumn column: Int, row: Int) -> NSRect
  var autosaveName: NSTableView.AutosaveName?
  var autosaveTableColumns: Bool
  func editColumn(_ column: Int, row: Int, with event: NSEvent?, select: Bool)
  func drawRow(_ row: Int, clipRect: NSRect)
  func highlightSelection(inClipRect clipRect: NSRect)
  func drawGrid(inClipRect clipRect: NSRect)
  func drawBackground(inClipRect clipRect: NSRect)
  @available(macOS 10.7, *)
  func view(atColumn column: Int, row: Int, makeIfNecessary: Bool) -> NSView?
  @available(macOS 10.7, *)
  func rowView(atRow row: Int, makeIfNecessary: Bool) -> NSTableRowView?
  @available(macOS 10.7, *)
  func row(for view: NSView) -> Int
  @available(macOS 10.7, *)
  func column(for view: NSView) -> Int
  @available(macOS 10.7, *)
  func makeView(withIdentifier identifier: NSUserInterfaceItemIdentifier, owner: Any?) -> NSView?
  @available(macOS 10.7, *)
  func enumerateAvailableRowViews(_ handler: (NSTableRowView, Int) -> Void)
  @available(macOS 10.7, *)
  var floatsGroupRows: Bool
  @available(macOS 10.11, *)
  var rowActionsVisible: Bool
  @available(macOS 10.7, *)
  func beginUpdates()
  @available(macOS 10.7, *)
  func endUpdates()
  @available(macOS 10.7, *)
  func insertRows(at indexes: IndexSet, withAnimation animationOptions: NSTableView.AnimationOptions = [])
  @available(macOS 10.7, *)
  func removeRows(at indexes: IndexSet, withAnimation animationOptions: NSTableView.AnimationOptions = [])
  @available(macOS 10.7, *)
  func moveRow(at oldIndex: Int, to newIndex: Int)
  @available(macOS 10.11, *)
  func hideRows(at indexes: IndexSet, withAnimation rowAnimation: NSTableView.AnimationOptions = [])
  @available(macOS 10.11, *)
  func unhideRows(at indexes: IndexSet, withAnimation rowAnimation: NSTableView.AnimationOptions = [])
  @available(macOS 10.11, *)
  var hiddenRowIndexes: IndexSet { get }
  @available(macOS 10.8, *)
  func register(_ nib: NSNib?, forIdentifier identifier: NSUserInterfaceItemIdentifier)
  @available(macOS 10.8, *)
  var registeredNibsByIdentifier: [NSUserInterfaceItemIdentifier : NSNib]? { get }
  @available(macOS 10.7, *)
  func didAdd(_ rowView: NSTableRowView, forRow row: Int)
  @available(macOS 10.7, *)
  func didRemove(_ rowView: NSTableRowView, forRow row: Int)
  @available(macOS 10.10, *)
  var usesStaticContents: Bool
  @available(macOS 10.13, *)
  var usesAutomaticRowHeights: Bool
}
protocol NSTableViewDelegate : NSControlTextEditingDelegate {
  @available(macOS 10.7, *)
  optional func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView?
  @available(macOS 10.7, *)
  optional func tableView(_ tableView: NSTableView, rowViewForRow row: Int) -> NSTableRowView?
  @available(macOS 10.7, *)
  @asyncHandler optional func tableView(_ tableView: NSTableView, didAdd rowView: NSTableRowView, forRow row: Int)
  @available(macOS 10.7, *)
  @asyncHandler optional func tableView(_ tableView: NSTableView, didRemove rowView: NSTableRowView, forRow row: Int)
  optional func tableView(_ tableView: NSTableView, willDisplayCell cell: Any, for tableColumn: NSTableColumn?, row: Int)
  optional func tableView(_ tableView: NSTableView, shouldEdit tableColumn: NSTableColumn?, row: Int) -> Bool
  optional func tableView(_ tableView: NSTableView, toolTipFor cell: NSCell, rect: NSRectPointer, tableColumn: NSTableColumn?, row: Int, mouseLocation: NSPoint) -> String
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldShowCellExpansionFor tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldTrackCell cell: NSCell, for tableColumn: NSTableColumn?, row: Int) -> Bool
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, dataCellFor tableColumn: NSTableColumn?, row: Int) -> NSCell?
  optional func selectionShouldChange(in tableView: NSTableView) -> Bool
  optional func tableView(_ tableView: NSTableView, shouldSelectRow row: Int) -> Bool
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, selectionIndexesForProposedSelection proposedSelectionIndexes: IndexSet) -> IndexSet
  optional func tableView(_ tableView: NSTableView, shouldSelect tableColumn: NSTableColumn?) -> Bool
  optional func tableView(_ tableView: NSTableView, mouseDownInHeaderOf tableColumn: NSTableColumn)
  @asyncHandler optional func tableView(_ tableView: NSTableView, didClick tableColumn: NSTableColumn)
  @asyncHandler optional func tableView(_ tableView: NSTableView, didDrag tableColumn: NSTableColumn)
  optional func tableView(_ tableView: NSTableView, heightOfRow row: Int) -> CGFloat
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, typeSelectStringFor tableColumn: NSTableColumn?, row: Int) -> String?
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, nextTypeSelectMatchFromRow startRow: Int, toRow endRow: Int, for searchString: String) -> Int
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, shouldTypeSelectFor event: NSEvent, withCurrentSearch searchString: String?) -> Bool
  @available(macOS 10.5, *)
  optional func tableView(_ tableView: NSTableView, isGroupRow row: Int) -> Bool
  @available(macOS 10.6, *)
  optional func tableView(_ tableView: NSTableView, sizeToFitWidthOfColumn column: Int) -> CGFloat
  @available(macOS 10.6, *)
  optional func tableView(_ tableView: NSTableView, shouldReorderColumn columnIndex: Int, toColumn newColumnIndex: Int) -> Bool
  @available(macOS 10.11, *)
  optional func tableView(_ tableView: NSTableView, rowActionsForRow row: Int, edge: NSTableView.RowActionEdge) -> [NSTableViewRowAction]
  @asyncHandler optional func tableViewSelectionDidChange(_ notification: Notification)
  @asyncHandler optional func tableViewColumnDidMove(_ notification: Notification)
  @asyncHandler optional func tableViewColumnDidResize(_ notification: Notification)
  optional func tableViewSelectionIsChanging(_ notification: Notification)
}
protocol NSTableViewDataSource : NSObjectProtocol {
  optional func numberOfRows(in tableView: NSTableView) -> Int
  optional func tableView(_ tableView: NSTableView, objectValueFor tableColumn: NSTableColumn?, row: Int) -> Any?
  optional func tableView(_ tableView: NSTableView, setObjectValue object: Any?, for tableColumn: NSTableColumn?, row: Int)
  optional func tableView(_ tableView: NSTableView, sortDescriptorsDidChange oldDescriptors: [NSSortDescriptor])
  @available(macOS 10.7, *)
  optional func tableView(_ tableView: NSTableView, pasteboardWriterForRow row: Int) -> NSPasteboardWriting?
  @available(macOS 10.7, *)
  optional func tableView(_ tableView: NSTableView, draggingSession session: NSDraggingSession, willBeginAt screenPoint: NSPoint, forRowIndexes rowIndexes: IndexSet)
  @available(macOS 10.7, *)
  optional func tableView(_ tableView: NSTableView, draggingSession session: NSDraggingSession, endedAt screenPoint: NSPoint, operation: NSDragOperation)
  @available(macOS 10.7, *)
  optional func tableView(_ tableView: NSTableView, updateDraggingItemsForDrag draggingInfo: NSDraggingInfo)
  @available(macOS, introduced: 10.4, deprecated: 10.15, message: "Use -tableView:pasteboardWriterForRow: instead")
  optional func tableView(_ tableView: NSTableView, writeRowsWith rowIndexes: IndexSet, to pboard: NSPasteboard) -> Bool
  optional func tableView(_ tableView: NSTableView, validateDrop info: NSDraggingInfo, proposedRow row: Int, proposedDropOperation dropOperation: NSTableView.DropOperation) -> NSDragOperation
  optional func tableView(_ tableView: NSTableView, acceptDrop info: NSDraggingInfo, row: Int, dropOperation: NSTableView.DropOperation) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use NSFilePromiseReceiver objects instead")
  optional func tableView(_ tableView: NSTableView, namesOfPromisedFilesDroppedAtDestination dropDestination: URL, forDraggedRowsWith indexSet: IndexSet) -> [String]
}
extension NSObject {
}
extension NSTableView {
  @available(macOS, introduced: 10.5, deprecated: 10.10, message: "Use View Based TableView and -viewAtColumn:row:")
  func preparedCell(atColumn column: Int, row: Int) -> NSCell?
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use a View Based TableView; observe the window’s firstResponder for focus change notifications")
  func shouldFocusCell(_ cell: NSCell, atColumn column: Int, row: Int) -> Bool
  @available(macOS, introduced: 10.5, deprecated: 10.10, message: "Use a View Based TableView and observe the window.firstResponder")
  func focusedColumn() -> Int
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use a View Based TableView; make a particular view the first responder with [window makeFirstResponder:view] to focus it.")
  func setFocusedColumn(_ focusedColumn: Int)
  @available(macOS, introduced: 10.6, deprecated: 10.10, message: "Use a View Based TableView; directly interact with a particular view as required and call -performClick: on it, if necessary")
  func performClickOnCell(atColumn column: Int, row: Int)
}
