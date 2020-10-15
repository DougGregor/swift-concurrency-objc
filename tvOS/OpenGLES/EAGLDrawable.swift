
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
let kEAGLDrawablePropertyRetainedBacking: String
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
let kEAGLDrawablePropertyColorFormat: String
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
let kEAGLColorFormatRGBA8: String
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
let kEAGLColorFormatRGB565: String
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
let kEAGLColorFormatSRGBA8: String
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
protocol EAGLDrawable {
  var drawableProperties: [String : Any]? { get set }
}
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
extension EAGLContext {
  func renderbufferStorage(_ target: Int, from drawable: EAGLDrawable?) -> Bool
  func presentRenderbuffer(_ target: Int) -> Bool
  func presentRenderbuffer(_ target: Int, atTime presentationTime: CFTimeInterval) -> Bool
  func presentRenderbuffer(_ target: Int, afterMinimumDuration duration: CFTimeInterval) -> Bool
}
