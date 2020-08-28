
@available(macOS, introduced: 10.6, deprecated: 10.14, message: "Please use CAMetalLayer instead.")
class NSOpenGLLayer : CAOpenGLLayer {
  weak var view: @sil_weak NSView?
  var openGLPixelFormat: NSOpenGLPixelFormat?
  var openGLContext: NSOpenGLContext?
  func openGLPixelFormat(forDisplayMask mask: UInt32) -> NSOpenGLPixelFormat
  func openGLContext(for pixelFormat: NSOpenGLPixelFormat) -> NSOpenGLContext
  func canDraw(in context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>) -> Bool
  func draw(in context: NSOpenGLContext, pixelFormat: NSOpenGLPixelFormat, forLayerTime t: CFTimeInterval, displayTime ts: UnsafePointer<CVTimeStamp>)
}
