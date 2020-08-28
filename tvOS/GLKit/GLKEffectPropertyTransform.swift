
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyTransform : GLKEffectProperty {
  var modelviewMatrix: GLKMatrix4
  var projectionMatrix: GLKMatrix4
  var normalMatrix: GLKMatrix3 { get }
}
