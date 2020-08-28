
extension ARRaycastQuery {
  @available(iOS 13.0, *)
  enum Target : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case existingPlaneGeometry
    case existingPlaneInfinite
    case estimatedPlane
  }
  @available(iOS 13.0, *)
  enum TargetAlignment : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case horizontal
    case vertical
    case any
  }
}
@available(iOS 13.0, *)
class ARRaycastQuery : NSObject {
  var origin: simd_float3 { get }
  var direction: simd_float3 { get }
  var target: ARRaycastQuery.Target { get }
  var targetAlignment: ARRaycastQuery.TargetAlignment { get }
  init(origin: simd_float3, direction: simd_float3, allowing target: ARRaycastQuery.Target, alignment: ARRaycastQuery.TargetAlignment)
}
