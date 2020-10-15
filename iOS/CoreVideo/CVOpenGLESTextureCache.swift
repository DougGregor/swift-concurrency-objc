
class CVOpenGLESTextureCache : _CFObject {
}
var COREVIDEO_USE_EAGLCONTEXT_CLASS_IN_API: Int32 { get }
typealias CVEAGLContext = EAGLContext
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
let kCVOpenGLESTextureCacheMaximumTextureAgeKey: CFString
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureCacheGetTypeID() -> CFTypeID
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureCacheCreate(_ allocator: CFAllocator?, _ cacheAttributes: CFDictionary?, _ eaglContext: CVEAGLContext, _ textureAttributes: CFDictionary?, _ cacheOut: UnsafeMutablePointer<CVOpenGLESTextureCache?>) -> CVReturn
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureCacheCreateTextureFromImage(_ allocator: CFAllocator?, _ textureCache: CVOpenGLESTextureCache, _ sourceImage: CVImageBuffer, _ textureAttributes: CFDictionary?, _ target: GLenum, _ internalFormat: GLint, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ type: GLenum, _ planeIndex: Int, _ textureOut: UnsafeMutablePointer<CVOpenGLESTexture?>) -> CVReturn
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureCacheFlush(_ textureCache: CVOpenGLESTextureCache, _ options: CVOptionFlags)
