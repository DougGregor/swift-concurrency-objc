
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferWidth: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferHeight: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferTarget: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferInternalFormat: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferMaximumMipmapLevel: CFString
typealias CVOpenGLBuffer = CVImageBuffer
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferCreate(_ allocator: CFAllocator?, _ width: Int, _ height: Int, _ attributes: CFDictionary?, _ bufferOut: UnsafeMutablePointer<CVOpenGLBuffer?>) -> CVReturn
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferGetAttributes(_ openGLBuffer: CVOpenGLBuffer) -> Unmanaged<CFDictionary>?
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferAttach(_ openGLBuffer: CVOpenGLBuffer, _ cglContext: CGLContextObj, _ face: GLenum, _ level: GLint, _ screen: GLint) -> CVReturn
