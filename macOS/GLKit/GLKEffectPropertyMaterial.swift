
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyMaterial : GLKEffectProperty {
  var ambientColor: GLKVector4
  var diffuseColor: GLKVector4
  var specularColor: GLKVector4
  var emissiveColor: GLKVector4
  var shininess: GLfloat
}
