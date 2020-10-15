
protocol CAMetalDrawable : MTLDrawable {
  @available(macOS 10.11, *)
  var texture: MTLTexture { get }
  @available(macOS 10.11, *)
  var layer: CAMetalLayer { get }
}
@available(macOS 10.11, *)
class CAMetalLayer : CALayer {
  var device: MTLDevice?
  @available(macOS 10.15, *)
  var preferredDevice: MTLDevice? { get }
  var pixelFormat: MTLPixelFormat
  var framebufferOnly: Bool
  var drawableSize: CGSize
  func nextDrawable() -> CAMetalDrawable?
  @available(macOS 10.13.2, *)
  var maximumDrawableCount: Int
  var presentsWithTransaction: Bool
  var colorspace: CGColorSpace?
  var wantsExtendedDynamicRangeContent: Bool
  @available(macOS 10.15, *)
  var edrMetadata: CAEDRMetadata?
  @available(macOS 10.13, *)
  var displaySyncEnabled: Bool
  @available(macOS 10.13, *)
  var allowsNextDrawableTimeout: Bool
}
