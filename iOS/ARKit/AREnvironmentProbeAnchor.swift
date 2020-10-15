
@available(iOS 12.0, *)
class AREnvironmentProbeAnchor : ARAnchor {
  var environmentTexture: MTLTexture? { get }
  var extent: simd_float3 { get }
  init(transform: simd_float4x4, extent: simd_float3)
  init(name: String, transform: simd_float4x4, extent: simd_float3)
}
