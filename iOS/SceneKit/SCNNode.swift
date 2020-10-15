
let SCNModelTransform: String
let SCNViewTransform: String
let SCNProjectionTransform: String
let SCNNormalTransform: String
let SCNModelViewTransform: String
let SCNModelViewProjectionTransform: String
@available(iOS 10.0, *)
enum SCNMovabilityHint : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fixed
  case movable
}
@available(iOS 11.0, *)
enum SCNNodeFocusBehavior : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case occluding
  case focusable
}
class SCNNode : NSObject, NSCopying, NSSecureCoding, SCNAnimatable, SCNActionable, SCNBoundingVolume, UIFocusItem {
  /*not inherited*/ init(geometry: SCNGeometry?)
  func clone() -> Self
  func flattenedClone() -> Self
  var name: String?
  var light: SCNLight?
  var camera: SCNCamera?
  var geometry: SCNGeometry?
  var skinner: SCNSkinner?
  var morpher: SCNMorpher?
  var transform: SCNMatrix4
  var worldTransform: SCNMatrix4 { get }
  @available(iOS 11.0, *)
  func setWorldTransform(_ worldTransform: SCNMatrix4)
  var position: SCNVector3
  @available(iOS 11.0, *)
  var worldPosition: SCNVector3
  var rotation: SCNVector4
  var orientation: SCNQuaternion
  @available(iOS 11.0, *)
  var worldOrientation: SCNQuaternion
  var eulerAngles: SCNVector3
  var scale: SCNVector3
  var pivot: SCNMatrix4
  var isHidden: Bool
  var opacity: CGFloat
  var renderingOrder: Int
  var castsShadow: Bool
  @available(iOS 10.0, *)
  var movabilityHint: SCNMovabilityHint
  var parent: SCNNode? { get }
  var childNodes: [SCNNode] { get }
  func addChildNode(_ child: SCNNode)
  func insertChildNode(_ child: SCNNode, at index: Int)
  func removeFromParentNode()
  func replaceChildNode(_ oldChild: SCNNode, with newChild: SCNNode)
  func childNode(withName name: String, recursively: Bool) -> SCNNode?
  func childNodes(passingTest predicate: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Bool) -> [SCNNode]
  func enumerateChildNodes(_ block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 10.0, *)
  func enumerateHierarchy(_ block: (SCNNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  func convertPosition(_ position: SCNVector3, to node: SCNNode?) -> SCNVector3
  func convertPosition(_ position: SCNVector3, from node: SCNNode?) -> SCNVector3
  @available(iOS 11.0, *)
  func convertVector(_ vector: SCNVector3, to node: SCNNode?) -> SCNVector3
  @available(iOS 11.0, *)
  func convertVector(_ vector: SCNVector3, from node: SCNNode?) -> SCNVector3
  func convertTransform(_ transform: SCNMatrix4, to node: SCNNode?) -> SCNMatrix4
  func convertTransform(_ transform: SCNMatrix4, from node: SCNNode?) -> SCNMatrix4
  var physicsBody: SCNPhysicsBody?
  var physicsField: SCNPhysicsField?
  var constraints: [SCNConstraint]?
  var filters: [CIFilter]?
  var presentation: SCNNode { get }
  var isPaused: Bool
  unowned(unsafe) var rendererDelegate: @sil_unmanaged SCNNodeRendererDelegate?
  func hitTestWithSegment(from pointA: SCNVector3, to pointB: SCNVector3, options: [String : Any]? = nil) -> [SCNHitTestResult]
  var categoryBitMask: Int
  @available(iOS 11.0, *)
  var focusBehavior: SCNNodeFocusBehavior
}
extension SCNNode {
  @available(iOS 11.0, *)
  class var localUp: SCNVector3 { get }
  @available(iOS 11.0, *)
  class var localRight: SCNVector3 { get }
  @available(iOS 11.0, *)
  class var localFront: SCNVector3 { get }
  @available(iOS 11.0, *)
  var worldUp: SCNVector3 { get }
  @available(iOS 11.0, *)
  var worldRight: SCNVector3 { get }
  @available(iOS 11.0, *)
  var worldFront: SCNVector3 { get }
  @available(iOS 11.0, *)
  func look(at worldTarget: SCNVector3)
  @available(iOS 11.0, *)
  func look(at worldTarget: SCNVector3, up worldUp: SCNVector3, localFront: SCNVector3)
  @available(iOS 11.0, *)
  func localTranslate(by translation: SCNVector3)
  @available(iOS 11.0, *)
  func localRotate(by rotation: SCNQuaternion)
  @available(iOS 11.0, *)
  func rotate(by worldRotation: SCNQuaternion, aroundTarget worldTarget: SCNVector3)
}
protocol SCNNodeRendererDelegate : NSObjectProtocol {
  optional func renderNode(_ node: SCNNode, renderer: SCNRenderer, arguments: [String : Any])
}
extension SCNNode {
  @available(iOS 11.0, *)
  var simdTransform: simd_float4x4
  @available(iOS 11.0, *)
  var simdPosition: simd_float3
  @available(iOS 11.0, *)
  var simdRotation: simd_float4
  @available(iOS 11.0, *)
  var simdOrientation: simd_quatf
  @available(iOS 11.0, *)
  var simdEulerAngles: simd_float3
  @available(iOS 11.0, *)
  var simdScale: simd_float3
  @available(iOS 11.0, *)
  var simdPivot: simd_float4x4
  @available(iOS 11.0, *)
  var simdWorldPosition: simd_float3
  @available(iOS 11.0, *)
  var simdWorldOrientation: simd_quatf
  @available(iOS 11.0, *)
  var simdWorldTransform: simd_float4x4
  @available(iOS 11.0, *)
  func simdConvertPosition(_ position: simd_float3, to node: SCNNode?) -> simd_float3
  @available(iOS 11.0, *)
  func simdConvertPosition(_ position: simd_float3, from node: SCNNode?) -> simd_float3
  @available(iOS 11.0, *)
  func simdConvertVector(_ vector: simd_float3, to node: SCNNode?) -> simd_float3
  @available(iOS 11.0, *)
  func simdConvertVector(_ vector: simd_float3, from node: SCNNode?) -> simd_float3
  @available(iOS 11.0, *)
  func simdConvertTransform(_ transform: simd_float4x4, to node: SCNNode?) -> simd_float4x4
  @available(iOS 11.0, *)
  func simdConvertTransform(_ transform: simd_float4x4, from node: SCNNode?) -> simd_float4x4
  @available(iOS 11.0, *)
  class var simdLocalUp: simd_float3 { get }
  @available(iOS 11.0, *)
  class var simdLocalRight: simd_float3 { get }
  @available(iOS 11.0, *)
  class var simdLocalFront: simd_float3 { get }
  @available(iOS 11.0, *)
  var simdWorldUp: simd_float3 { get }
  @available(iOS 11.0, *)
  var simdWorldRight: simd_float3 { get }
  @available(iOS 11.0, *)
  var simdWorldFront: simd_float3 { get }
  @available(iOS 11.0, *)
  func simdLook(at worldTarget: simd_float3)
  @available(iOS 11.0, *)
  func simdLook(at worldTarget: simd_float3, up worldUp: simd_float3, localFront: simd_float3)
  @available(iOS 11.0, *)
  func simdLocalTranslate(by translation: simd_float3)
  @available(iOS 11.0, *)
  func simdLocalRotate(by rotation: simd_quatf)
  @available(iOS 11.0, *)
  func simdRotate(by worldRotation: simd_quatf, aroundTarget worldTarget: simd_float3)
}
