
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyTransform : GLKEffectProperty {
  var modelviewMatrix: GLKMatrix4
  var projectionMatrix: GLKMatrix4
  var normalMatrix: GLKMatrix3 { get }
}
