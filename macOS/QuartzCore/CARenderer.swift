
@available(macOS 10.5, *)
class CARenderer : NSObject {
  @available(macOS, introduced: 10.5, deprecated: 10.14, message: "+rendererWithMTLTexture")
  /*not inherited*/ init(cglContext ctx: UnsafeMutableRawPointer, options dict: [AnyHashable : Any]? = nil)
  @available(macOS 10.13, *)
  /*not inherited*/ init(mtlTexture tex: MTLTexture, options dict: [AnyHashable : Any]? = nil)
  var layer: CALayer?
  var bounds: CGRect
  func beginFrame(atTime t: CFTimeInterval, timeStamp ts: UnsafeMutablePointer<CVTimeStamp>?)
  func updateBounds() -> CGRect
  func addUpdate(_ r: CGRect)
  func render()
  func nextFrameTime() -> CFTimeInterval
  func endFrame()
  func setDestination(_ tex: MTLTexture)
}
@available(macOS 10.6, *)
let kCARendererColorSpace: String
@available(macOS 10.14, *)
let kCARendererMetalCommandQueue: String
