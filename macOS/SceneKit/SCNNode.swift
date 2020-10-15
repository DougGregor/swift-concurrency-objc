
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(macOS 10.12, *)
enum SCNMovabilityHint : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fixed
  case movable
}
@available(macOS 10.13, *)
enum SCNNodeFocusBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case occluding
  case focusable
}
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume {
  /*not inherited*/ init(geometry: SCNGeometry?)
  func clone() -> Self
  @available(macOS 10.9, *)
  func flattenedClone() -> Self
  var name: String?
  var light: SCNLight?
  var camera: SCNCamera?
  var geometry: SCNGeometry?
  @available(macOS 10.9, *)
  var skinner: SCNSkinner?
  @available(macOS 10.9, *)
  var morpher: SCNMorpher?
  var transform: SCNMatrix4
  var worldTransform: SCNMatrix4 { get }
  @available(macOS 10.13, *)
  func setWorldTransform(_ worldTransform: SCNMatrix4)
  var position: SCNVector3
  @available(macOS 10.13, *)
  var worldPosition: SCNVector3
  var rotation: SCNVector4
  @available(macOS 10.10, *)
  var orientation: SCNQuaternion
  @available(macOS 10.13, *)
  var worldOrientation: SCNQuaternion
  @available(macOS 10.10, *)
  var eulerAngles: SCNVector3
  var scale: SCNVector3
  var pivot: SCNMatrix4
  var isHidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  @available(macOS 10.10, *)
  var castsShadow: Bool
  @available(macOS 10.12, *)
  var movabilityHint: SCNMovabilityHint
  var parent: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(_ child: SCNNode)
  func insertChildNode(_ child: SCNNode, at index: Int)
  func removeFromParentNode()
  func replaceChildNode(_ oldChild: SCNNode, with newChild: SCNNode)
  func childNode(withName name: String, recursively: Bool) -> SCNNode?
  func childNodes(passingTest predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  @available(macOS 10.10, *)
  func enumerateChildNodes(_ block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.12, *)
  func enumerateHierarchy(_ block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(macOS 10.9, *)
  func convertPosition(_ position: SCNVector3, to node: SCNNode?) -> SCNVector3
  @available(macOS 10.9, *)
  func convertPosition(_ position: SCNVector3, from node: SCNNode?) -> SCNVector3
  @available(macOS 10.13, *)
  func convertVector(_ vector: SCNVector3, to node: SCNNode?) -> SCNVector3
  @available(macOS 10.13, *)
  func convertVector(_ vector: SCNVector3, from node: SCNNode?) -> SCNVector3
  @available(macOS 10.9, *)
  func convertTransform(_ transform: SCNMatrix4, to node: SCNNode?) -> SCNMatrix4
  @available(macOS 10.9, *)
  func convertTransform(_ transform: SCNMatrix4, from node: SCNNode?) -> SCNMatrix4
  @available(macOS 10.10, *)
  var physicsBody: SCNPhysicsBody?
  @available(macOS 10.10, *)
  var physicsField: SCNPhysicsField?
  @available(macOS 10.9, *)
  var constraints: [SCNConstraint]?
  @available(macOS 10.9, *)
  var filters: [CIFilter]?
  var presentation: SCNNode { get }
  @available(macOS 10.10, *)
  var isPaused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  @available(macOS 10.9, *)
  func hitTestWithSegment(from pointA: SCNVector3, to pointB: SCNVector3, options: [String : Any]? = nil) -> [SCNHitTestResult]
  @available(macOS 10.10, *)
  var categoryBitMask: Int
  @available(macOS 10.13, *)
  var focusBehavior: SCNNodeFocusBehavior
}
extension SCNNode {
  @available(macOS 10.13, *)
  class var localUp: SCNVector3 { get }
  @available(macOS 10.13, *)
  class var localRight: SCNVector3 { get }
  @available(macOS 10.13, *)
  class var localFront: SCNVector3 { get }
  @available(macOS 10.13, *)
  var worldUp: SCNVector3 { get }
  @available(macOS 10.13, *)
  var worldRight: SCNVector3 { get }
  @available(macOS 10.13, *)
  var worldFront: SCNVector3 { get }
  @available(macOS 10.13, *)
  func look(at worldTarget: SCNVector3)
  @available(macOS 10.13, *)
  func look(at worldTarget: SCNVector3, up worldUp: SCNVector3, localFront: SCNVector3)
  @available(macOS 10.13, *)
  func localTranslate(by translation: SCNVector3)
  @available(macOS 10.13, *)
  func localRotate(by rotation: SCNQuaternion)
  @available(macOS 10.13, *)
  func rotate(by worldRotation: SCNQuaternion, aroundTarget worldTarget: SCNVector3)
}
protocol SCNNodeRendererDelegate : NSObjectProtocol {
  optional func renderNode(_ node: SCNNode, renderer: SCNRenderer, arguments: [String : Any])
}
extension SCNNode {
  @available(macOS 10.13, *)
  var simdTransform: simd_float4x4
  @available(macOS 10.13, *)
  var simdPosition: simd_float3
  @available(macOS 10.13, *)
  var simdRotation: simd_float4
  @available(macOS 10.13, *)
  var simdOrientation: simd_quatf
  @available(macOS 10.13, *)
  var simdEulerAngles: simd_float3
  @available(macOS 10.13, *)
  var simdScale: simd_float3
  @available(macOS 10.13, *)
  var simdPivot: simd_float4x4
  @available(macOS 10.13, *)
  var simdWorldPosition: simd_float3
  @available(macOS 10.13, *)
  var simdWorldOrientation: simd_quatf
  @available(macOS 10.13, *)
  var simdWorldTransform: simd_float4x4
  @available(macOS 10.13, *)
  func simdConvertPosition(_ position: simd_float3, to node: SCNNode?) -> simd_float3
  @available(macOS 10.13, *)
  func simdConvertPosition(_ position: simd_float3, from node: SCNNode?) -> simd_float3
  @available(macOS 10.13, *)
  func simdConvertVector(_ vector: simd_float3, to node: SCNNode?) -> simd_float3
  @available(macOS 10.13, *)
  func simdConvertVector(_ vector: simd_float3, from node: SCNNode?) -> simd_float3
  @available(macOS 10.13, *)
  func simdConvertTransform(_ transform: simd_float4x4, to node: SCNNode?) -> simd_float4x4
  @available(macOS 10.13, *)
  func simdConvertTransform(_ transform: simd_float4x4, from node: SCNNode?) -> simd_float4x4
  @available(macOS 10.13, *)
  class var simdLocalUp: simd_float3 { get }
  @available(macOS 10.13, *)
  class var simdLocalRight: simd_float3 { get }
  @available(macOS 10.13, *)
  class var simdLocalFront: simd_float3 { get }
  @available(macOS 10.13, *)
  var simdWorldUp: simd_float3 { get }
  @available(macOS 10.13, *)
  var simdWorldRight: simd_float3 { get }
  @available(macOS 10.13, *)
  var simdWorldFront: simd_float3 { get }
  @available(macOS 10.13, *)
  func simdLook(at worldTarget: simd_float3)
  @available(macOS 10.13, *)
  func simdLook(at worldTarget: simd_float3, up worldUp: simd_float3, localFront: simd_float3)
  @available(macOS 10.13, *)
  func simdLocalTranslate(by translation: simd_float3)
  @available(macOS 10.13, *)
  func simdLocalRotate(by rotation: simd_quatf)
  @available(macOS 10.13, *)
  func simdRotate(by worldRotation: simd_quatf, aroundTarget worldTarget: simd_float3)
}
