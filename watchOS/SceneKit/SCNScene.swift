
typealias SCNSceneExportProgressHandler = (Float, Error?, UnsafeMutablePointer<ObjCBool>) -> Void
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
  static let upAxis: SCNScene.Attribute
}
class SCNScene : NSObject, NSSecureCoding {
  var rootNode: SCNNode { get }
  var physicsWorld: SCNPhysicsWorld { get }
  func attribute(forKey key: String) -> Any?
  func setAttribute(_ attribute: Any?, forKey key: String)
  var background: SCNMaterialProperty { get }
  @available(watchOS 3.0, *)
  var lightingEnvironment: SCNMaterialProperty { get }
  convenience init?(named name: String)
  convenience init?(named name: String, inDirectory directory: String?, options: [SCNSceneSource.LoadingOption : Any]? = nil)
  convenience init(url: URL, options: [SCNSceneSource.LoadingOption : Any]? = nil) throws
  var fogStartDistance: CGFloat
  var fogEndDistance: CGFloat
  var fogDensityExponent: CGFloat
  var fogColor: Any
  @available(watchOS 6.0, *)
  var wantsScreenSpaceReflection: Bool
  @available(watchOS 6.0, *)
  var screenSpaceReflectionSampleCount: Int
  @available(watchOS 6.0, *)
  var screenSpaceReflectionMaximumDistance: CGFloat
  @available(watchOS 6.0, *)
  var screenSpaceReflectionStride: CGFloat
  var isPaused: Bool
}
