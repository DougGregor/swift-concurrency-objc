
extension NSControl {
  enum ImagePosition : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case noImage
    case imageOnly
    case imageLeft
    case imageRight
    case imageBelow
    case imageAbove
    case imageOverlaps
    @available(macOS 10.12, *)
    case imageLeading
    @available(macOS 10.12, *)
    case imageTrailing
  }
  struct StateValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: Int)
    init(rawValue: Int)
    let rawValue: Int
  }
  enum ControlSize : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case regular
    case small
    case mini
    @available(macOS 11.0, *)
    case large
  }
}
@available(macOS 10.5, *)
enum NSImageScaling : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case scaleProportionallyDown
  case scaleAxesIndependently
  case scaleNone
  case scaleProportionallyUpOrDown
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSImageScaleProportionallyDown instead")
  static var NSScaleProportionally: NSImageScaling { get }
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSImageScaleAxesIndependently instead")
  static var NSScaleToFit: NSImageScaling { get }
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use NSImageScaleNone instead")
  static var NSScaleNone: NSImageScaling { get }
}
extension NSControl.StateValue {
  static let mixed: NSControl.StateValue
  static let off: NSControl.StateValue
  static let on: NSControl.StateValue
}
enum NSControlTint : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case defaultControlTint
  case blueControlTint
  case graphiteControlTint
  case clearControlTint
}
class NSCell : NSObject, NSCopying, NSCoding, NSUserInterfaceItemIdentification, NSAccessibilityElementProtocol, NSAccessibilityProtocol {
  init(textCell string: String)
  init(imageCell image: NSImage?)
  class var prefersTrackingUntilMouseUp: Bool { get }
  unowned(unsafe) var controlView: @sil_unmanaged NSView?
  var type: NSCell.CellType
  var state: NSControl.StateValue
  weak var target: @sil_weak AnyObject?
  var action: Selector?
  var tag: Int
  var title: String
  var isOpaque: Bool { get }
  var isEnabled: Bool
  func sendAction(on mask: NSEvent.EventTypeMask) -> Int
  var isContinuous: Bool
  var isEditable: Bool
  var isSelectable: Bool
  var isBordered: Bool
  var isBezeled: Bool
  var isScrollable: Bool
  var isHighlighted: Bool
  var alignment: NSTextAlignment
  var wraps: Bool
  var font: NSFont?
  var keyEquivalent: String { get }
  var formatter: Formatter?
  var objectValue: Any?
  var hasValidObjectValue: Bool { get }
  var stringValue: String
  func compare(_ otherCell: Any) -> ComparisonResult
  var intValue: Int32
  var floatValue: Float
  var doubleValue: Double
  @available(macOS 10.5, *)
  var integerValue: Int
  func takeIntValueFrom(_ sender: Any?)
  func takeFloatValueFrom(_ sender: Any?)
  func takeDoubleValueFrom(_ sender: Any?)
  func takeStringValueFrom(_ sender: Any?)
  func takeObjectValueFrom(_ sender: Any?)
  @available(macOS 10.5, *)
  func takeIntegerValueFrom(_ sender: Any?)
  var image: NSImage?
  var controlSize: NSControl.ControlSize
  var representedObject: Any?
  func cellAttribute(_ parameter: NSCell.Attribute) -> Int
  func setCellAttribute(_ parameter: NSCell.Attribute, to value: Int)
  func imageRect(forBounds rect: NSRect) -> NSRect
  func titleRect(forBounds rect: NSRect) -> NSRect
  func drawingRect(forBounds rect: NSRect) -> NSRect
  var cellSize: NSSize { get }
  func cellSize(forBounds rect: NSRect) -> NSSize
  func highlightColor(withFrame cellFrame: NSRect, in controlView: NSView) -> NSColor?
  func calcDrawInfo(_ rect: NSRect)
  func setUpFieldEditorAttributes(_ textObj: NSText) -> NSText
  func drawInterior(withFrame cellFrame: NSRect, in controlView: NSView)
  func draw(withFrame cellFrame: NSRect, in controlView: NSView)
  func highlight(_ flag: Bool, withFrame cellFrame: NSRect, in controlView: NSView)
  var mouseDownFlags: Int { get }
  func getPeriodicDelay(_ delay: UnsafeMutablePointer<Float>, interval: UnsafeMutablePointer<Float>)
  func startTracking(at startPoint: NSPoint, in controlView: NSView) -> Bool
  func continueTracking(last lastPoint: NSPoint, current currentPoint: NSPoint, in controlView: NSView) -> Bool
  func stopTracking(last lastPoint: NSPoint, current stopPoint: NSPoint, in controlView: NSView, mouseIsUp flag: Bool)
  func trackMouse(with event: NSEvent, in cellFrame: NSRect, of controlView: NSView, untilMouseUp flag: Bool) -> Bool
  func edit(withFrame rect: NSRect, in controlView: NSView, editor textObj: NSText, delegate: Any?, event: NSEvent?)
  func select(withFrame rect: NSRect, in controlView: NSView, editor textObj: NSText, delegate: Any?, start selStart: Int, length selLength: Int)
  func endEditing(_ textObj: NSText)
  func resetCursorRect(_ cellFrame: NSRect, in controlView: NSView)
  var menu: NSMenu?
  func menu(for event: NSEvent, in cellFrame: NSRect, of view: NSView) -> NSMenu?
  class var defaultMenu: NSMenu? { get }
  var sendsActionOnEndEditing: Bool
  var baseWritingDirection: NSWritingDirection
  var lineBreakMode: NSLineBreakMode
  var allowsUndo: Bool
  @available(macOS 10.5, *)
  var truncatesLastVisibleLine: Bool
  @available(macOS 10.6, *)
  var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection
  @available(macOS 10.6, *)
  func fieldEditor(for controlView: NSView) -> NSTextView?
  @available(macOS 10.6, *)
  var usesSingleLineMode: Bool
  @available(macOS 10.7, *)
  func draggingImageComponents(withFrame frame: NSRect, in view: NSView) -> [NSDraggingImageComponent]
}
extension NSCell {
  var refusesFirstResponder: Bool
  var acceptsFirstResponder: Bool { get }
  var showsFirstResponder: Bool
  func performClick(_ sender: Any?)
  var focusRingType: NSFocusRingType
  class var defaultFocusRingType: NSFocusRingType { get }
  @available(macOS 10.7, *)
  func drawFocusRingMask(withFrame cellFrame: NSRect, in controlView: NSView)
  @available(macOS 10.7, *)
  func focusRingMaskBounds(forFrame cellFrame: NSRect, in controlView: NSView) -> NSRect
  var wantsNotificationForMarkedText: Bool { get }
}
extension NSCell {
  @NSCopying var attributedStringValue: NSAttributedString
  var allowsEditingTextAttributes: Bool
  var importsGraphics: Bool
}
extension NSCell {
  var allowsMixedState: Bool
  var nextState: Int { get }
  func setNextState()
}
extension NSCell {
  @available(macOS 10.5, *)
  struct HitResult : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var contentArea: NSCell.HitResult { get }
    static var editableTextArea: NSCell.HitResult { get }
    static var trackableArea: NSCell.HitResult { get }
  }
  @available(macOS, introduced: 10.0, deprecated: 10.14, renamed: "NSControl.StateValue")
  typealias StateValue = NSControl.StateValue
  enum CellType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case nullCellType
    case textCellType
    case imageCellType
  }
  enum Attribute : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case cellDisabled
    case cellState
    case pushInCell
    case cellEditable
    case changeGrayCell
    case cellHighlighted
    case cellLightsByContents
    case cellLightsByGray
    case changeBackgroundCell
    case cellLightsByBackground
    case cellIsBordered
    case cellHasOverlappingImage
    case cellHasImageHorizontal
    case cellHasImageOnLeftOrBottom
    case cellChangesContents
    case cellIsInsetButton
    case cellAllowsMixedState
  }
  struct StyleMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var contentsCellMask: NSCell.StyleMask { get }
    static var pushInCellMask: NSCell.StyleMask { get }
    static var changeGrayCellMask: NSCell.StyleMask { get }
    static var changeBackgroundCellMask: NSCell.StyleMask { get }
  }
}
extension NSCell {
  @available(macOS 10.5, *)
  func hitTest(for event: NSEvent, in cellFrame: NSRect, of controlView: NSView) -> NSCell.HitResult
}
extension NSCell {
  @available(macOS 10.5, *)
  func expansionFrame(withFrame cellFrame: NSRect, in view: NSView) -> NSRect
  @available(macOS 10.5, *)
  func draw(withExpansionFrame cellFrame: NSRect, in view: NSView)
}
extension NSView {
  @available(macOS 10.5, *)
  enum BackgroundStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case normal
    case emphasized
    case raised
    case lowered
  }
}
extension NSCell {
  @available(macOS 10.5, *)
  var backgroundStyle: NSView.BackgroundStyle
  @available(macOS 10.5, *)
  var interiorBackgroundStyle: NSView.BackgroundStyle { get }
}
@available(macOS 10.5, *)
func NSDrawThreePartImage(_ frame: NSRect, _ startCap: NSImage?, _ centerFill: NSImage?, _ endCap: NSImage?, _ vertical: Bool, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
@available(macOS 10.5, *)
func NSDrawNinePartImage(_ frame: NSRect, _ topLeftCorner: NSImage?, _ topEdgeFill: NSImage?, _ topRightCorner: NSImage?, _ leftEdgeFill: NSImage?, _ centerFill: NSImage?, _ rightEdgeFill: NSImage?, _ bottomLeftCorner: NSImage?, _ bottomEdgeFill: NSImage?, _ bottomRightCorner: NSImage?, _ op: NSCompositingOperation, _ alphaFraction: CGFloat, _ flipped: Bool)
extension NSCell {
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "The controlTint property is not respected on 10.14 and later. For custom cells, use +[NSColor controlAccentColor] to respect the user's preferred accent color when drawing.")
  var controlTint: NSControlTint
}
extension NSView.BackgroundStyle {
  @available(macOS, introduced: 10.5, deprecated: 11.0, renamed: "NSView.BackgroundStyle.normal")
  static let light: NSView.BackgroundStyle
  @available(macOS, introduced: 10.5, deprecated: 11.0, renamed: "NSView.BackgroundStyle.emphasized")
  static let dark: NSView.BackgroundStyle
}
extension NSColor {
  @available(macOS, introduced: 10.0, deprecated: 11.0, message: "Changes to the accent color can be manually observed by implementing -viewDidChangeEffectiveAppearance in a NSView subclass, or by Key-Value Observing the -effectiveAppearance property on NSApplication. Views are automatically redisplayed when the accent color changes.")
  class let currentControlTintDidChangeNotification: NSNotification.Name
}
