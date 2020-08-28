
@available(macOS 10.13, *)
class CIRenderDestination : NSObject {
  init(pixelBuffer: CVPixelBuffer)
  init(ioSurface surface: IOSurface)
  init(mtlTexture texture: MTLTexture, commandBuffer: MTLCommandBuffer?)
  init(width: Int, height: Int, pixelFormat: MTLPixelFormat, commandBuffer: MTLCommandBuffer?, mtlTextureProvider block: (() -> MTLTexture)? = nil)
  init(glTexture texture: UInt32, target: UInt32, width: Int, height: Int)
  init(bitmapData data: UnsafeMutableRawPointer, width: Int, height: Int, bytesPerRow: Int, format: CIFormat)
  var width: Int { get }
  var height: Int { get }
  var alphaMode: CIRenderDestinationAlphaMode
  var isFlipped: Bool
  var isDithered: Bool
  var isClamped: Bool
  var colorSpace: CGColorSpace?
  var blendKernel: CIBlendKernel?
  var blendsInDestinationColorSpace: Bool
}
enum CIRenderDestinationAlphaMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case premultiplied
  case unpremultiplied
}
@available(macOS 10.13, *)
class CIRenderInfo : NSObject {
  var kernelExecutionTime: TimeInterval { get }
  var passCount: Int { get }
  var pixelsProcessed: Int { get }
}
@available(macOS 10.13, *)
class CIRenderTask : NSObject {
  func waitUntilCompleted() throws -> CIRenderInfo
}
extension CIContext {
  @available(macOS 10.13, *)
  func startTask(toRender image: CIImage, from fromRect: CGRect, to destination: CIRenderDestination, at atPoint: CGPoint) throws -> CIRenderTask
  @available(macOS 10.13, *)
  func startTask(toRender image: CIImage, to destination: CIRenderDestination) throws -> CIRenderTask
  @available(macOS 10.13, *)
  func prepareRender(_ image: CIImage, from fromRect: CGRect, to destination: CIRenderDestination, at atPoint: CGPoint) throws
  @available(macOS 10.13, *)
  func startTask(toClear destination: CIRenderDestination) throws -> CIRenderTask
}
