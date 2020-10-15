
class IOSurfaceRef {
}
@available(macOS 10.6, *)
func CGLTexImageIOSurface2D(_ ctx: CGLContextObj, _ target: GLenum, _ internal_format: GLenum, _ width: GLsizei, _ height: GLsizei, _ format: GLenum, _ type: GLenum, _ ioSurface: IOSurfaceRef, _ plane: GLuint) -> CGLError
