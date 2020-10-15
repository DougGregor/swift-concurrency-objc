
extension NSView {
  struct AutoresizingMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var none: NSView.AutoresizingMask { get }
    static var minXMargin: NSView.AutoresizingMask { get }
    static var width: NSView.AutoresizingMask { get }
    static var maxXMargin: NSView.AutoresizingMask { get }
    static var minYMargin: NSView.AutoresizingMask { get }
    static var height: NSView.AutoresizingMask { get }
    static var maxYMargin: NSView.AutoresizingMask { get }
  }
  @available(macOS 10.6, *)
  enum LayerContentsRedrawPolicy : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case never
    case onSetNeedsDisplay
    case duringViewResize
    case beforeViewResize
    @available(macOS 10.9, *)
    case crossfade
  }
  @available(macOS 10.6, *)
  enum LayerContentsPlacement : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case scaleAxesIndependently
    case scaleProportionallyToFit
    case scaleProportionallyToFill
    case center
    case top
    case topRight
    case right
    case bottomRight
    case bottom
    case bottomLeft
    case left
    case topLeft
  }
  typealias TrackingRectTag = Int
  typealias ToolTipTag = Int
  struct FullScreenModeOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct DefinitionOptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct DefinitionPresentationType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  class let frameDidChangeNotification: NSNotification.Name
  class let boundsDidChangeNotification: NSNotification.Name
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use NSOpenGLView instead.")
  class let globalFrameDidChangeNotification: NSNotification.Name
  @available(macOS 10.5, *)
  class let didUpdateTrackingAreasNotification: NSNotification.Name
}
enum NSBorderType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noBorder
  case lineBorder
  case bezelBorder
  case grooveBorder
}
class NSView : NSResponder, NSAnimatablePropertyContainer, NSUserInterfaceItemIdentification, NSDraggingDestination, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  init(frame frameRect: NSRect)
  unowned(unsafe) var window: @sil_unmanaged NSWindow? { get }
  unowned(unsafe) var superview: @sil_unmanaged NSView? { get }
  var subviews: [NSView]
  func isDescendant(of view: NSView) -> Bool
  func ancestorShared(with view: NSView) -> NSView?
  unowned(unsafe) var opaqueAncestor: @sil_unmanaged NSView? { get }
  var isHidden: Bool
  var isHiddenOrHasHiddenAncestor: Bool { get }
  func getRectsBeingDrawn(_ rects: UnsafeMutablePointer<UnsafePointer<NSRect>?>?, count: UnsafeMutablePointer<Int>?)
  func needsToDraw(_ rect: NSRect) -> Bool
  var wantsDefaultClipping: Bool { get }
  @available(macOS 10.5, *)
  func viewDidHide()
  @available(macOS 10.5, *)
  func viewDidUnhide()
  func addSubview(_ view: NSView)
  func addSubview(_ view: NSView, positioned place: NSWindow.OrderingMode, relativeTo otherView: NSView?)
  func sortSubviews(_ compare: @convention(c) (NSView, NSView, UnsafeMutableRawPointer?) -> ComparisonResult, context: UnsafeMutableRawPointer?)
  func viewWillMove(toWindow newWindow: NSWindow?)
  func viewDidMoveToWindow()
  func viewWillMove(toSuperview newSuperview: NSView?)
  func viewDidMoveToSuperview()
  func didAddSubview(_ subview: NSView)
  func willRemoveSubview(_ subview: NSView)
  func removeFromSuperview()
  func replaceSubview(_ oldView: NSView, with newView: NSView)
  func removeFromSuperviewWithoutNeedingDisplay()
  @available(macOS 10.7, *)
  func viewDidChangeBackingProperties()
  var postsFrameChangedNotifications: Bool
  func resizeSubviews(withOldSize oldSize: NSSize)
  func resize(withOldSuperviewSize oldSize: NSSize)
  var autoresizesSubviews: Bool
  var autoresizingMask: NSView.AutoresizingMask
  func setFrameOrigin(_ newOrigin: NSPoint)
  func setFrameSize(_ newSize: NSSize)
  var frame: NSRect
  var frameRotation: CGFloat
  @available(macOS 10.5, *)
  var frameCenterRotation: CGFloat
  func setBoundsOrigin(_ newOrigin: NSPoint)
  func setBoundsSize(_ newSize: NSSize)
  var boundsRotation: CGFloat
  func translateOrigin(to translation: NSPoint)
  func scaleUnitSquare(to newUnitSize: NSSize)
  func rotate(byDegrees angle: CGFloat)
  var bounds: NSRect
  var isFlipped: Bool { get }
  var isRotatedFromBase: Bool { get }
  var isRotatedOrScaledFromBase: Bool { get }
  var isOpaque: Bool { get }
  func convert(_ point: NSPoint, from view: NSView?) -> NSPoint
  func convert(_ point: NSPoint, to view: NSView?) -> NSPoint
  func convert(_ size: NSSize, from view: NSView?) -> NSSize
  func convert(_ size: NSSize, to view: NSView?) -> NSSize
  func convert(_ rect: NSRect, from view: NSView?) -> NSRect
  func convert(_ rect: NSRect, to view: NSView?) -> NSRect
  @available(macOS 10.7, *)
  func backingAlignedRect(_ rect: NSRect, options: AlignmentOptions = []) -> NSRect
  func centerScanRect(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertToBacking(_ point: NSPoint) -> NSPoint
  @available(macOS 10.7, *)
  func convertFromBacking(_ point: NSPoint) -> NSPoint
  @available(macOS 10.7, *)
  func convertToBacking(_ size: NSSize) -> NSSize
  @available(macOS 10.7, *)
  func convertFromBacking(_ size: NSSize) -> NSSize
  @available(macOS 10.7, *)
  func convertToBacking(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertFromBacking(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertToLayer(_ point: NSPoint) -> NSPoint
  @available(macOS 10.7, *)
  func convertFromLayer(_ point: NSPoint) -> NSPoint
  @available(macOS 10.7, *)
  func convertToLayer(_ size: NSSize) -> NSSize
  @available(macOS 10.7, *)
  func convertFromLayer(_ size: NSSize) -> NSSize
  @available(macOS 10.7, *)
  func convertToLayer(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertFromLayer(_ rect: NSRect) -> NSRect
  @available(macOS 10.6, *)
  var canDrawConcurrently: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "If a view needs display, -drawRect: or -updateLayer will be called automatically when the view is able to draw.  To check whether a view is in a window, call -window.  To check whether a view is hidden, call -isHiddenOrHasHiddenAncestor.")
  var canDraw: Bool { get }
  func setNeedsDisplay(_ invalidRect: NSRect)
  var needsDisplay: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "To draw, subclass NSView and implement -drawRect:; AppKit's automatic deferred display mechanism will call -drawRect: as necessary to display the view.")
  func lockFocus()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "To draw, subclass NSView and implement -drawRect:; AppKit's automatic deferred display mechanism will call -drawRect: as necessary to display the view.")
  func unlockFocus()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "To draw, subclass NSView and implement -drawRect:; AppKit's automatic deferred display mechanism will call -drawRect: as necessary to display the view.")
  func lockFocusIfCanDraw() -> Bool
  @available(macOS, introduced: 10.4, deprecated: 10.13, message: "Use -[NSView displayRectIgnoringOpacity:inContext:] to draw a view subtree into a graphics context.")
  func lockFocusIfCanDraw(in context: NSGraphicsContext) -> Bool
  class var focusView: NSView? { get }
  var visibleRect: NSRect { get }
  func display()
  func displayIfNeeded()
  func displayIfNeededIgnoringOpacity()
  func display(_ rect: NSRect)
  func displayIfNeeded(_ rect: NSRect)
  func displayIgnoringOpacity(_ rect: NSRect)
  func displayIfNeededIgnoringOpacity(_ rect: NSRect)
  func draw(_ dirtyRect: NSRect)
  func displayIgnoringOpacity(_ rect: NSRect, in context: NSGraphicsContext)
  func bitmapImageRepForCachingDisplay(in rect: NSRect) -> NSBitmapImageRep?
  func cacheDisplay(in rect: NSRect, to bitmapImageRep: NSBitmapImageRep)
  @available(macOS 10.5, *)
  func viewWillDraw()
  func scroll(_ point: NSPoint)
  func scrollToVisible(_ rect: NSRect) -> Bool
  func autoscroll(with event: NSEvent) -> Bool
  func adjustScroll(_ newVisible: NSRect) -> NSRect
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use NSScrollView to achieve scrolling views.")
  func scroll(_ rect: NSRect, by delta: NSSize)
  @available(macOS 10.5, *)
  func translateRectsNeedingDisplay(in clipRect: NSRect, by delta: NSSize)
  func hitTest(_ point: NSPoint) -> NSView?
  func isMousePoint(_ point: NSPoint, in rect: NSRect) -> Bool
  func viewWithTag(_ tag: Int) -> NSView?
  var tag: Int { get }
  func acceptsFirstMouse(for event: NSEvent?) -> Bool
  func shouldDelayWindowOrdering(for event: NSEvent) -> Bool
  var needsPanelToBecomeKey: Bool { get }
  var mouseDownCanMoveWindow: Bool { get }
  @available(macOS, introduced: 10.6, deprecated: 10.12.2, message: "Use allowedTouchTypes instead")
  var acceptsTouchEvents: Bool
  @available(macOS 10.6, *)
  var wantsRestingTouches: Bool
  func addCursorRect(_ rect: NSRect, cursor object: NSCursor)
  func removeCursorRect(_ rect: NSRect, cursor object: NSCursor)
  func discardCursorRects()
  func resetCursorRects()
  func addTrackingRect(_ rect: NSRect, owner: Any, userData data: UnsafeMutableRawPointer?, assumeInside flag: Bool) -> NSView.TrackingRectTag
  func removeTrackingRect(_ tag: NSView.TrackingRectTag)
  @available(macOS 10.6, *)
  func makeBackingLayer() -> CALayer
  @available(macOS 10.6, *)
  var layerContentsRedrawPolicy: NSView.LayerContentsRedrawPolicy
  @available(macOS 10.6, *)
  var layerContentsPlacement: NSView.LayerContentsPlacement
  @available(macOS 10.5, *)
  var wantsLayer: Bool
  @available(macOS 10.5, *)
  var layer: CALayer?
  @available(macOS 10.8, *)
  var wantsUpdateLayer: Bool { get }
  @available(macOS 10.8, *)
  func updateLayer()
  @available(macOS 10.9, *)
  var canDrawSubviewsIntoLayer: Bool
  @available(macOS 10.7, *)
  func layoutSubtreeIfNeeded()
  @available(macOS 10.7, *)
  func layout()
  @available(macOS 10.7, *)
  var needsLayout: Bool
  @available(macOS 10.5, *)
  var alphaValue: CGFloat
  @available(macOS 10.9, *)
  var layerUsesCoreImageFilters: Bool
  @available(macOS 10.5, *)
  var backgroundFilters: [CIFilter]
  @available(macOS 10.5, *)
  var compositingFilter: CIFilter?
  @available(macOS 10.5, *)
  var contentFilters: [CIFilter]
  @available(macOS 10.5, *)
  @NSCopying var shadow: NSShadow?
  @available(macOS 10.5, *)
  func addTrackingArea(_ trackingArea: NSTrackingArea)
  @available(macOS 10.5, *)
  func removeTrackingArea(_ trackingArea: NSTrackingArea)
  @available(macOS 10.5, *)
  var trackingAreas: [NSTrackingArea] { get }
  @available(macOS 10.5, *)
  func updateTrackingAreas()
  var postsBoundsChangedNotifications: Bool
  var enclosingScrollView: NSScrollView? { get }
  func menu(for event: NSEvent) -> NSMenu?
  class var defaultMenu: NSMenu? { get }
  @available(macOS 10.11, *)
  func willOpenMenu(_ menu: NSMenu, with event: NSEvent)
  @available(macOS 10.11, *)
  func didCloseMenu(_ menu: NSMenu, with event: NSEvent?)
  var toolTip: String?
  func addToolTip(_ rect: NSRect, owner: Any, userData data: UnsafeMutableRawPointer?) -> NSView.ToolTipTag
  func removeToolTip(_ tag: NSView.ToolTipTag)
  func removeAllToolTips()
  func viewWillStartLiveResize()
  func viewDidEndLiveResize()
  var inLiveResize: Bool { get }
  var preservesContentDuringLiveResize: Bool { get }
  var rectPreservedDuringLiveResize: NSRect { get }
  func getRectsExposedDuringLiveResize(_ exposedRects: UnsafeMutablePointer<NSRect>, count: UnsafeMutablePointer<Int>)
  @available(macOS 10.6, *)
  var inputContext: NSTextInputContext? { get }
  @available(macOS 10.8, *)
  func rectForSmartMagnification(at location: NSPoint, in visibleRect: NSRect) -> NSRect
  @available(macOS 10.8, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(macOS 10.7, *)
  func prepareForReuse()
  @available(macOS 10.9, *)
  class var isCompatibleWithResponsiveScrolling: Bool { get }
  @available(macOS 10.9, *)
  func prepareContent(in rect: NSRect)
  @available(macOS 10.9, *)
  var preparedContentRect: NSRect
  @available(macOS 10.10, *)
  var allowsVibrancy: Bool { get }
  @available(macOS 10.14, *)
  func viewDidChangeEffectiveAppearance()
}

