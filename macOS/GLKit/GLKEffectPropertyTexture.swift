
@available(macOS 10.8, *)
enum GLKTextureTarget : GLenum {
  init?(rawValue: GLenum)
  var rawValue: GLenum { get }
  case target2D
  case targetCubeMap
  case targetCt
}
@available(macOS 10.8, *)
enum GLKTextureEnvMode : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case replace
  case modulate
  case decal
}
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKEffectPropertyTexture : GLKEffectProperty {
  var enabled: GLboolean
  var name: GLuint
  var target: GLKTextureTarget
  var envMode: GLKTextureEnvMode
}
