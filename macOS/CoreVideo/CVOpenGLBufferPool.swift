
class CVOpenGLBufferPool : _CFObject {
}
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferPoolMinimumBufferCountKey: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLBufferPoolMaximumBufferAgeKey: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferPoolGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferPoolCreate(_ allocator: CFAllocator?, _ poolAttributes: CFDictionary?, _ openGLBufferAttributes: CFDictionary?, _ poolOut: UnsafeMutablePointer<CVOpenGLBufferPool?>) -> CVReturn
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferPoolGetAttributes(_ pool: CVOpenGLBufferPool) -> Unmanaged<CFDictionary>?
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferPoolGetOpenGLBufferAttributes(_ pool: CVOpenGLBufferPool) -> Unmanaged<CFDictionary>?
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLBufferPoolCreateOpenGLBuffer(_ allocator: CFAllocator?, _ openGLBufferPool: CVOpenGLBufferPool, _ openGLBufferOut: UnsafeMutablePointer<CVOpenGLBuffer?>) -> CVReturn
