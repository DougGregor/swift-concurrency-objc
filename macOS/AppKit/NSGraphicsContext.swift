
extension NSGraphicsContext {
  struct AttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct RepresentationFormatName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension NSGraphicsContext.AttributeKey {
  static let destination: NSGraphicsContext.AttributeKey
  static let representationFormat: NSGraphicsContext.AttributeKey
}
extension NSGraphicsContext.RepresentationFormatName {
  static let postScript: NSGraphicsContext.RepresentationFormatName
  static let pdf: NSGraphicsContext.RepresentationFormatName
}
enum NSImageInterpolation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case none
  case low
  @available(macOS 10.6, *)
  case medium
  case high
}
class NSGraphicsContext : NSObject {
  /*not inherited*/ init?(attributes: [NSGraphicsContext.AttributeKey : Any] = [:])
  /*not inherited*/ init(window: NSWindow)
  /*not inherited*/ init?(bitmapImageRep bitmapRep: NSBitmapImageRep)
  @available(macOS 10.10, *)
  /*not inherited*/ init(cgContext graphicsPort: CGContext, flipped initialFlippedState: Bool)
  class var current: NSGraphicsContext?
  class func currentContextDrawingToScreen() -> Bool
  class func saveGraphicsState()
  class func restoreGraphicsState()
  var attributes: [NSGraphicsContext.AttributeKey : Any]? { get }
  var isDrawingToScreen: Bool { get }
  func saveGraphicsState()
  func restoreGraphicsState()
  func flushGraphics()
  @available(macOS 10.10, *)
  var cgContext: CGContext { get }
  var isFlipped: Bool { get }
}
extension NSGraphicsContext {
  var shouldAntialias: Bool
  var imageInterpolation: NSImageInterpolation
  var patternPhase: NSPoint
  var compositingOperation: NSCompositingOperation
  @available(macOS 10.5, *)
  var colorRenderingIntent: NSColorRenderingIntent
}
extension NSGraphicsContext {
  var ciContext: CIContext? { get }
}
extension NSGraphicsContext {
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "This method has no effect")
  class func setGraphicsState(_ gState: Int)
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  /*not inherited*/ init(graphicsPort: UnsafeMutableRawPointer, flipped initialFlippedState: Bool)
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  var graphicsPort: UnsafeMutableRawPointer { get }
}
