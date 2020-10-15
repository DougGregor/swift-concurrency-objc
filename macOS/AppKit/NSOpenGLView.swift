
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "Please use MTKView instead.")
class NSOpenGLView : NSView {
  class func defaultPixelFormat() -> NSOpenGLPixelFormat
  init?(frame frameRect: NSRect, pixelFormat format: NSOpenGLPixelFormat?)
  var openGLContext: NSOpenGLContext?
  func clearGLContext()
  func update()
  func reshape()
  var pixelFormat: NSOpenGLPixelFormat?
  func prepareOpenGL()
}
extension NSView {
  @available(macOS, introduced: 10.7, deprecated: 10.14, message: "Use NSOpenGLView instead.")
  var wantsBestResolutionOpenGLSurface: Bool
}
extension NSView {
  @available(macOS, introduced: 10.11, deprecated: 10.14, message: "Use NSOpenGLView instead.")
  var wantsExtendedDynamicRangeOpenGLSurface: Bool
}
