
@available(macOS 10.8, *)
enum GLKFogMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case exp
  case exp2
  case linear
}
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyFog : GLKEffectProperty {
  var enabled: GLboolean
  var mode: GLint
  var color: GLKVector4
  var density: GLfloat
  var start: GLfloat
  var end: GLfloat
}
