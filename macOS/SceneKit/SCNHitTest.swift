
@available(macOS 10.13, *)
enum SCNHitTestSearchMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case closest
  case all
  case any
}
struct SCNHitTestOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension SCNHitTestOption {
  static let clipToZRange: SCNHitTestOption
  static let backFaceCulling: SCNHitTestOption
  static let boundingBoxOnly: SCNHitTestOption
  static let ignoreChildNodes: SCNHitTestOption
  static let rootNode: SCNHitTestOption
  @available(macOS 10.9, *)
  static let ignoreHiddenNodes: SCNHitTestOption
  @available(macOS 10.12, *)
  static let categoryBitMask: SCNHitTestOption
  @available(macOS 10.13, *)
  static let searchMode: SCNHitTestOption
  @available(macOS 10.15, *)
  static let ignoreLightArea: SCNHitTestOption
  static let firstFoundOnly: SCNHitTestOption
  static let sortResults: SCNHitTestOption
}
class SCNHitTestResult : NSObject {
  var node: SCNNode { get }
  var geometryIndex: Int { get }
  var faceIndex: Int { get }
  var localCoordinates: SCNVector3 { get }
  var worldCoordinates: SCNVector3 { get }
  var localNormal: SCNVector3 { get }
  var worldNormal: SCNVector3 { get }
  var modelTransform: SCNMatrix4 { get }
  @available(macOS 10.12, *)
  var boneNode: SCNNode? { get }
  func textureCoordinates(withMappingChannel channel: Int) -> CGPoint
}
extension SCNHitTestResult {
  @available(macOS 10.15, *)
  var simdLocalCoordinates: simd_float3 { get }
  @available(macOS 10.15, *)
  var simdWorldCoordinates: simd_float3 { get }
  @available(macOS 10.15, *)
  var simdLocalNormal: simd_float3 { get }
  @available(macOS 10.15, *)
  var simdWorldNormal: simd_float3 { get }
  @available(macOS 10.15, *)
  var simdModelTransform: simd_float4x4 { get }
}
