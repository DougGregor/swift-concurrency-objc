
@available(macOS 10.11, *)
class MTKView : NSView, NSCoding, CALayerDelegate {
  init(frame frameRect: CGRect, device: MTLDevice?)
  weak var delegate: @sil_weak MTKViewDelegate?
  var device: MTLDevice?
  var currentDrawable: CAMetalDrawable? { get }
  var framebufferOnly: Bool
  @available(macOS 10.15, *)
  var depthStencilAttachmentTextureUsage: MTLTextureUsage
  @available(macOS 10.15, *)
  var multisampleColorAttachmentTextureUsage: MTLTextureUsage
  var presentsWithTransaction: Bool
  var colorPixelFormat: MTLPixelFormat
  var depthStencilPixelFormat: MTLPixelFormat
  var sampleCount: Int
  var clearColor: MTLClearColor
  var clearDepth: Double
  var clearStencil: UInt32
  var depthStencilTexture: MTLTexture? { get }
  var multisampleColorTexture: MTLTexture? { get }
  func releaseDrawables()
  var currentRenderPassDescriptor: MTLRenderPassDescriptor? { get }
  var preferredFramesPerSecond: Int
  var enableSetNeedsDisplay: Bool
  var autoResizeDrawable: Bool
  var drawableSize: CGSize
  @available(macOS 10.15, *)
  var preferredDrawableSize: CGSize { get }
  @available(macOS 10.15, *)
  var preferredDevice: MTLDevice? { get }
  var isPaused: Bool
  @available(macOS 10.12, *)
  var colorspace: CGColorSpace?
  func draw()
}
@available(macOS 10.11, *)
protocol MTKViewDelegate : NSObjectProtocol {
  func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize)
  func draw(in view: MTKView)
}
