
class CGDisplayStream : _CFObject {
}
class CGDisplayStreamUpdate : _CFObject {
}
enum CGDisplayStreamUpdateRectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case refreshedRects
  case movedRects
  case dirtyRects
  case reducedDirtyRects
}
enum CGDisplayStreamFrameStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case frameComplete
  case frameIdle
  case frameBlank
  case stopped
}
typealias CGDisplayStreamFrameAvailableHandler = (CGDisplayStreamFrameStatus, UInt64, IOSurfaceRef?, CGDisplayStreamUpdate?) -> Void
extension CGDisplayStreamUpdate {
  @available(macOS 10.8, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.8, *)
  func getRects(_ rectType: CGDisplayStreamUpdateRectType, rectCount: UnsafeMutablePointer<Int>) -> UnsafePointer<CGRect>?
  @available(macOS 10.8, *)
  /*not inherited*/ init?(mergedUpdateFirstUpdate firstUpdate: CGDisplayStreamUpdate?, secondUpdate: CGDisplayStreamUpdate?)
  @available(macOS 10.8, *)
  func getMovedRectsDelta(dx: UnsafeMutablePointer<CGFloat>, dy: UnsafeMutablePointer<CGFloat>)
  @available(macOS 10.8, *)
  var dropCount: Int { get }
}
extension CGDisplayStream {
  @available(macOS 10.8, *)
  class let sourceRect: CFString
  @available(macOS 10.8, *)
  class let destinationRect: CFString
  @available(macOS 10.8, *)
  class let preserveAspectRatio: CFString
  @available(macOS 10.8, *)
  class let colorSpace: CFString
  @available(macOS 10.8, *)
  class let minimumFrameTime: CFString
  @available(macOS 10.8, *)
  class let showCursor: CFString
  @available(macOS 10.8, *)
  class let queueDepth: CFString
  @available(macOS 10.8, *)
  class let yCbCrMatrix: CFString
  @available(macOS 10.8, *)
  class let yCbCrMatrix_ITU_R_709_2: CFString
  @available(macOS 10.8, *)
  class let yCbCrMatrix_ITU_R_601_4: CFString
  @available(macOS 10.8, *)
  class let yCbCrMatrix_SMPTE_240M_1995: CFString
  @available(macOS 10.8, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.8, *)
  /*not inherited*/ init?(display: CGDirectDisplayID, outputWidth: Int, outputHeight: Int, pixelFormat: Int32, properties: CFDictionary?, handler: CGDisplayStreamFrameAvailableHandler?)
  @available(macOS 10.8, *)
  /*not inherited*/ init?(dispatchQueueDisplay display: CGDirectDisplayID, outputWidth: Int, outputHeight: Int, pixelFormat: Int32, properties: CFDictionary?, queue: DispatchQueue, handler: CGDisplayStreamFrameAvailableHandler?)
  @available(macOS 10.8, *)
  func start() -> CGError
  @available(macOS 10.8, *)
  func stop() -> CGError
  @available(macOS 10.8, *)
  var runLoopSource: CFRunLoopSource? { get }
}
