
extension EAGLContext {
  @available(iOS 11.0, *)
  func texImageIOSurface(_ ioSurface: IOSurfaceRef, target: Int, internalFormat: Int, width: UInt32, height: UInt32, format: Int, type: Int, plane: UInt32) -> Bool
}
