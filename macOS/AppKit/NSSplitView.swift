
class NSSplitView : NSView {
  var isVertical: Bool
  @available(macOS 10.5, *)
  var dividerStyle: NSSplitView.DividerStyle
  @available(macOS 10.5, *)
  var autosaveName: NSSplitView.AutosaveName?
  weak var delegate: @sil_weak NSSplitViewDelegate?
  func drawDivider(in rect: NSRect)
  @available(macOS 10.5, *)
  @NSCopying var dividerColor: NSColor { get }
  var dividerThickness: CGFloat { get }
  func adjustSubviews()
  func isSubviewCollapsed(_ subview: NSView) -> Bool
  @available(macOS 10.5, *)
  func minPossiblePositionOfDivider(at dividerIndex: Int) -> CGFloat
  @available(macOS 10.5, *)
  func maxPossiblePositionOfDivider(at dividerIndex: Int) -> CGFloat
  @available(macOS 10.5, *)
  func setPosition(_ position: CGFloat, ofDividerAt dividerIndex: Int)
  @available(macOS 10.8, *)
  func holdingPriorityForSubview(at subviewIndex: Int) -> NSLayoutConstraint.Priority
  @available(macOS 10.8, *)
  func setHoldingPriority(_ priority: NSLayoutConstraint.Priority, forSubviewAt subviewIndex: Int)
}
extension NSSplitView {
  @available(macOS 10.11, *)
  var arrangesAllSubviews: Bool
  @available(macOS 10.11, *)
  var arrangedSubviews: [NSView] { get }
  @available(macOS 10.11, *)
  func addArrangedSubview(_ view: NSView)
  @available(macOS 10.11, *)
  func insertArrangedSubview(_ view: NSView, at index: Int)
  @available(macOS 10.11, *)
  func removeArrangedSubview(_ view: NSView)
}
protocol NSSplitViewDelegate : NSObjectProtocol {
  optional func splitView(_ splitView: NSSplitView, canCollapseSubview subview: NSView) -> Bool
  @available(macOS, introduced: 10.5, deprecated: 10.15, message: "NSSplitView no longer supports collapsing sections via double-click. This delegate method is never called.")
  optional func splitView(_ splitView: NSSplitView, shouldCollapseSubview subview: NSView, forDoubleClickOnDividerAt dividerIndex: Int) -> Bool
  optional func splitView(_ splitView: NSSplitView, constrainMinCoordinate proposedMinimumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(_ splitView: NSSplitView, constrainMaxCoordinate proposedMaximumPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(_ splitView: NSSplitView, constrainSplitPosition proposedPosition: CGFloat, ofSubviewAt dividerIndex: Int) -> CGFloat
  optional func splitView(_ splitView: NSSplitView, resizeSubviewsWithOldSize oldSize: NSSize)
  @available(macOS 10.6, *)
  optional func splitView(_ splitView: NSSplitView, shouldAdjustSizeOfSubview view: NSView) -> Bool
  @available(macOS 10.5, *)
  optional func splitView(_ splitView: NSSplitView, shouldHideDividerAt dividerIndex: Int) -> Bool
  @available(macOS 10.5, *)
  optional func splitView(_ splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect
  @available(macOS 10.5, *)
  optional func splitView(_ splitView: NSSplitView, additionalEffectiveRectOfDividerAt dividerIndex: Int) -> NSRect
  optional func splitViewWillResizeSubviews(_ notification: Notification)
  optional func splitViewDidResizeSubviews(_ notification: Notification)
}
extension NSSplitView {
  class let willResizeSubviewsNotification: NSNotification.Name
  class let didResizeSubviewsNotification: NSNotification.Name
  typealias AutosaveName = String
  @available(macOS 10.5, *)
  enum DividerStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case thick
    case thin
    @available(macOS 10.6, *)
    case paneSplitter
  }
}
extension NSSplitView {
}
