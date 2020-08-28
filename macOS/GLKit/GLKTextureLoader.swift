
@available(macOS 10.8, *)
let GLKTextureLoaderApplyPremultiplication: String
@available(macOS 10.8, *)
let GLKTextureLoaderGenerateMipmaps: String
@available(macOS 10.8, *)
let GLKTextureLoaderOriginBottomLeft: String
let GLKTextureLoaderGrayscaleAsAlpha: String
@available(macOS, introduced: 10.9, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
let GLKTextureLoaderSRGB: String
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
let GLKTextureLoaderErrorDomain: String
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
let GLKTextureLoaderErrorKey: String
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
let GLKTextureLoaderGLErrorKey: String
@available(macOS 10.8, *)
struct GLKTextureLoaderError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var fileOrURLNotFound: GLKTextureLoaderError.Code { get }
  static var invalidNSData: GLKTextureLoaderError.Code { get }
  static var invalidCGImage: GLKTextureLoaderError.Code { get }
  static var unknownPathType: GLKTextureLoaderError.Code { get }
  static var unknownFileType: GLKTextureLoaderError.Code { get }
  static var pvrAtlasUnsupported: GLKTextureLoaderError.Code { get }
  static var cubeMapInvalidNumFiles: GLKTextureLoaderError.Code { get }
  static var compressedTextureUpload: GLKTextureLoaderError.Code { get }
  static var uncompressedTextureUpload: GLKTextureLoaderError.Code { get }
  static var unsupportedCubeMapDimensions: GLKTextureLoaderError.Code { get }
  static var unsupportedBitDepth: GLKTextureLoaderError.Code { get }
  static var unsupportedPVRFormat: GLKTextureLoaderError.Code { get }
  static var dataPreprocessingFailure: GLKTextureLoaderError.Code { get }
  static var mipmapUnsupported: GLKTextureLoaderError.Code { get }
  static var unsupportedOrientation: GLKTextureLoaderError.Code { get }
  static var reorientationFailure: GLKTextureLoaderError.Code { get }
  static var alphaPremultiplicationFailure: GLKTextureLoaderError.Code { get }
  static var invalidEAGLContext: GLKTextureLoaderError.Code { get }
  static var incompatibleFormatSRGB: GLKTextureLoaderError.Code { get }
  static var unsupportedTextureTarget: GLKTextureLoaderError.Code { get }
}
@available(macOS 10.8, *)
enum GLKTextureInfoAlphaState : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case none
  case nonPremultiplied
  case premultiplied
}
@available(macOS 10.8, *)
enum GLKTextureInfoOrigin : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case unknown
  case topLeft
  case bottomLeft
}
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKTextureInfo : NSObject, NSCopying {
  var name: GLuint { get }
  var target: GLenum { get }
  var width: GLuint { get }
  var height: GLuint { get }
  var depth: GLuint { get }
  var alphaState: GLKTextureInfoAlphaState { get }
  var textureOrigin: GLKTextureInfoOrigin { get }
  var containsMipmaps: Bool { get }
  var mimapLevelCount: GLuint { get }
  var arrayLength: GLuint { get }
}
typealias GLKTextureLoaderCallback = (GLKTextureInfo?, Error?) -> Void
@available(macOS, introduced: 10.8, deprecated: 10.14, message: "OpenGL API deprecated. (Define GL_SILENCE_DEPRECATION to silence these warnings)")
class GLKTextureLoader : NSObject {
  class func texture(withContentsOfFile path: String, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func texture(withContentsOf url: URL, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func texture(withName name: String, scaleFactor: CGFloat, bundle: Bundle?, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func texture(withContentsOf data: Data, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func texture(with cgImage: CGImage, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func cubeMap(withContentsOfFiles paths: [Any], options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func cubeMap(withContentsOfFile path: String, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  class func cubeMap(withContentsOf url: URL, options: [String : NSNumber]? = nil) throws -> GLKTextureInfo
  init(share context: NSOpenGLContext)
  func texture(withContentsOfFile path: String, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func texture(withContentsOf url: URL, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func texture(withName name: String, scaleFactor: CGFloat, bundle: Bundle?, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func texture(withContentsOf data: Data, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func texture(with cgImage: CGImage, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func cubeMap(withContentsOfFiles paths: [Any], options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func cubeMap(withContentsOfFile path: String, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
  func cubeMap(withContentsOf url: URL, options: [String : NSNumber]? = nil, queue: DispatchQueue?, completionHandler block: @escaping GLKTextureLoaderCallback)
}
