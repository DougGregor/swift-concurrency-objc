
@available(macOS 11.0, *)
struct PGDisplayCoord_t {
  var x: UInt16
  var y: UInt16
  init()
  init(x: UInt16, y: UInt16)
}
@available(macOS 11.0, *)
typealias PGDisplayModeChangeHandler = (PGDisplayCoord_t, OSType) -> Void
@available(macOS 11.0, *)
typealias PGDisplayNewFrameEventHandler = () -> Void
@available(macOS 11.0, *)
typealias PGDisplayCursorGlyphHandler = (NSBitmapImageRep, PGDisplayCoord_t) -> Void
@available(macOS 11.0, *)
typealias PGDisplayCursorShowHandler = (Bool) -> Void
@available(macOS 11.0, *)
class PGDisplayDescriptor : NSObject {
  @available(macOS 11.0, *)
  var name: String?
  @available(macOS 11.0, *)
  var sizeInMillimeters: NSSize
  @available(macOS 11.0, *)
  var queue: DispatchQueue?
  @available(macOS 11.0, *)
  var modeChangeHandler: PGDisplayModeChangeHandler?
  @available(macOS 11.0, *)
  var newFrameEventHandler: PGDisplayNewFrameEventHandler?
  @available(macOS 11.0, *)
  var cursorGlyphHandler: PGDisplayCursorGlyphHandler?
  @available(macOS 11.0, *)
  var cursorShowHandler: PGDisplayCursorShowHandler?
}
@available(macOS 11.0, *)
class PGDisplayMode : NSObject {
  @available(macOS 11.0, *)
  var sizeInPixels: PGDisplayCoord_t { get }
  @available(macOS 11.0, *)
  var refreshRate: Double { get }
  @available(macOS 11.0, *)
  init?(sizeInPixels: PGDisplayCoord_t, refreshRateInHz: Double)
}
@available(macOS 11.0, *)
protocol PGDisplay : NSObjectProtocol {
  @available(macOS 11.0, *)
  var name: String? { get }
  @available(macOS 11.0, *)
  var sizeInMillimeters: NSSize { get }
  @available(macOS 11.0, *)
  var queue: DispatchQueue? { get }
  @available(macOS 11.0, *)
  var modeChangeHandler: PGDisplayModeChangeHandler? { get }
  @available(macOS 11.0, *)
  var newFrameEventHandler: PGDisplayNewFrameEventHandler? { get }
  @available(macOS 11.0, *)
  var cursorGlyphHandler: PGDisplayCursorGlyphHandler? { get }
  @available(macOS 11.0, *)
  var cursorShowHandler: PGDisplayCursorShowHandler? { get }
  @available(macOS 11.0, *)
  var cursorPosition: PGDisplayCoord_t { get }
  @available(macOS 11.0, *)
  var serialNum: UInt32 { get }
  @available(macOS 11.0, *)
  var port: Int { get }
  @available(macOS 11.0, *)
  var minimumTextureUsage: MTLTextureUsage { get }
  @available(macOS 11.0, *)
  var guestPresentCount: Int { get }
  @available(macOS 11.0, *)
  var hostPresentCount: Int { get }
  @available(macOS 11.0, *)
  var modeList: [PGDisplayMode] { get set }
  @available(macOS 11.0, *)
  func encodeCurrentFrame(to commandBuffer: MTLCommandBuffer, texture: MTLTexture, region: MTLRegion) -> Bool
}
