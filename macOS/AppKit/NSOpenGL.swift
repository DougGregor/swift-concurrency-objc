
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
enum NSOpenGLGlobalOption : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
  case formatCacheSize
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
  case clearFormatCache
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
  case retainRenderers
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
  case useBuildCache
}

extension NSOpenGLGlobalOption {
  @available(swift 4)
  var globalValue: GLint
}
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
func __NSOpenGLSetOption(_ pname: NSOpenGLGlobalOption, _ param: GLint)
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
func __NSOpenGLGetOption(_ pname: NSOpenGLGlobalOption, _ param: UnsafeMutablePointer<GLint>)
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
func __NSOpenGLGetVersion(_ major: UnsafeMutablePointer<GLint>?, _ minor: UnsafeMutablePointer<GLint>?)
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAllRenderers: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFATripleBuffer: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFADoubleBuffer: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAuxBuffers: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAColorSize: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAlphaSize: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFADepthSize: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAStencilSize: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAccumSize: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAMinimumPolicy: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAMaximumPolicy: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFASampleBuffers: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFASamples: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAuxDepthStencil: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAColorFloat: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAMultisample: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFASupersample: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFASampleAlpha: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFARendererID: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFANoRecovery: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAccelerated: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAClosestPolicy: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFABackingStore: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAScreenMask: Int { get }
@available(macOS, introduced: 10.5, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAllowOfflineRenderers: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAAcceleratedCompute: Int { get }
@available(macOS, introduced: 10.7, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAOpenGLProfile: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLPFAVirtualScreenCount: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.12)
var NSOpenGLPFAStereo: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
typealias NSOpenGLPixelFormatAttribute = UInt32
@available(macOS, introduced: 10.7, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLProfileVersionLegacy: Int { get }
@available(macOS, introduced: 10.7, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLProfileVersion3_2Core: Int { get }
@available(macOS, introduced: 10.10, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
var NSOpenGLProfileVersion4_1Core: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "Please use Metal or MetalKit.")
class NSOpenGLPixelFormat : NSObject, NSCoding {
  @available(macOS 10.6, *)
  init?(cglPixelFormatObj format: CGLPixelFormatObj)
  convenience init?(attributes attribs: UnsafePointer<NSOpenGLPixelFormatAttribute>)
  func getValues(_ vals: UnsafeMutablePointer<GLint>, forAttribute attrib: NSOpenGLPixelFormatAttribute, forVirtualScreen screen: GLint)
  var numberOfVirtualScreens: GLint { get }
  var cglPixelFormatObj: CGLPixelFormatObj? { get }
}
extension NSOpenGLContext {
  @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
  enum Parameter : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case swapInterval
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case surfaceOrder
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case surfaceOpacity
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case surfaceBackingSize
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case reclaimResources
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case currentRendererID
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case gpuVertexProcessing
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case gpuFragmentProcessing
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case hasDrawable
    @available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated; please use Metal and MetalKit.  (Define GL_SILENCE_DEPRECATION to silence these warnings.)")
    case mpSwapsInFlight
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case swapRectangle
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case swapRectangleEnable
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case rasterizationEnable
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case stateValidation
    @available(macOS, introduced: 10.0, deprecated: 10.14)
    case surfaceSurfaceVolatile
  }
}
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "Please use Metal or MetalKit.")
class NSOpenGLContext : NSObject, NSLocking {
  init?(format: NSOpenGLPixelFormat, share: NSOpenGLContext?)
  @available(macOS 10.6, *)
  init?(cglContextObj context: CGLContextObj)
  @available(macOS 10.10, *)
  var pixelFormat: NSOpenGLPixelFormat { get }
  @available(macOS, introduced: 10.0, deprecated: 10.14)
  weak var view: @sil_weak NSView?
  func clearDrawable()
  func update()
  func flushBuffer()
  func makeCurrentContext()
  class func clearCurrentContext()
  class var current: NSOpenGLContext? { get }
  func setValues(_ vals: UnsafePointer<GLint>, for param: NSOpenGLContext.Parameter)
  func getValues(_ vals: UnsafeMutablePointer<GLint>, for param: NSOpenGLContext.Parameter)
  var currentVirtualScreen: GLint
  var cglContextObj: CGLContextObj? { get }
}

extension NSOpenGLContext {
  @available(swift 4)
  static var openGLVersion: (major: GLint, minor: GLint) { get }
}
extension NSOpenGLContext {
}
