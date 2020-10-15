
var NSImageRepMatchesDevice: Int { get }
extension NSImage {
  @available(macOS 10.12, *)
  enum LayoutDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case leftToRight
    case rightToLeft
  }
}
class NSImageRep : NSObject, NSCopying, NSCoding {
  func draw() -> Bool
  func draw(at point: NSPoint) -> Bool
  func draw(in rect: NSRect) -> Bool
  @available(macOS 10.6, *)
  func draw(in dstSpacePortionRect: NSRect, from srcSpacePortionRect: NSRect, operation op: NSCompositingOperation, fraction requestedAlpha: CGFloat, respectFlipped respectContextIsFlipped: Bool, hints: [NSImageRep.HintKey : Any]?) -> Bool
  var size: NSSize
  var hasAlpha: Bool
  var isOpaque: Bool
  var colorSpaceName: NSColorSpaceName
  var bitsPerSample: Int
  var pixelsWide: Int
  var pixelsHigh: Int
  @available(macOS 10.12, *)
  var layoutDirection: NSImage.LayoutDirection
  class func registerClass(_ imageRepClass: AnyClass)
  class func unregisterClass(_ imageRepClass: AnyClass)
  class var registeredClasses: [AnyClass] { get }
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageRepClassForType: instead")
  class func `class`(forFileType type: String) -> AnyClass?
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageRepClassForType: instead")
  class func `class`(forPasteboardType type: NSPasteboard.PasteboardType) -> AnyClass?
  @available(macOS 10.5, *)
  class func `class`(forType type: String) -> AnyClass?
  class func `class`(for data: Data) -> AnyClass?
  class func canInit(with data: Data) -> Bool
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageUnfilteredTypes instead")
  class func imageUnfilteredFileTypes() -> [String]
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageUnfilteredTypes instead")
  class func imageUnfilteredPasteboardTypes() -> [NSPasteboard.PasteboardType]
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageTypes instead")
  class func imageFileTypes() -> [String]
  @available(macOS, introduced: 10.0, deprecated: 10.10, message: "Use +imageTypes instead")
  class func imagePasteboardTypes() -> [NSPasteboard.PasteboardType]
  @available(macOS 10.5, *)
  class var imageUnfilteredTypes: [String] { get }
  @available(macOS 10.5, *)
  class var imageTypes: [String] { get }
  class func canInit(with pasteboard: NSPasteboard) -> Bool
  class func imageReps(withContentsOfFile filename: String) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOfFile filename: String)
  class func imageReps(withContentsOf url: URL) -> [NSImageRep]?
  /*not inherited*/ init?(contentsOf url: URL)
  class func imageReps(with pasteboard: NSPasteboard) -> [NSImageRep]?
  /*not inherited*/ init?(pasteboard: NSPasteboard)
  @available(macOS 10.6, *)
  func cgImage(forProposedRect proposedDestRect: UnsafeMutablePointer<NSRect>?, context: NSGraphicsContext?, hints: [NSImageRep.HintKey : Any]?) -> CGImage?
}
extension NSImageRep {
  class let registryDidChangeNotification: NSNotification.Name
  struct HintKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
