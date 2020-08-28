
enum NSCompositingOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clear
  case copy
  case sourceOver
  case sourceIn
  case sourceOut
  case sourceAtop
  case destinationOver
  case destinationIn
  case destinationOut
  case destinationAtop
  case xor
  case plusDarker
  case plusLighter
  @available(macOS 10.10, *)
  case multiply
  @available(macOS 10.10, *)
  case screen
  @available(macOS 10.10, *)
  case overlay
  @available(macOS 10.10, *)
  case darken
  @available(macOS 10.10, *)
  case lighten
  @available(macOS 10.10, *)
  case colorDodge
  @available(macOS 10.10, *)
  case colorBurn
  @available(macOS 10.10, *)
  case softLight
  @available(macOS 10.10, *)
  case hardLight
  @available(macOS 10.10, *)
  case difference
  @available(macOS 10.10, *)
  case exclusion
  @available(macOS 10.10, *)
  case hue
  @available(macOS 10.10, *)
  case saturation
  @available(macOS 10.10, *)
  case color
  @available(macOS 10.10, *)
  case luminosity
}
extension NSWindow {
  enum BackingStoreType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSWindow.BackingStoreType.buffered")
    case retained
    @available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSWindow.BackingStoreType.buffered")
    case nonretained
    case buffered
  }
  enum OrderingMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case above
    case below
    case out
  }
  @available(macOS 10.6, *)
  enum Depth : Int32 {
    init?(rawValue: Int32)
    var rawValue: Int32 { get }
    case twentyfourBitRGB
    case sixtyfourBitRGB
    case onehundredtwentyeightBitRGB
  }
}
enum NSFocusRingPlacement : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case only
  case below
  case above
}
enum NSFocusRingType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case none
  case exterior
}
@available(macOS 10.5, *)
enum NSColorRenderingIntent : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case absoluteColorimetric
  case relativeColorimetric
  case perceptual
  case saturation
}
struct NSColorSpaceName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSColorSpaceName {
  static let calibratedWhite: NSColorSpaceName
  static let calibratedRGB: NSColorSpaceName
  static let deviceWhite: NSColorSpaceName
  static let deviceRGB: NSColorSpaceName
  static let deviceCMYK: NSColorSpaceName
  static let named: NSColorSpaceName
  static let pattern: NSColorSpaceName
  static let custom: NSColorSpaceName
  var numberOfColorComponents: Int { get }
}
func __NSBestDepth(_ colorSpace: NSColorSpaceName, _ bps: Int, _ bpp: Int, _ planar: Bool, _ exactMatch: UnsafeMutablePointer<ObjCBool>?) -> NSWindow.Depth
extension NSWindow.Depth {
  var isPlanar: Bool { get }
  var colorSpaceName: NSColorSpaceName? { get }
  var bitsPerSample: Int { get }
  var bitsPerPixel: Int { get }
}
func __NSAvailableWindowDepths() -> UnsafePointer<NSWindow.Depth>
@available(macOS 10.12, *)
enum NSDisplayGamut : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case sRGB
  case p3
}
struct NSDeviceDescriptionKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSDeviceDescriptionKey {
  static let resolution: NSDeviceDescriptionKey
  static let colorSpaceName: NSDeviceDescriptionKey
  static let bitsPerSample: NSDeviceDescriptionKey
  static let isScreen: NSDeviceDescriptionKey
  static let isPrinter: NSDeviceDescriptionKey
  static let size: NSDeviceDescriptionKey
}
func __NSRectFill(_ rect: NSRect)
func __NSRectFillList(_ rects: UnsafePointer<NSRect>, _ count: Int)
func __NSRectFillListWithGrays(_ rects: UnsafePointer<NSRect>, _ grays: UnsafePointer<CGFloat>, _ num: Int)
func __NSRectFillListWithColors(_ rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor>, _ num: Int)
func __NSRectFillUsingOperation(_ rect: NSRect, _ op: NSCompositingOperation)
func __NSRectFillListUsingOperation(_ rects: UnsafePointer<NSRect>, _ count: Int, _ op: NSCompositingOperation)
func __NSRectFillListWithColorsUsingOperation(_ rects: UnsafePointer<NSRect>, _ colors: UnsafePointer<NSColor>, _ num: Int, _ op: NSCompositingOperation)
func __NSFrameRect(_ rect: NSRect)
func __NSFrameRectWithWidth(_ rect: NSRect, _ frameWidth: CGFloat)
func __NSFrameRectWithWidthUsingOperation(_ rect: NSRect, _ frameWidth: CGFloat, _ op: NSCompositingOperation)
func __NSRectClip(_ rect: NSRect)
func __NSRectClipList(_ rects: UnsafePointer<NSRect>, _ count: Int)
func NSDrawTiledRects(_ boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ grays: UnsafePointer<CGFloat>, _ count: Int) -> NSRect
func NSDrawGrayBezel(_ rect: NSRect, _ clipRect: NSRect)
func NSDrawGroove(_ rect: NSRect, _ clipRect: NSRect)
func NSDrawWhiteBezel(_ rect: NSRect, _ clipRect: NSRect)
func NSDrawButton(_ rect: NSRect, _ clipRect: NSRect)
func NSEraseRect(_ rect: NSRect)
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "Use -[NSBitmapImageRep colorAtX:y:] to interrogate pixel values.  If necessary, use -[NSView cacheDisplayInRect:toBitmapImageRep:] to snapshot a view hierarchy into an NSBitmapImageRep.")
func NSReadPixel(_ passedPoint: NSPoint) -> NSColor?
func NSDrawBitmap(_ rect: NSRect, _ width: Int, _ height: Int, _ bps: Int, _ spp: Int, _ bpp: Int, _ bpr: Int, _ isPlanar: Bool, _ hasAlpha: Bool, _ colorSpaceName: NSColorSpaceName, _ data: UnsafePointer<UnsafePointer<UInt8>?>)
func __NSBeep()
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "Doesn't return anything useful since 10.0")
func NSGetWindowServerMemory(_ context: Int, _ virtualMemory: UnsafeMutablePointer<Int>, _ windowBackingMemory: UnsafeMutablePointer<Int>, _ windowDumpString: AutoreleasingUnsafeMutablePointer<NSString>) -> Int
func NSDrawColorTiledRects(_ boundsRect: NSRect, _ clipRect: NSRect, _ sides: UnsafePointer<NSRectEdge>, _ colors: AutoreleasingUnsafeMutablePointer<NSColor>, _ count: Int) -> NSRect
func NSDrawDarkBezel(_ rect: NSRect, _ clipRect: NSRect)
func NSDrawLightBezel(_ rect: NSRect, _ clipRect: NSRect)
func NSDottedFrameRect(_ rect: NSRect)
func NSDrawWindowBackground(_ rect: NSRect)
extension NSFocusRingPlacement {
  func set()
}
@available(macOS, introduced: 10.0, deprecated: 10.11, message: "As of 10.11 it is not generally necessary to take explicit action to achieve visual atomicity. +[NSAnimationContext runAnimationGroup:] and other similar methods can be used when a stronger than normal need for visual atomicity is required. The NSAnimationContext methods do not suffer from the same performance problems as NSDisableScreenUpdates.")
func NSDisableScreenUpdates()
@available(macOS, introduced: 10.0, deprecated: 10.11, message: "As of 10.11 it is not generally necessary to take explicit action to achieve visual atomicity. +[NSAnimationContext runAnimationGroup:] and other similar methods can be used when a stronger than normal need for visual atomicity is required. The NSAnimationContext methods do not suffer from the same performance problems as NSEnableScreenUpdates.")
func NSEnableScreenUpdates()
enum NSAnimationEffect : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case disappearingItemDefault
  case poof
}

extension NSAnimationEffect {
  @available(swift 4)
  func show(centeredAt centerLocation: NSPoint, size: NSSize, completionHandler: @escaping () -> Void = { })
}
func __NSShowAnimationEffect(_ animationEffect: NSAnimationEffect, _ centerLocation: NSPoint, _ size: NSSize, _ animationDelegate: Any?, _ didEndSelector: Selector?, _ contextInfo: UnsafeMutableRawPointer?)
@available(macOS, introduced: 10.0, deprecated: 10.10)
func NSCopyBits(_ srcGState: Int, _ srcRect: NSRect, _ destPoint: NSPoint)
