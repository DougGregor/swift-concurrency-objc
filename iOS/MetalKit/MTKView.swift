
@available(iOS 9.0, *)
class MTKView : UIView, NSCoding, CALayerDelegate {
  init(frame frameRect: CGRect, device: MTLDevice?)
  weak var delegate: @sil_weak MTKViewDelegate?
  var device: MTLDevice?
  var currentDrawable: CAMetalDrawable? { get }
  var framebufferOnly: Bool
  @available(iOS 13.0, *)
  var depthStencilAttachmentTextureUsage: MTLTextureUsage
  @available(iOS 13.0, *)
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
  var preferredDrawableSize: CGSize { get }
  @available(iOS 13.0, *)
  var preferredDevice: MTLDevice? { get }
  var isPaused: Bool
  func draw()
}
@available(iOS 9.0, *)
protocol MTKViewDelegate : NSObjectProtocol {
  func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize)
  func draw(in view: MTKView)
}
