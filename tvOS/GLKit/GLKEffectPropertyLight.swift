
@available(tvOS 5.0, *)
enum GLKLightingType : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case perVertex
  case perPixel
}
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
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
