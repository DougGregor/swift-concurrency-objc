
class NSClipView : NSView {
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  var documentView: NSView?
  var documentRect: NSRect { get }
  var documentCursor: NSCursor?
  var documentVisibleRect: NSRect { get }
  func viewFrameChanged(_ notification: Notification)
  func viewBoundsChanged(_ notification: Notification)
  func scroll(to newOrigin: NSPoint)
  @available(macOS 10.9, *)
  func constrainBoundsRect(_ proposedBounds: NSRect) -> NSRect
  @available(macOS 10.10, *)
  var contentInsets: NSEdgeInsets
  @available(macOS 10.10, *)
  var automaticallyAdjustsContentInsets: Bool
}
extension NSView {
  func reflectScrolledClipView(_ clipView: NSClipView)
  func scroll(_ clipView: NSClipView, to point: NSPoint)
}
extension NSClipView {
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use -constrainBoundsRect: instead.")
  func constrainScroll(_ newOrigin: NSPoint) -> NSPoint
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Setting this property has no effect.  NSClipView will always minimize the area of the document view that is invalidated.  To force invalidation of the document view, use -[NSView setNeedsDisplayInRect:].")
  var copiesOnScroll: Bool
}
