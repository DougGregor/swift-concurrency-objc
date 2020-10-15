
typealias CVOpenGLESTexture = CVImageBuffer
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetTypeID() -> CFTypeID
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetTarget(_ image: CVOpenGLESTexture) -> GLenum
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetName(_ image: CVOpenGLESTexture) -> GLuint
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureIsFlipped(_ image: CVOpenGLESTexture) -> Bool
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetCleanTexCoords(_ image: CVOpenGLESTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)
