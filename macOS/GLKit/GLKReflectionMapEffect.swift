
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKReflectionMapEffect : GLKBaseEffect, GLKNamedEffect {
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var matrix: GLKMatrix3
}
