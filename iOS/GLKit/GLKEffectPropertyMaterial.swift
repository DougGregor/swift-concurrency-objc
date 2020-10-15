
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyMaterial : GLKEffectProperty {
  var ambientColor: GLKVector4
  var diffuseColor: GLKVector4
  var specularColor: GLKVector4
  var emissiveColor: GLKVector4
  var shininess: GLfloat
}
