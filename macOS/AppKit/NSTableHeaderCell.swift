
class NSTableHeaderCell : NSTextFieldCell {
  func drawSortIndicator(withFrame cellFrame: NSRect, in controlView: NSView, ascending: Bool, priority: Int)
  func sortIndicatorRect(forBounds rect: NSRect) -> NSRect
}
