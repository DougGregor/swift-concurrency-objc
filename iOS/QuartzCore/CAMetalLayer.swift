
protocol CAMetalDrawable : MTLDrawable {
  @available(iOS 8.0, *)
  var texture: MTLTexture { get }
  @available(iOS 8.0, *)
  var layer: CAMetalLayer { get }
}
@available(iOS 8.0, *)
class CAMetalLayer : CALayer {
  var device: MTLDevice?
  @available(iOS 13.0, *)
  var preferredDevice: MTLDevice? { get }
  var pixelFormat: MTLPixelFormat
  var framebufferOnly: Bool
  var drawableSize: CGSize
  func nextDrawable() -> CAMetalDrawable?
  @available(iOS 11.2, *)
  var maximumDrawableCount: Int
  var presentsWithTransaction: Bool
  var colorspace: CGColorSpace?
  @available(iOS 11.0, *)
  var allowsNextDrawableTimeout: Bool
}
