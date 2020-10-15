
extension NSTouch {
  @available(macOS 10.7, *)
  struct Phase : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var began: NSTouch.Phase { get }
    static var moved: NSTouch.Phase { get }
    static var stationary: NSTouch.Phase { get }
    static var ended: NSTouch.Phase { get }
    static var cancelled: NSTouch.Phase { get }
    static var touching: NSTouch.Phase { get }
    static var any: NSTouch.Phase { get }
  }
  @available(macOS 10.12.2, *)
  enum TouchType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case direct
    case indirect
  }
  @available(macOS 10.12.2, *)
  struct TouchTypeMask : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var direct: NSTouch.TouchTypeMask { get }
    static var indirect: NSTouch.TouchTypeMask { get }
  }
}
extension NSTouch.TouchTypeMask {
  /*not inherited*/ init(type: NSTouch.TouchType)
}
@available(macOS 10.6, *)
class NSTouch : NSObject, NSCopying {
  var identity: NSCopying & NSObjectProtocol { get }
  var phase: NSTouch.Phase { get }
  var normalizedPosition: NSPoint { get }
  var isResting: Bool { get }
  var device: Any? { get }
  var deviceSize: NSSize { get }
}
extension NSTouch {
  @available(macOS 10.12.2, *)
  var type: NSTouch.TouchType { get }
  @available(macOS 10.12.2, *)
  func location(in view: NSView?) -> NSPoint
  @available(macOS 10.12.2, *)
  func previousLocation(in view: NSView?) -> NSPoint
}
