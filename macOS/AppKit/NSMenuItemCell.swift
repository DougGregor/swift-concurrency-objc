
class NSMenuItemCell : NSButtonCell {
  var menuItem: NSMenuItem?
  var needsSizing: Bool
  func calcSize()
  var needsDisplay: Bool
  var stateImageWidth: CGFloat { get }
  var imageWidth: CGFloat { get }
  var titleWidth: CGFloat { get }
  var keyEquivalentWidth: CGFloat { get }
  func stateImageRect(forBounds cellFrame: NSRect) -> NSRect
  func keyEquivalentRect(forBounds cellFrame: NSRect) -> NSRect
  func drawSeparatorItem(withFrame cellFrame: NSRect, in controlView: NSView)
  func drawStateImage(withFrame cellFrame: NSRect, in controlView: NSView)
  func drawImage(withFrame cellFrame: NSRect, in controlView: NSView)
  func drawTitle(withFrame cellFrame: NSRect, in controlView: NSView)
  func drawKeyEquivalent(withFrame cellFrame: NSRect, in controlView: NSView)
  func drawBorderAndBackground(withFrame cellFrame: NSRect, in controlView: NSView)
}
