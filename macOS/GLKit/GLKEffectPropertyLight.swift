
@available(macOS 10.8, *)
enum GLKLightingType : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case perVertex
  case perPixel
}
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyLight : GLKEffectProperty {
  var enabled: GLboolean
  var position: GLKVector4
  var ambientColor: GLKVector4
  var diffuseColor: GLKVector4
  var specularColor: GLKVector4
  var spotDirection: GLKVector3
  var spotExponent: GLfloat
  var spotCutoff: GLfloat
  var constantAttenuation: GLfloat
  var linearAttenuation: GLfloat
  var quadraticAttenuation: GLfloat
  var transform: GLKEffectPropertyTransform
}
