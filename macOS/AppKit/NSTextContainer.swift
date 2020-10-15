
@available(macOS 10.0, *)
class NSTextContainer : NSObject, NSSecureCoding, NSTextLayoutOrientationProvider {
  @available(macOS 10.11, *)
  init(size: NSSize)
  unowned(unsafe) var layoutManager: @sil_unmanaged NSLayoutManager?
  @available(macOS 10.0, *)
  func replaceLayoutManager(_ newLayoutManager: NSLayoutManager)
  @available(macOS 10.11, *)
  var size: NSSize
  @available(macOS 10.11, *)
  var exclusionPaths: [NSBezierPath]
  @available(macOS 10.11, *)
  var lineBreakMode: NSLineBreakMode
  var lineFragmentPadding: CGFloat
  @available(macOS 10.11, *)
  var maximumNumberOfLines: Int
  @available(macOS 10.11, *)
  func lineFragmentRect(forProposedRect proposedRect: NSRect, at characterIndex: Int, writingDirection baseWritingDirection: NSWritingDirection, remaining remainingRect: UnsafeMutablePointer<NSRect>?) -> NSRect
  @available(macOS 10.0, *)
  var isSimpleRectangularTextContainer: Bool { get }
  var widthTracksTextView: Bool
  var heightTracksTextView: Bool
  var textView: NSTextView?
}
extension NSTextContainer {
  convenience init(containerSize aContainerSize: NSSize)
  var containerSize: NSSize
  func lineFragmentRect(forProposedRect proposedRect: NSRect, sweepDirection: NSLineSweepDirection, movementDirection: NSLineMovementDirection, remaining remainingRect: NSRectPointer?) -> NSRect
  @available(macOS, introduced: 10.0, deprecated: 10.11)
  func contains(_ point: NSPoint) -> Bool
}