extension NSView : __DefaultCustomPlaygroundQuickLookable {
}
protocol NSViewLayerContentScaleDelegate : NSObjectProtocol {
  @available(macOS 10.7, *)
  optional func layer(_ layer: CALayer, shouldInheritContentsScale newScale: CGFloat, from window: NSWindow) -> Bool
}
protocol NSViewToolTipOwner : NSObjectProtocol {
  func view(_ view: NSView, stringForToolTip tag: NSView.ToolTipTag, point: NSPoint, userData data: UnsafeMutableRawPointer?) -> String
}
extension NSView {
  unowned(unsafe) var nextKeyView: @sil_unmanaged NSView?
  unowned(unsafe) var previousKeyView: @sil_unmanaged NSView? { get }
  unowned(unsafe) var nextValidKeyView: @sil_unmanaged NSView? { get }
  unowned(unsafe) var previousValidKeyView: @sil_unmanaged NSView? { get }
  var canBecomeKeyView: Bool { get }
  func setKeyboardFocusRingNeedsDisplay(_ rect: NSRect)
  var focusRingType: NSFocusRingType
  class var defaultFocusRingType: NSFocusRingType { get }
  @available(macOS 10.7, *)
  func drawFocusRingMask()
  @available(macOS 10.7, *)
  var focusRingMaskBounds: NSRect { get }
  @available(macOS 10.7, *)
  func noteFocusRingMaskChanged()
}
extension NSView {
  func writeEPS(inside rect: NSRect, to pasteboard: NSPasteboard)
  func dataWithEPS(inside rect: NSRect) -> Data
  func writePDF(inside rect: NSRect, to pasteboard: NSPasteboard)
  func dataWithPDF(inside rect: NSRect) -> Data
  func printView(_ sender: Any?)
  func knowsPageRange(_ range: NSRangePointer) -> Bool
  var heightAdjustLimit: CGFloat { get }
  var widthAdjustLimit: CGFloat { get }
  func adjustPageWidthNew(_ newRight: UnsafeMutablePointer<CGFloat>, left oldLeft: CGFloat, right oldRight: CGFloat, limit rightLimit: CGFloat)
  func adjustPageHeightNew(_ newBottom: UnsafeMutablePointer<CGFloat>, top oldTop: CGFloat, bottom oldBottom: CGFloat, limit bottomLimit: CGFloat)
  func rectForPage(_ page: Int) -> NSRect
  func locationOfPrintRect(_ rect: NSRect) -> NSPoint
  func drawPageBorder(with borderSize: NSSize)
  @NSCopying var pageHeader: NSAttributedString { get }
  @NSCopying var pageFooter: NSAttributedString { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "This is never invoked and the NSView implementation does nothing")
  func drawSheetBorder(with borderSize: NSSize)
  var printJobTitle: String { get }
  func beginDocument()
  func endDocument()
  func beginPage(in rect: NSRect, atPlacement location: NSPoint)
  func endPage()
}
extension NSView {
  @available(macOS 10.7, *)
  func beginDraggingSession(with items: [NSDraggingItem], event: NSEvent, source: NSDraggingSource) -> NSDraggingSession
  var registeredDraggedTypes: [NSPasteboard.PasteboardType] { get }
  func registerForDraggedTypes(_ newTypes: [NSPasteboard.PasteboardType])
  func unregisterDraggedTypes()
}
extension NSView.FullScreenModeOptionKey {
  @available(macOS 10.5, *)
  static let fullScreenModeAllScreens: NSView.FullScreenModeOptionKey
  @available(macOS 10.5, *)
  static let fullScreenModeSetting: NSView.FullScreenModeOptionKey
  @available(macOS 10.5, *)
  static let fullScreenModeWindowLevel: NSView.FullScreenModeOptionKey
  @available(macOS 10.5, *)
  static let fullScreenModeApplicationPresentationOptions: NSView.FullScreenModeOptionKey
}
extension NSView {
  @available(macOS 10.5, *)
  func enterFullScreenMode(_ screen: NSScreen, withOptions options: [NSView.FullScreenModeOptionKey : Any]? = nil) -> Bool
  @available(macOS 10.5, *)
  func exitFullScreenMode(options: [NSView.FullScreenModeOptionKey : Any]? = nil)
  @available(macOS 10.5, *)
  var isInFullScreenMode: Bool { get }
}
extension NSView.DefinitionOptionKey {
  @available(macOS 10.6, *)
  static let presentationType: NSView.DefinitionOptionKey
}
extension NSView.DefinitionPresentationType {
  @available(macOS 10.6, *)
  static let overlay: NSView.DefinitionPresentationType
  @available(macOS 10.6, *)
  static let dictionaryApplication: NSView.DefinitionPresentationType
}
extension NSView {
  @available(macOS 10.6, *)
  func showDefinition(for attrString: NSAttributedString?, at textBaselineOrigin: NSPoint)
  @available(macOS 10.6, *)
  func showDefinition(for attrString: NSAttributedString?, range targetRange: NSRange, options: [NSView.DefinitionOptionKey : Any]? = nil, baselineOriginProvider originProvider: ((NSRange) -> NSPoint)? = nil)
}
extension NSView {
  @available(macOS 10.7, *)
  var isDrawingFindIndicator: Bool { get }
}
extension NSView {
  @available(macOS 10.10, *)
  var gestureRecognizers: [NSGestureRecognizer]
  @available(macOS 10.10, *)
  func addGestureRecognizer(_ gestureRecognizer: NSGestureRecognizer)
  @available(macOS 10.10, *)
  func removeGestureRecognizer(_ gestureRecognizer: NSGestureRecognizer)
}
extension NSView {
  @available(macOS 10.12.2, *)
  var allowedTouchTypes: NSTouch.TouchTypeMask
}
extension NSView {
  @available(macOS 11.0, *)
  var safeAreaInsets: NSEdgeInsets { get }
  @available(macOS 11.0, *)
  var additionalSafeAreaInsets: NSEdgeInsets
  @available(macOS 11.0, *)
  var safeAreaLayoutGuide: NSLayoutGuide { get }
  @available(macOS 11.0, *)
  var safeAreaRect: NSRect { get }
  @available(macOS 11.0, *)
  var layoutMarginsGuide: NSLayoutGuide { get }
}
extension NSView {
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use -beginDraggingSessionWithItems:event:source: instead")
  func dragFile(_ filename: String, from rect: NSRect, slideBack flag: Bool, event: NSEvent) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "Use -beginDraggingSessionWithItems:event:source: with an NSFilePromiseProvider instead")
  func dragPromisedFiles(ofTypes typeArray: [String], from rect: NSRect, source sourceObject: Any, slideBack flag: Bool, event: NSEvent) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "This method no longer does anything")
  func shouldDrawColor() -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  func gState() -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  func allocateGState()
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  func releaseGState()
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  func setUpGState()
  @available(macOS, introduced: 10.0, deprecated: 10.10)
  func renewGState()
}
