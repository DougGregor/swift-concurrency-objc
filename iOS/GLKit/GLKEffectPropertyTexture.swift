
@available(iOS 5.0, *)
enum GLKTextureTarget : GLenum {
  init?(rawValue: GLenum)
  var rawValue: GLenum { get }
  case target2D
  case targetCubeMap
  case targetCt
}
@available(iOS 5.0, *)
enum GLKTextureEnvMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case replace
  case modulate
  case decal
}
@available(iOS, introduced: 5.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyTexture : GLKEffectProperty {
  var enabled: GLboolean
  var name: GLuint
  var target: GLKTextureTarget
  var envMode: GLKTextureEnvMode
}
