
typealias SCNSceneExportProgressHandler = (Float, Error?, UnsafeMutablePointer<ObjCBool>) -> Void
@available(macOS 10.9, *)
let SCNSceneExportDestinationURL: String
extension SCNScene {
  struct Attribute : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNScene.Attribute {
  static let startTime: SCNScene.Attribute
  static let endTime: SCNScene.Attribute
  static let frameRate: SCNScene.Attribute
  @available(macOS 10.10, *)
  static let upAxis: SCNScene.Attribute
}
class SCNScene : NSObject, NSSecureCoding {
  var rootNode: SCNNode { get }
  @available(macOS 10.10, *)
  var physicsWorld: SCNPhysicsWorld { get }
  func attribute(forKey key: String) -> Any?
  func setAttribute(_ attribute: Any?, forKey key: String)
  @available(macOS 10.9, *)
  var background: SCNMaterialProperty { get }
  @available(macOS 10.12, *)
  var lightingEnvironment: SCNMaterialProperty { get }
  @available(macOS 10.9, *)
  convenience init?(named name: String)
  @available(macOS 10.10, *)
  convenience init?(named name: String, inDirectory directory: String?, options: [SCNSceneSource.LoadingOption : Any]? = nil)
  convenience init(url: URL, options: [SCNSceneSource.LoadingOption : Any]? = nil) throws
  @available(macOS 10.9, *)
  func write(to url: URL, options: [String : Any]? = nil, delegate: SCNSceneExportDelegate?, progressHandler: SCNSceneExportProgressHandler? = nil) -> Bool
  @available(macOS 10.10, *)
  var fogStartDistance: CGFloat
  @available(macOS 10.10, *)
  var fogEndDistance: CGFloat
  @available(macOS 10.10, *)
  var fogDensityExponent: CGFloat
  @available(macOS 10.10, *)
  var fogColor: Any
  @available(macOS 10.15, *)
  var wantsScreenSpaceReflection: Bool
  @available(macOS 10.15, *)
  var screenSpaceReflectionSampleCount: Int
  @available(macOS 10.15, *)
  var screenSpaceReflectionMaximumDistance: CGFloat
  @available(macOS 10.15, *)
  var screenSpaceReflectionStride: CGFloat
  @available(macOS 10.10, *)
  var isPaused: Bool
}
@available(macOS 10.9, *)
protocol SCNSceneExportDelegate : NSObjectProtocol {
  @available(macOS 10.9, *)
  optional func write(_ image: NSImage, withSceneDocumentURL documentURL: URL, originalImageURL: URL?) -> URL?
}
