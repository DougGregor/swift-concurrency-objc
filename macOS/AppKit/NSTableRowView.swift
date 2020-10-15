
@available(macOS 10.7, *)
class NSTableRowView : NSView, NSAccessibilityRow {
  var selectionHighlightStyle: NSTableView.SelectionHighlightStyle
  var isEmphasized: Bool
  var isGroupRowStyle: Bool
  var isSelected: Bool
  @available(macOS 10.10, *)
  var isPreviousRowSelected: Bool
  var isNextRowSelected: Bool
  var isFloating: Bool
  var isTargetForDropOperation: Bool
  var draggingDestinationFeedbackStyle: NSTableView.DraggingDestinationFeedbackStyle
  var indentationForDropOperation: CGFloat
  var interiorBackgroundStyle: NSView.BackgroundStyle { get }
  @NSCopying var backgroundColor: NSColor
  func drawBackground(in dirtyRect: NSRect)
  func drawSelection(in dirtyRect: NSRect)
  func drawSeparator(in dirtyRect: NSRect)
  func drawDraggingDestinationFeedback(in dirtyRect: NSRect)
  func view(atColumn column: Int) -> Any?
  var numberOfColumns: Int { get }
}
