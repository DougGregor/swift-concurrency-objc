
var CGL_VERSION_1_0: Int32 { get }
var CGL_VERSION_1_1: Int32 { get }
var CGL_VERSION_1_2: Int32 { get }
var CGL_VERSION_1_3: Int32 { get }
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLChoosePixelFormat(_ attribs: UnsafePointer<CGLPixelFormatAttribute>, _ pix: UnsafeMutablePointer<CGLPixelFormatObj?>, _ npix: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLDestroyPixelFormat(_ pix: CGLPixelFormatObj) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLDescribePixelFormat(_ pix: CGLPixelFormatObj, _ pix_num: GLint, _ attrib: CGLPixelFormatAttribute, _ value: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS 10.5, *)
func CGLReleasePixelFormat(_ pix: CGLPixelFormatObj)
@available(macOS 10.5, *)
func CGLRetainPixelFormat(_ pix: CGLPixelFormatObj) -> CGLPixelFormatObj
@available(macOS 10.5, *)
func CGLGetPixelFormatRetainCount(_ pix: CGLPixelFormatObj) -> GLuint
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLQueryRendererInfo(_ display_mask: GLuint, _ rend: UnsafeMutablePointer<CGLRendererInfoObj?>, _ nrend: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLDestroyRendererInfo(_ rend: CGLRendererInfoObj) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLDescribeRenderer(_ rend: CGLRendererInfoObj, _ rend_num: GLint, _ prop: CGLRendererProperty, _ value: UnsafeMutablePointer<GLint>?) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLCreateContext(_ pix: CGLPixelFormatObj, _ share: CGLContextObj?, _ ctx: UnsafeMutablePointer<CGLContextObj?>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLDestroyContext(_ ctx: CGLContextObj) -> CGLError
func CGLRetainContext(_ ctx: CGLContextObj) -> CGLContextObj
func CGLReleaseContext(_ ctx: CGLContextObj)
@available(macOS 10.5, *)
func CGLGetContextRetainCount(_ ctx: CGLContextObj) -> GLuint
@available(macOS 10.5, *)
func CGLGetPixelFormat(_ ctx: CGLContextObj) -> CGLPixelFormatObj?
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLClearDrawable(_ ctx: CGLContextObj) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLFlushDrawable(_ ctx: CGLContextObj) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLEnable(_ ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLDisable(_ ctx: CGLContextObj, _ pname: CGLContextEnable) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLIsEnabled(_ ctx: CGLContextObj, _ pname: CGLContextEnable, _ enable: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLSetParameter(_ ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafePointer<GLint>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLGetParameter(_ ctx: CGLContextObj, _ pname: CGLContextParameter, _ params: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLSetVirtualScreen(_ ctx: CGLContextObj, _ screen: GLint) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLGetVirtualScreen(_ ctx: CGLContextObj, _ screen: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS 10.7, *)
func CGLUpdateContext(_ ctx: CGLContextObj) -> CGLError
@available(macOS 10.6, *)
func CGLSetGlobalOption(_ pname: CGLGlobalOption, _ params: UnsafePointer<GLint>?) -> CGLError
@available(macOS 10.6, *)
func CGLGetGlobalOption(_ pname: CGLGlobalOption, _ params: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLSetOption(_ pname: CGLGlobalOption, _ param: GLint) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLGetOption(_ pname: CGLGlobalOption, _ param: UnsafeMutablePointer<GLint>) -> CGLError
@available(macOS 10.4, *)
func CGLLockContext(_ ctx: CGLContextObj) -> CGLError
@available(macOS 10.4, *)
func CGLUnlockContext(_ ctx: CGLContextObj) -> CGLError
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLGetVersion(_ majorvers: UnsafeMutablePointer<GLint>?, _ minorvers: UnsafeMutablePointer<GLint>?)
@available(macOS, introduced: 10.0, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
func CGLErrorString(_ error: CGLError) -> UnsafePointer<CChar>
