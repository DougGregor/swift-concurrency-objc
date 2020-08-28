
@available(iOS 13.0, *)
class ARRaycastResult : NSObject {
  var worldTransform: simd_float4x4 { get }
  var target: ARRaycastQuery.Target { get }
  var targetAlignment: ARRaycastQuery.TargetAlignment { get }
  var anchor: ARAnchor? { get }
}
