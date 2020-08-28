
class CVOpenGLTextureCache : _CFObject {
}
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLTextureCacheChromaSamplingModeKey: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLTextureCacheChromaSamplingModeAutomatic: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLTextureCacheChromaSamplingModeHighestQuality: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLTextureCacheChromaSamplingModeBestPerformance: CFString
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureCacheGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureCacheCreate(_ allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ cglContext: CGLContextObj, _ cglPixelFormat: CGLPixelFormatObj, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVOpenGLTextureCache?>) -> CVReturn
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureCacheCreateTextureFromImage(_ allocator: CFAllocator?, _ textureCache: CVOpenGLTextureCache, _ sourceImage: CVImageBuffer, _ attributes: CFDictionary?, _ textureOut: UnsafeMutablePointer<CVOpenGLTexture?>) -> CVReturn
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureCacheFlush(_ textureCache: CVOpenGLTextureCache, _ options: CVOptionFlags)
