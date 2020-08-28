
typealias CVOpenGLESTexture = CVImageBuffer
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetTypeID() -> CFTypeID
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetTarget(_ image: CVOpenGLESTexture) -> GLenum
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetName(_ image: CVOpenGLESTexture) -> GLuint
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureIsFlipped(_ image: CVOpenGLESTexture) -> Bool
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGL/OpenGLES is no longer supported. Use Metal APIs instead. (Define COREVIDEO_SILENCE_GL_DEPRECATION to silence these warnings)")
func CVOpenGLESTextureGetCleanTexCoords(_ image: CVOpenGLESTexture, _ lowerLeft: UnsafeMutablePointer<GLfloat>, _ lowerRight: UnsafeMutablePointer<GLfloat>, _ upperRight: UnsafeMutablePointer<GLfloat>, _ upperLeft: UnsafeMutablePointer<GLfloat>)
