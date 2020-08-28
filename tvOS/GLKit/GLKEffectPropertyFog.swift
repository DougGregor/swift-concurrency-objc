
@available(tvOS 5.0, *)
enum GLKFogMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case exp
  case exp2
  case linear
}
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyFog : GLKEffectProperty {
  var enabled: GLboolean
  var mode: GLint
  var color: GLKVector4
  var density: GLfloat
  var start: GLfloat
  var end: GLfloat
}
