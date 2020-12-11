
extension MTKTextureLoader {
  struct Error : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Option : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct CubeLayout : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Origin : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  typealias Callback = (MTLTexture?, Error?) -> Void
  @available(tvOS 10.0, *)
  typealias ArrayCallback = ([MTLTexture], Error?) -> Void
}
extension MTKTextureLoader.Error {
  @available(tvOS 9.0, *)
  static let domain: MTKTextureLoader.Error
  @available(tvOS 9.0, *)
  static let key: MTKTextureLoader.Error
}
extension MTKTextureLoader.Option {
  @available(tvOS 9.0, *)
  static let allocateMipmaps: MTKTextureLoader.Option
  @available(tvOS 10.0, *)
  static let generateMipmaps: MTKTextureLoader.Option
  @available(tvOS 9.0, *)
  static let SRGB: MTKTextureLoader.Option
  @available(tvOS 9.0, *)
  static let textureUsage: MTKTextureLoader.Option
  @available(tvOS 9.0, *)
  static let textureCPUCacheMode: MTKTextureLoader.Option
  @available(tvOS 10.0, *)
  static let textureStorageMode: MTKTextureLoader.Option
  @available(tvOS 10.0, *)
  static let cubeLayout: MTKTextureLoader.Option
  @available(tvOS 10.0, *)
  static let origin: MTKTextureLoader.Option
}
extension MTKTextureLoader.CubeLayout {
  @available(tvOS 10.0, *)
  static let vertical: MTKTextureLoader.CubeLayout
}
extension MTKTextureLoader.Origin {
  @available(tvOS 10.0, *)
  static let topLeft: MTKTextureLoader.Origin
  @available(tvOS 10.0, *)
  static let bottomLeft: MTKTextureLoader.Origin
  @available(tvOS 10.0, *)
  static let flippedVertically: MTKTextureLoader.Origin
}
@available(tvOS 9.0, *)
class MTKTextureLoader : NSObject {
  var device: MTLDevice { get }
  init(device: MTLDevice)
  func newTexture(URL: URL, options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.Callback)
  func newTexture(URL: URL, options: [MTKTextureLoader.Option : Any]? = nil) async throws -> MTLTexture
  @available(tvOS 10.0, *)
  func newTexture(name: String, scaleFactor: CGFloat, bundle: Bundle?, options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.Callback)
  @available(tvOS 10.0, *)
  func newTexture(name: String, scaleFactor: CGFloat, bundle: Bundle?, options: [MTKTextureLoader.Option : Any]? = nil) async throws -> MTLTexture
  @available(tvOS 10.0, *)
  func newTextures(URLs: [URL], options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.ArrayCallback)
  @available(tvOS 10.0, *)
  func newTextures(URLs: [URL], options: [MTKTextureLoader.Option : Any]? = nil) async throws -> [MTLTexture]
  @available(tvOS 10.0, *)
  func newTextures(names: [String], scaleFactor: CGFloat, bundle: Bundle?, options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.ArrayCallback)
  @available(tvOS 10.0, *)
  func newTextures(names: [String], scaleFactor: CGFloat, bundle: Bundle?, options: [MTKTextureLoader.Option : Any]? = nil) async throws -> [MTLTexture]
  func newTexture(data: Data, options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.Callback)
  func newTexture(data: Data, options: [MTKTextureLoader.Option : Any]? = nil) async throws -> MTLTexture
  func newTexture(cgImage: CGImage, options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.Callback)
  func newTexture(cgImage: CGImage, options: [MTKTextureLoader.Option : Any]? = nil) async throws -> MTLTexture
  @available(tvOS 10.0, *)
  func newTexture(texture: MDLTexture, options: [MTKTextureLoader.Option : Any]? = nil, completionHandler: @escaping MTKTextureLoader.Callback)
  @available(tvOS 10.0, *)
  func newTexture(texture: MDLTexture, options: [MTKTextureLoader.Option : Any]? = nil) async throws -> MTLTexture
  func newTexture(URL: URL, options: [MTKTextureLoader.Option : Any]? = nil) throws -> MTLTexture
  @available(tvOS 10.0, *)
  func newTextures(URLs: [URL], options: [MTKTextureLoader.Option : Any]? = nil, error: NSErrorPointer) -> [MTLTexture]
  func newTexture(data: Data, options: [MTKTextureLoader.Option : Any]? = nil) throws -> MTLTexture
  func newTexture(cgImage: CGImage, options: [MTKTextureLoader.Option : Any]? = nil) throws -> MTLTexture
  @available(tvOS 10.0, *)
  func newTexture(texture: MDLTexture, options: [MTKTextureLoader.Option : Any]? = nil) throws -> MTLTexture
  @available(tvOS 10.0, *)
  func newTexture(name: String, scaleFactor: CGFloat, bundle: Bundle?, options: [MTKTextureLoader.Option : Any]? = nil) throws -> MTLTexture
}
