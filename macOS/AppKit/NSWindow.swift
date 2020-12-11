
extension NSAppKitVersion {
}
extension NSWindow {
  struct StyleMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var borderless: NSWindow.StyleMask { get }
    static var titled: NSWindow.StyleMask { get }
    static var closable: NSWindow.StyleMask { get }
    static var miniaturizable: NSWindow.StyleMask { get }
    static var resizable: NSWindow.StyleMask { get }
    @available(macOS, introduced: 10.2, deprecated: 11.0, message: "Textured window style should no longer be used")
    static var texturedBackground: NSWindow.StyleMask { get }
    static var unifiedTitleAndToolbar: NSWindow.StyleMask { get }
    @available(macOS 10.7, *)
    static var fullScreen: NSWindow.StyleMask { get }
    @available(macOS 10.10, *)
    static var fullSizeContentView: NSWindow.StyleMask { get }
    static var utilityWindow: NSWindow.StyleMask { get }
    static var docModalWindow: NSWindow.StyleMask { get }
    static var nonactivatingPanel: NSWindow.StyleMask { get }
    @available(macOS 10.6, *)
    static var hudWindow: NSWindow.StyleMask { get }
  }
  @available(macOS 10.5, *)
  enum SharingType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case none
    case readOnly
    case readWrite
  }
  @available(macOS 10.5, *)
  struct CollectionBehavior : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var canJoinAllSpaces: NSWindow.CollectionBehavior { get }
    static var moveToActiveSpace: NSWindow.CollectionBehavior { get }
    @available(macOS 10.6, *)
    static var managed: NSWindow.CollectionBehavior { get }
    @available(macOS 10.6, *)
    static var transient: NSWindow.CollectionBehavior { get }
    @available(macOS 10.6, *)
    static var stationary: NSWindow.CollectionBehavior { get }
    @available(macOS 10.6, *)
    static var participatesInCycle: NSWindow.CollectionBehavior { get }
    @available(macOS 10.6, *)
    static var ignoresCycle: NSWindow.CollectionBehavior { get }
    @available(macOS 10.7, *)
    static var fullScreenPrimary: NSWindow.CollectionBehavior { get }
    @available(macOS 10.7, *)
    static var fullScreenAuxiliary: NSWindow.CollectionBehavior { get }
    @available(macOS 10.7, *)
    static var fullScreenNone: NSWindow.CollectionBehavior { get }
    @available(macOS 10.11, *)
    static var fullScreenAllowsTiling: NSWindow.CollectionBehavior { get }
    @available(macOS 10.11, *)
    static var fullScreenDisallowsTiling: NSWindow.CollectionBehavior { get }
  }
  @available(macOS 10.7, *)
  enum AnimationBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case none
    case documentWindow
    case utilityWindow
    case alertPanel
  }
  @available(macOS 10.6, *)
  struct NumberListOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var allApplications: NSWindow.NumberListOptions { get }
    static var allSpaces: NSWindow.NumberListOptions { get }
  }
  @available(macOS 10.9, *)
  struct OcclusionState : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var visible: NSWindow.OcclusionState { get }
  }
  struct Level : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Int)
    init(rawValue: Int)
    let rawValue: Int
  }
  enum SelectionDirection : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case directSelection
    case selectingNext
    case selectingPrevious
  }
  enum ButtonType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case closeButton
    case miniaturizeButton
    case zoomButton
    case toolbarButton
    case documentIconButton
    @available(macOS 10.7, *)
    case documentVersionsButton
  }
  @available(macOS 10.10, *)
  enum TitleVisibility : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case visible
    case hidden
  }
  @available(macOS 11.0, *)
  enum ToolbarStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case expanded
    case preference
    case unified
    case unifiedCompact
  }
  @available(macOS 10.12, *)
  enum UserTabbingPreference : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case manual
    case always
    case inFullScreen
  }
  @available(macOS 10.12, *)
  enum TabbingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case preferred
    case disallowed
  }
  typealias FrameAutosaveName = String
  typealias PersistableFrameDescriptor = String
  typealias TabbingIdentifier = String
  class let didBecomeKeyNotification: NSNotification.Name
  class let didBecomeMainNotification: NSNotification.Name
  class let didChangeScreenNotification: NSNotification.Name
  class let didDeminiaturizeNotification: NSNotification.Name
  class let didExposeNotification: NSNotification.Name
  class let didMiniaturizeNotification: NSNotification.Name
  class let didMoveNotification: NSNotification.Name
  class let didResignKeyNotification: NSNotification.Name
  class let didResignMainNotification: NSNotification.Name
  class let didResizeNotification: NSNotification.Name
  class let didUpdateNotification: NSNotification.Name
  class let willCloseNotification: NSNotification.Name
  class let willMiniaturizeNotification: NSNotification.Name
  class let willMoveNotification: NSNotification.Name
  class let willBeginSheetNotification: NSNotification.Name
  class let didEndSheetNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didChangeBackingPropertiesNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let oldScaleFactorUserInfoKey: String
  @available(macOS 10.7, *)
  class let oldColorSpaceUserInfoKey: String
  class let didChangeScreenProfileNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let willStartLiveResizeNotification: NSNotification.Name
  @available(macOS 10.6, *)
  class let didEndLiveResizeNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let willEnterFullScreenNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didEnterFullScreenNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let willExitFullScreenNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didExitFullScreenNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let willEnterVersionBrowserNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didEnterVersionBrowserNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let willExitVersionBrowserNotification: NSNotification.Name
  @available(macOS 10.7, *)
  class let didExitVersionBrowserNotification: NSNotification.Name
  @available(macOS 10.9, *)
  class let didChangeOcclusionStateNotification: NSNotification.Name
  @available(macOS, introduced: 10.5, deprecated: 10.14)
  enum BackingLocation : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case videoMemory
    case mainMemory
  }
}
extension NSApplication.ModalResponse {
  static let OK: NSApplication.ModalResponse
  static let cancel: NSApplication.ModalResponse
}
extension NSApplication {
  class var displayWindowRunLoopOrdering: Int { get }
  class var resetCursorRectsRunLoopOrdering: Int { get }
}
extension NSWindow.Level {
  static let normal: NSWindow.Level
  static let floating: NSWindow.Level
  static let submenu: NSWindow.Level
  static let tornOffMenu: NSWindow.Level
  static let mainMenu: NSWindow.Level
  static let statusBar: NSWindow.Level
  static let modalPanel: NSWindow.Level
  static let popUpMenu: NSWindow.Level
  static let screenSaver: NSWindow.Level
  @available(macOS, introduced: 10.0, deprecated: 10.13)
  static let dock: NSWindow.Level
}
extension NSEvent {
  class let foreverDuration: TimeInterval
}
@available(macOS 11.0, *)
enum NSTitlebarSeparatorStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case none
  case line
  case shadow
}
class NSWindow : NSResponder, NSAnimatablePropertyContainer, NSMenuItemValidation, NSUserInterfaceValidations, NSUserInterfaceItemIdentification, NSAppearanceCustomization, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  class func frameRect(forContentRect cRect: NSRect, styleMask style: NSWindow.StyleMask) -> NSRect
  class func contentRect(forFrameRect fRect: NSRect, styleMask style: NSWindow.StyleMask) -> NSRect
  class func minFrameWidth(withTitle title: String, styleMask style: NSWindow.StyleMask) -> CGFloat
  class var defaultDepthLimit: NSWindow.Depth { get }
  func frameRect(forContentRect contentRect: NSRect) -> NSRect
  func contentRect(forFrameRect frameRect: NSRect) -> NSRect
  init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool)
  convenience init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool, screen: NSScreen?)
  var title: String
  @available(macOS 11.0, *)
  var subtitle: String
  @available(macOS 10.10, *)
  var titleVisibility: NSWindow.TitleVisibility
  @available(macOS 10.10, *)
  var titlebarAppearsTransparent: Bool
  @available(macOS 11.0, *)
  var toolbarStyle: NSWindow.ToolbarStyle
  @available(macOS 10.10, *)
  var contentLayoutRect: NSRect { get }
  @available(macOS 10.10, *)
  var contentLayoutGuide: Any? { get }
  @available(macOS 10.10, *)
  var titlebarAccessoryViewControllers: [NSTitlebarAccessoryViewController]
  @available(macOS 10.10, *)
  func addTitlebarAccessoryViewController(_ childViewController: NSTitlebarAccessoryViewController)
  @available(macOS 10.10, *)
  func insertTitlebarAccessoryViewController(_ childViewController: NSTitlebarAccessoryViewController, at index: Int)
  @available(macOS 10.10, *)
  func removeTitlebarAccessoryViewController(at index: Int)
  @available(macOS 10.5, *)
  var representedURL: URL?
  var representedFilename: String
  func setTitleWithRepresentedFilename(_ filename: String)
  var isExcludedFromWindowsMenu: Bool
  var contentView: NSView?
  weak var delegate: @sil_weak NSWindowDelegate?
  var windowNumber: Int { get }
  var styleMask: NSWindow.StyleMask
  func fieldEditor(_ createFlag: Bool, for object: Any?) -> NSText?
  func endEditing(for object: Any?)
  func constrainFrameRect(_ frameRect: NSRect, to screen: NSScreen?) -> NSRect
  func setFrame(_ frameRect: NSRect, display flag: Bool)
  func setContentSize(_ size: NSSize)
  func setFrameOrigin(_ point: NSPoint)
  func setFrameTopLeftPoint(_ point: NSPoint)
  func cascadeTopLeft(from topLeftPoint: NSPoint) -> NSPoint
  var frame: NSRect { get }
  func animationResizeTime(_ newFrame: NSRect) -> TimeInterval
  func setFrame(_ frameRect: NSRect, display displayFlag: Bool, animate animateFlag: Bool)
  @available(macOS 10.6, *)
  var inLiveResize: Bool { get }
  var resizeIncrements: NSSize
  var aspectRatio: NSSize
  var contentResizeIncrements: NSSize
  var contentAspectRatio: NSSize
  var viewsNeedDisplay: Bool
  func displayIfNeeded()
  func display()
  var preservesContentDuringLiveResize: Bool
  func update()
  func makeFirstResponder(_ responder: NSResponder?) -> Bool
  weak var firstResponder: @sil_weak NSResponder? { get }
  var resizeFlags: NSEvent.ModifierFlags { get }
  func close()
  var isReleasedWhenClosed: Bool
  func miniaturize(_ sender: Any?)
  func deminiaturize(_ sender: Any?)
  var isZoomed: Bool { get }
  func zoom(_ sender: Any?)
  var isMiniaturized: Bool { get }
  @NSCopying var backgroundColor: NSColor!
  @available(macOS 10.5, *)
  func setContentBorderThickness(_ thickness: CGFloat, for edge: NSRectEdge)
  @available(macOS 10.5, *)
  func contentBorderThickness(for edge: NSRectEdge) -> CGFloat
  @available(macOS 10.5, *)
  func setAutorecalculatesContentBorderThickness(_ flag: Bool, for edge: NSRectEdge)
  @available(macOS 10.5, *)
  func autorecalculatesContentBorderThickness(for edge: NSRectEdge) -> Bool
  @available(macOS 10.6, *)
  var isMovable: Bool
  var isMovableByWindowBackground: Bool
  var hidesOnDeactivate: Bool
  var canHide: Bool
  func center()
  func makeKeyAndOrderFront(_ sender: Any?)
  func orderFront(_ sender: Any?)
  func orderBack(_ sender: Any?)
  func orderOut(_ sender: Any?)
  func order(_ place: NSWindow.OrderingMode, relativeTo otherWin: Int)
  func orderFrontRegardless()
  var miniwindowImage: NSImage?
  var miniwindowTitle: String!
  @available(macOS 10.5, *)
  var dockTile: NSDockTile { get }
  var isDocumentEdited: Bool
  var isVisible: Bool { get }
  var isKeyWindow: Bool { get }
  var isMainWindow: Bool { get }
  var canBecomeKey: Bool { get }
  var canBecomeMain: Bool { get }
  func makeKey()
  func makeMain()
  func becomeKey()
  func resignKey()
  func becomeMain()
  func resignMain()
  var worksWhenModal: Bool { get }
  @available(macOS 10.6, *)
  var preventsApplicationTerminationWhenModal: Bool
  @available(macOS 10.7, *)
  func convertToScreen(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertFromScreen(_ rect: NSRect) -> NSRect
  @available(macOS 10.12, *)
  func convertPoint(toScreen point: NSPoint) -> NSPoint
  @available(macOS 10.12, *)
  func convertPoint(fromScreen point: NSPoint) -> NSPoint
  @available(macOS 10.7, *)
  func convertToBacking(_ rect: NSRect) -> NSRect
  @available(macOS 10.7, *)
  func convertFromBacking(_ rect: NSRect) -> NSRect
  @available(macOS 10.14, *)
  func convertPointToBacking(_ point: NSPoint) -> NSPoint
  @available(macOS 10.14, *)
  func convertPointFromBacking(_ point: NSPoint) -> NSPoint
  @available(macOS 10.7, *)
  func backingAlignedRect(_ rect: NSRect, options: AlignmentOptions = []) -> NSRect
  @available(macOS 10.7, *)
  var backingScaleFactor: CGFloat { get }
  func performClose(_ sender: Any?)
  func performMiniaturize(_ sender: Any?)
  func performZoom(_ sender: Any?)
  func dataWithEPS(inside rect: NSRect) -> Data
  func dataWithPDF(inside rect: NSRect) -> Data
  func printWindow(_ sender: Any?)
  var allowsToolTipsWhenApplicationIsInactive: Bool
  var backingType: NSWindow.BackingStoreType
  var level: NSWindow.Level
  var depthLimit: NSWindow.Depth
  func setDynamicDepthLimit(_ flag: Bool)
  var hasDynamicDepthLimit: Bool { get }
  var screen: NSScreen? { get }
  var deepestScreen: NSScreen? { get }
  var hasShadow: Bool
  func invalidateShadow()
  var alphaValue: CGFloat
  var isOpaque: Bool
  @available(macOS 10.5, *)
  var sharingType: NSWindow.SharingType
  @available(macOS 10.6, *)
  var allowsConcurrentViewDrawing: Bool
  var displaysWhenScreenProfileChanges: Bool
  func disableScreenUpdatesUntilFlush()
  @available(macOS 10.5, *)
  var canBecomeVisibleWithoutLogin: Bool
  @available(macOS 10.5, *)
  var collectionBehavior: NSWindow.CollectionBehavior
  @available(macOS 10.7, *)
  var animationBehavior: NSWindow.AnimationBehavior
  @available(macOS 10.6, *)
  var isOnActiveSpace: Bool { get }
  @available(macOS 10.7, *)
  func toggleFullScreen(_ sender: Any?)
  var frameDescriptor: NSWindow.PersistableFrameDescriptor { get }
  func setFrame(from string: NSWindow.PersistableFrameDescriptor)
  func saveFrame(usingName name: NSWindow.FrameAutosaveName)
  func setFrameUsingName(_ name: NSWindow.FrameAutosaveName, force: Bool) -> Bool
  func setFrameUsingName(_ name: NSWindow.FrameAutosaveName) -> Bool
  func setFrameAutosaveName(_ name: NSWindow.FrameAutosaveName) -> Bool
  var frameAutosaveName: NSWindow.FrameAutosaveName { get }
  class func removeFrame(usingName name: NSWindow.FrameAutosaveName)
  var minSize: NSSize
  var maxSize: NSSize
  var contentMinSize: NSSize
  var contentMaxSize: NSSize
  @available(macOS 10.11, *)
  var minFullScreenContentSize: NSSize
  @available(macOS 10.11, *)
  var maxFullScreenContentSize: NSSize
  var deviceDescription: [NSDeviceDescriptionKey : Any] { get }
  weak var windowController: @sil_weak NSWindowController?
  @available(macOS 10.9, *)
  func beginSheet(_ sheetWindow: NSWindow, completionHandler handler: ((NSApplication.ModalResponse) -> Void)? = nil)
  @available(macOS 10.9, *)
  func beginSheet(_ sheetWindow: NSWindow) async -> NSApplication.ModalResponse
  @available(macOS 10.9, *)
  func beginCriticalSheet(_ sheetWindow: NSWindow, completionHandler handler: ((NSApplication.ModalResponse) -> Void)? = nil)
  @available(macOS 10.9, *)
  func beginCriticalSheet(_ sheetWindow: NSWindow) async -> NSApplication.ModalResponse
  @available(macOS 10.9, *)
  func endSheet(_ sheetWindow: NSWindow)
  @available(macOS 10.9, *)
  func endSheet(_ sheetWindow: NSWindow, returnCode: NSApplication.ModalResponse)
  @available(macOS 10.9, *)
  var sheets: [NSWindow] { get }
  var attachedSheet: NSWindow? { get }
  var isSheet: Bool { get }
  @available(macOS 10.9, *)
  var sheetParent: NSWindow? { get }
  class func standardWindowButton(_ b: NSWindow.ButtonType, for styleMask: NSWindow.StyleMask) -> NSButton?
  func standardWindowButton(_ b: NSWindow.ButtonType) -> NSButton?
  func addChildWindow(_ childWin: NSWindow, ordered place: NSWindow.OrderingMode)
  func removeChildWindow(_ childWin: NSWindow)
  var childWindows: [NSWindow]? { get }
  weak var parent: @sil_weak NSWindow?
  @available(macOS 10.14, *)
  weak var appearanceSource: @sil_weak NSAppearanceCustomization!
  @available(macOS 10.6, *)
  var colorSpace: NSColorSpace?
  @available(macOS 10.12, *)
  func canRepresent(_ displayGamut: NSDisplayGamut) -> Bool
  @available(macOS 10.6, *)
  class func windowNumbers(options: NSWindow.NumberListOptions = []) -> [NSNumber]?
  @available(macOS 10.6, *)
  class func windowNumber(at point: NSPoint, belowWindowWithWindowNumber windowNumber: Int) -> Int
  @available(macOS 10.9, *)
  var occlusionState: NSWindow.OcclusionState { get }
  @available(macOS 11.0, *)
  var titlebarSeparatorStyle: NSTitlebarSeparatorStyle
  @available(macOS 10.10, *)
  var contentViewController: NSViewController?
  @available(macOS 10.10, *)
  convenience init(contentViewController: NSViewController)
  @available(macOS 10.11, *)
  func performDrag(with event: NSEvent)
  weak var initialFirstResponder: @sil_weak NSView?
  func selectNextKeyView(_ sender: Any?)
  func selectPreviousKeyView(_ sender: Any?)
  func selectKeyView(following view: NSView)
  func selectKeyView(preceding view: NSView)
  var keyViewSelectionDirection: NSWindow.SelectionDirection { get }
  var defaultButtonCell: NSButtonCell?
  func disableKeyEquivalentForDefaultButtonCell()
  func enableKeyEquivalentForDefaultButtonCell()
  var autorecalculatesKeyViewLoop: Bool
  func recalculateKeyViewLoop()
  var toolbar: NSToolbar?
  func toggleToolbarShown(_ sender: Any?)
  func runToolbarCustomizationPalette(_ sender: Any?)
  var showsToolbarButton: Bool
  @available(macOS 10.12, *)
  class var allowsAutomaticWindowTabbing: Bool
  @available(macOS 10.12, *)
  class var userTabbingPreference: NSWindow.UserTabbingPreference { get }
  @available(macOS 10.12, *)
  var tabbingMode: NSWindow.TabbingMode
  @available(macOS 10.12, *)
  var tabbingIdentifier: NSWindow.TabbingIdentifier
  @available(macOS 10.12, *)
  @IBAction func selectNextTab(_ sender: Any?)
  @available(macOS 10.12, *)
  @IBAction func selectPreviousTab(_ sender: Any?)
  @available(macOS 10.12, *)
  @IBAction func moveTabToNewWindow(_ sender: Any?)
  @available(macOS 10.12, *)
  @IBAction func mergeAllWindows(_ sender: Any?)
  @available(macOS 10.12, *)
  @IBAction func toggleTabBar(_ sender: Any?)
  @available(macOS 10.13, *)
  @IBAction func toggleTabOverview(_ sender: Any?)
  @available(macOS 10.12, *)
  var tabbedWindows: [NSWindow]? { get }
  @available(macOS 10.12, *)
  func addTabbedWindow(_ window: NSWindow, ordered: NSWindow.OrderingMode)
  @available(macOS 10.13, *)
  var tab: NSWindowTab { get }
  @available(macOS 10.13, *)
  weak var tabGroup: @sil_weak NSWindowTabGroup? { get }
  @available(macOS 10.12, *)
  var windowTitlebarLayoutDirection: NSUserInterfaceLayoutDirection { get }
}
extension NSWindow {
  @available(macOS 10.10, *)
  func trackEvents(matching mask: NSEvent.EventTypeMask, timeout: TimeInterval, mode: RunLoop.Mode, handler trackingHandler: (NSEvent?, UnsafeMutablePointer<ObjCBool>) -> Void)
  func nextEvent(matching mask: NSEvent.EventTypeMask) -> NSEvent?
  func nextEvent(matching mask: NSEvent.EventTypeMask, until expiration: Date?, inMode mode: RunLoop.Mode, dequeue deqFlag: Bool) -> NSEvent?
  func discardEvents(matching mask: NSEvent.EventTypeMask, before lastEvent: NSEvent?)
  func postEvent(_ event: NSEvent, atStart flag: Bool)
  func sendEvent(_ event: NSEvent)
  var currentEvent: NSEvent? { get }
  var acceptsMouseMovedEvents: Bool
  var ignoresMouseEvents: Bool
  var mouseLocationOutsideOfEventStream: NSPoint { get }
}
extension NSWindow {
  func disableCursorRects()
  func enableCursorRects()
  func discardCursorRects()
  var areCursorRectsEnabled: Bool { get }
  func invalidateCursorRects(for view: NSView)
  func resetCursorRects()
}
extension NSWindow {
  func drag(_ image: NSImage, at baseLocation: NSPoint, offset initialOffset: NSSize, event: NSEvent, pasteboard pboard: NSPasteboard, source sourceObj: Any, slideBack slideFlag: Bool)
  func registerForDraggedTypes(_ newTypes: [NSPasteboard.PasteboardType])
  func unregisterDraggedTypes()
}
extension NSWindow {
  convenience init?(windowRef: UnsafeMutableRawPointer)
  var windowRef: UnsafeMutableRawPointer { get }
}
protocol NSWindowDelegate : NSObjectProtocol {
  optional func windowShouldClose(_ sender: NSWindow) -> Bool
  optional func windowWillReturnFieldEditor(_ sender: NSWindow, to client: Any?) -> Any?
  optional func windowWillResize(_ sender: NSWindow, to frameSize: NSSize) -> NSSize
  optional func windowWillUseStandardFrame(_ window: NSWindow, defaultFrame newFrame: NSRect) -> NSRect
  optional func windowShouldZoom(_ window: NSWindow, toFrame newFrame: NSRect) -> Bool
  @available(macOS 10.0, *)
  optional func windowWillReturnUndoManager(_ window: NSWindow) -> UndoManager?
  optional func window(_ window: NSWindow, willPositionSheet sheet: NSWindow, using rect: NSRect) -> NSRect
  @available(macOS 10.5, *)
  optional func window(_ window: NSWindow, shouldPopUpDocumentPathMenu menu: NSMenu) -> Bool
  @available(macOS 10.5, *)
  optional func window(_ window: NSWindow, shouldDragDocumentWith event: NSEvent, from dragImageLocation: NSPoint, with pasteboard: NSPasteboard) -> Bool
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, willUseFullScreenContentSize proposedSize: NSSize) -> NSSize
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, willUseFullScreenPresentationOptions proposedOptions: NSApplication.PresentationOptions = []) -> NSApplication.PresentationOptions
  @available(macOS 10.7, *)
  optional func customWindowsToEnterFullScreen(for window: NSWindow) -> [NSWindow]?
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, startCustomAnimationToEnterFullScreenWithDuration duration: TimeInterval)
  @available(macOS 10.7, *)
  optional func windowDidFailToEnterFullScreen(_ window: NSWindow)
  @available(macOS 10.7, *)
  optional func customWindowsToExitFullScreen(for window: NSWindow) -> [NSWindow]?
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, startCustomAnimationToExitFullScreenWithDuration duration: TimeInterval)
  @available(macOS 10.9, *)
  optional func customWindowsToEnterFullScreen(for window: NSWindow, on screen: NSScreen) -> [NSWindow]?
  @available(macOS 10.9, *)
  optional func window(_ window: NSWindow, startCustomAnimationToEnterFullScreenOn screen: NSScreen, withDuration duration: TimeInterval)
  @available(macOS 10.7, *)
  optional func windowDidFailToExitFullScreen(_ window: NSWindow)
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, willResizeForVersionBrowserWithMaxPreferredSize maxPreferredFrameSize: NSSize, maxAllowedSize maxAllowedFrameSize: NSSize) -> NSSize
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, willEncodeRestorableState state: NSCoder)
  @available(macOS 10.7, *)
  optional func window(_ window: NSWindow, didDecodeRestorableState state: NSCoder)
  optional func windowDidResize(_ notification: Notification)
  optional func windowDidExpose(_ notification: Notification)
  optional func windowWillMove(_ notification: Notification)
  optional func windowDidMove(_ notification: Notification)
  optional func windowDidBecomeKey(_ notification: Notification)
  optional func windowDidResignKey(_ notification: Notification)
  optional func windowDidBecomeMain(_ notification: Notification)
  optional func windowDidResignMain(_ notification: Notification)
  optional func windowWillClose(_ notification: Notification)
  optional func windowWillMiniaturize(_ notification: Notification)
  optional func windowDidMiniaturize(_ notification: Notification)
  optional func windowDidDeminiaturize(_ notification: Notification)
  optional func windowDidUpdate(_ notification: Notification)
  optional func windowDidChangeScreen(_ notification: Notification)
  optional func windowDidChangeScreenProfile(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowDidChangeBackingProperties(_ notification: Notification)
  optional func windowWillBeginSheet(_ notification: Notification)
  optional func windowDidEndSheet(_ notification: Notification)
  @available(macOS 10.6, *)
  optional func windowWillStartLiveResize(_ notification: Notification)
  @available(macOS 10.6, *)
  optional func windowDidEndLiveResize(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowWillEnterFullScreen(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowDidEnterFullScreen(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowWillExitFullScreen(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowDidExitFullScreen(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowWillEnterVersionBrowser(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowDidEnterVersionBrowser(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowWillExitVersionBrowser(_ notification: Notification)
  @available(macOS 10.7, *)
  optional func windowDidExitVersionBrowser(_ notification: Notification)
  @available(macOS 10.9, *)
  optional func windowDidChangeOcclusionState(_ notification: Notification)
}
extension NSWindow {
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "This method shouldn’t be used as it doesn’t work in all drawing situations; instead, a subview should be used that implements the desired drawing behavior")
  func cacheImage(in rect: NSRect)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "This method shouldn’t be used as it doesn’t work in all drawing situations; instead, a subview should be used that implements the desired drawing behavior")
  func restoreCachedImage()
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "This method shouldn’t be used as it doesn’t work in all drawing situations; instead, a subview should be used that implements the desired drawing behavior")
  func discardCachedImage()
  @available(macOS, introduced: 10.0, deprecated: 10.11, message: "This method does not do anything and should not be called.")
  class func menuChanged(_ menu: NSMenu)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "This method is unused and should not be called.")
  func gState() -> Int
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "This method does not do anything and should not be called.")
  func useOptimizedDrawing(_ flag: Bool)
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "This method does not do anything and should not be called.")
  func canStoreColor() -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use +[NSAnimationContext runAnimationGroup:completionHandler:] to perform atomic updates across runloop invocations.")
  func disableFlushing()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use +[NSAnimationContext runAnimationGroup:completionHandler:] to perform atomic updates across runloop invocations.")
  func enableFlushing()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use +[NSAnimationContext runAnimationGroup:completionHandler:] to perform atomic updates across runloop invocations.")
  var isFlushWindowDisabled: Bool { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Allow AppKit's automatic deferred display mechanism to take care of flushing any graphics contexts as needed.")
  func flush()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Allow AppKit's automatic deferred display mechanism to take care of flushing any graphics contexts as needed.")
  func flushIfNeeded()
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use +[NSAnimationContext runAnimationGroup:completionHandler:] to temporarily prevent AppKit's automatic deferred display mechanism from drawing.")
  var isAutodisplay: Bool
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "Add instances of NSView to display content in a window.")
  var graphicsContext: NSGraphicsContext? { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "This property does not do anything and should not be used")
  var isOneShot: Bool
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "This property does not do anything and should not be used")
  var preferredBackingLocation: NSWindow.BackingLocation
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "This property does not do anything and should not be used")
  var backingLocation: NSWindow.BackingLocation { get }
  var showsResizeIndicator: Bool
}
extension NSWindow.ButtonType {
  @available(macOS, introduced: 10.7, deprecated: 10.12, message: "The standard window button for NSWindowFullScreenButton is always nil; use NSWindowZoomButton instead")
  static let fullScreenButton: NSWindow.ButtonType
}
