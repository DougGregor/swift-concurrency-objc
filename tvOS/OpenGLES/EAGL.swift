
var EAGL_MAJOR_VERSION: Int32 { get }
var EAGL_MINOR_VERSION: Int32 { get }
enum EAGLRenderingAPI : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case openGLES1
  case openGLES2
  case openGLES3
}
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
func EAGLGetVersion(_ major: UnsafeMutablePointer<UInt32>, _ minor: UnsafeMutablePointer<UInt32>)
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class EAGLSharegroup : NSObject {
  @available(tvOS 6.0, *)
  var debugLabel: String?
}
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class EAGLContext : NSObject {
  convenience init?(api: EAGLRenderingAPI)
  init?(api: EAGLRenderingAPI, sharegroup: EAGLSharegroup)
  class func setCurrent(_ context: EAGLContext?) -> Bool
  class func current() -> EAGLContext?
  var api: EAGLRenderingAPI { get }
  var sharegroup: EAGLSharegroup { get }
  @available(tvOS 6.0, *)
  var debugLabel: String?
  @available(tvOS 7.1, *)
  var isMultiThreaded: Bool
}
