
@available(iOS 12.0, *)
class ARWorldMap : NSObject, NSCopying, NSSecureCoding {
  var center: simd_float3 { get }
  var extent: simd_float3 { get }
  var anchors: [ARAnchor]
  var rawFeaturePoints: ARPointCloud { get }
}
