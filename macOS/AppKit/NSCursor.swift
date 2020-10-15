
@available(macOS 10.0, *)
class NSCursor : NSObject, NSCoding {
  class var current: NSCursor { get }
  @available(macOS 10.6, *)
  class var currentSystem: NSCursor? { get }
  class var arrow: NSCursor { get }
  class var iBeam: NSCursor { get }
  class var pointingHand: NSCursor { get }
  class var closedHand: NSCursor { get }
  class var openHand: NSCursor { get }
  class var resizeLeft: NSCursor { get }
  class var resizeRight: NSCursor { get }
  class var resizeLeftRight: NSCursor { get }
  class var resizeUp: NSCursor { get }
  class var resizeDown: NSCursor { get }
  class var resizeUpDown: NSCursor { get }
  class var crosshair: NSCursor { get }
  class var disappearingItem: NSCursor { get }
  @available(macOS 10.5, *)
  class var operationNotAllowed: NSCursor { get }
  @available(macOS 10.6, *)
  class var dragLink: NSCursor { get }
  @available(macOS 10.6, *)
  class var dragCopy: NSCursor { get }
  @available(macOS 10.6, *)
  class var contextualMenu: NSCursor { get }
  @available(macOS 10.7, *)
  class var iBeamCursorForVerticalLayout: NSCursor { get }
  init(image newImage: NSImage, hotSpot point: NSPoint)
  class func hide()
  class func unhide()
  class func setHiddenUntilMouseMoves(_ flag: Bool)
  class func pop()
  var image: NSImage { get }
  var hotSpot: NSPoint { get }
  func push()
  func pop()
  func set()
}

extension NSCursor : __DefaultCustomPlaygroundQuickLookable {
}
extension NSAppKitVersion {
}
extension NSCursor {
  @available(macOS, introduced: 10.0, deprecated: 10.12, message: "Color hints are ignored. Use -initWithImage:hotSpot: instead")
  convenience init(image newImage: NSImage, foregroundColorHint fg: NSColor?, backgroundColorHint bg: NSColor?, hotSpot: NSPoint)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "setOnMouseExited is unused and should not be called")
  func setOnMouseExited(_ flag: Bool)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "setOnMouseEntered is unused and should not be called")
  func setOnMouseEntered(_ flag: Bool)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "isSetOnMouseExited is unused")
  var isSetOnMouseExited: Bool { get }
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "isSetOnMouseEntered is unused")
  var isSetOnMouseEntered: Bool { get }
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "mouseEntered: is unused and should not be called")
  func mouseEntered(with event: NSEvent)
  @available(macOS, introduced: 10.0, deprecated: 10.13, message: "mouseExited: is unused and should not be called")
  func mouseExited(with event: NSEvent)
}
