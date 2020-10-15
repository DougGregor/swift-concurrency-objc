
@available(iOS 11.0, *)
class ARPointCloud : NSObject, NSSecureCoding {
  var __count: Int { get }
  var __points: UnsafePointer<simd_float3> { get }
  var __identifiers: UnsafePointer<UInt64> { get }
}

@available(iOS 11.0, *)
extension ARPointCloud {
  @nonobjc var points: [vector_float3] { get }
  @nonobjc var identifiers: [UInt64] { get }
}
