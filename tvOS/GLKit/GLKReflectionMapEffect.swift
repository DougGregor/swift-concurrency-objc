
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKReflectionMapEffect : GLKBaseEffect, GLKNamedEffect {
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var matrix: GLKMatrix3
}
