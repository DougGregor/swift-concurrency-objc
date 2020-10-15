
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKSkyboxEffect : NSObject, GLKNamedEffect {
  func draw()
  var center: GLKVector3
  var xSize: GLfloat
  var ySize: GLfloat
  var zSize: GLfloat
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var transform: GLKEffectPropertyTransform { get }
  var label: String?
}
