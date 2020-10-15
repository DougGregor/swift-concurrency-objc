
extension NSScrollView {
  @available(macOS 10.7, *)
  enum Elasticity : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case none
    case allowed
  }
  @available(macOS 10.8, *)
  class let willStartLiveMagnifyNotification: NSNotification.Name
  @available(macOS 10.8, *)
  class let didEndLiveMagnifyNotification: NSNotification.Name
  @available(macOS 10.9, *)
  class let willStartLiveScrollNotification: NSNotification.Name
  @available(macOS 10.9, *)
  class let didLiveScrollNotification: NSNotification.Name
  @available(macOS 10.9, *)
  class let didEndLiveScrollNotification: NSNotification.Name
  @available(macOS 10.7, *)
  enum FindBarPosition : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case aboveHorizontalRuler
    case aboveContent
    case belowContent
  }
}
class NSScrollView : NSView, NSTextFinderBarContainer {
  @available(macOS 10.7, *)
  class func frameSize(forContentSize cSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType type: NSBorderType, controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> NSSize
  @available(macOS 10.7, *)
  class func contentSize(forFrameSize fSize: NSSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType type: NSBorderType, controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> NSSize
  var documentVisibleRect: NSRect { get }
  var contentSize: NSSize { get }
  var documentView: NSView?
  var documentCursor: NSCursor?
  var borderType: NSBorderType
  @NSCopying var backgroundColor: NSColor
  var drawsBackground: Bool
  var hasVerticalScroller: Bool
  var hasHorizontalScroller: Bool
  var verticalScroller: NSScroller?
  var horizontalScroller: NSScroller?
  var autohidesScrollers: Bool
  var horizontalLineScroll: CGFloat
  var verticalLineScroll: CGFloat
  var lineScroll: CGFloat
  var horizontalPageScroll: CGFloat
  var verticalPageScroll: CGFloat
  var pageScroll: CGFloat
  var scrollsDynamically: Bool
  func tile()
  @available(macOS 10.7, *)
  var scrollerStyle: NSScroller.Style
  @available(macOS 10.7, *)
  var scrollerKnobStyle: NSScroller.KnobStyle
  @available(macOS 10.7, *)
  func flashScrollers()
  @available(macOS 10.7, *)
  var horizontalScrollElasticity: NSScrollView.Elasticity
  @available(macOS 10.7, *)
  var verticalScrollElasticity: NSScrollView.Elasticity
  @available(macOS 10.7, *)
  var usesPredominantAxisScrolling: Bool
  @available(macOS 10.8, *)
  var allowsMagnification: Bool
  @available(macOS 10.8, *)
  var magnification: CGFloat
  @available(macOS 10.8, *)
  var maxMagnification: CGFloat
  @available(macOS 10.8, *)
  var minMagnification: CGFloat
  @available(macOS 10.8, *)
  func magnify(toFit rect: NSRect)
  @available(macOS 10.8, *)
  func setMagnification(_ magnification: CGFloat, centeredAt point: NSPoint)
  @available(macOS 10.9, *)
  func addFloatingSubview(_ view: NSView, for axis: NSEvent.GestureAxis)
  @available(macOS 10.10, *)
  var automaticallyAdjustsContentInsets: Bool
  @available(macOS 10.10, *)
  var contentInsets: NSEdgeInsets
  @available(macOS 10.10, *)
  var scrollerInsets: NSEdgeInsets
}
extension NSScrollView {
  class var rulerViewClass: AnyClass!
  var rulersVisible: Bool
  var hasHorizontalRuler: Bool
  var hasVerticalRuler: Bool
  var horizontalRulerView: NSRulerView?
  var verticalRulerView: NSRulerView?
}
extension NSScrollView {
  @available(macOS 10.7, *)
  var findBarPosition: NSScrollView.FindBarPosition
}
