
@available(macOS, introduced: 10.5, deprecated: 10.14, message: "OpenGL is deprecated")
class CAOpenGLLayer : CALayer {
  var isAsynchronous: Bool
  func canDraw(inCGLContext ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>?) -> Bool
  func draw(inCGLContext ctx: CGLContextObj, pixelFormat pf: CGLPixelFormatObj, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>?)
  func copyCGLPixelFormat(forDisplayMask mask: UInt32) -> CGLPixelFormatObj
  func releaseCGLPixelFormat(_ pf: CGLPixelFormatObj)
  func copyCGLContext(forPixelFormat pf: CGLPixelFormatObj) -> CGLContextObj
  func releaseCGLContext(_ ctx: CGLContextObj)
  var colorspace: CGColorSpace?
  var wantsExtendedDynamicRangeContent: Bool
}
