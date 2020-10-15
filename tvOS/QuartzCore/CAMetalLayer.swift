
protocol CAMetalDrawable : MTLDrawable {
  @available(tvOS 8.0, *)
  var texture: MTLTexture { get }
  @available(tvOS 9.0, *)
  var layer: CAMetalLayer { get }
}
@available(tvOS 9.0, *)
class CAMetalLayer : CALayer {
  var device: MTLDevice?
  @available(tvOS 13.0, *)
  var preferredDevice: MTLDevice? { get }
  var pixelFormat: MTLPixelFormat
  var framebufferOnly: Bool
  var drawableSize: CGSize
  func nextDrawable() -> CAMetalDrawable?
  @available(tvOS 11.2, *)
  var maximumDrawableCount: Int
  var presentsWithTransaction: Bool
  var colorspace: CGColorSpace?
  @available(tvOS 11.0, *)
  var allowsNextDrawableTimeout: Bool
}
