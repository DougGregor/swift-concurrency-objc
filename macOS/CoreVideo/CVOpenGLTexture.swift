
typealias CVOpenGLTexture = CVImageBuffer
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureGetTypeID() -> CFTypeID
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureGetTarget(_ image: CVOpenGLTexture) -> GLenum
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureGetName(_ image: CVOpenGLTexture) -> GLuint
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureIsFlipped(_ image: CVOpenGLTexture) -> Bool
@available(macOS, introduced: 10.4, deprecated: 10.14, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLTextureGetCleanTexCoords(_ image: CVOpenGLTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)
