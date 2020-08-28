
@available(iOS 14.0, *)
class NINearbyObject : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var discoveryToken: NIDiscoveryToken { get }
  var __distance: Float { get }
  var __direction: simd_float3 { get }
}

@available(iOS 14.0, *)
@available(macOS, unavailable)
extension NINearbyObject {
  var distance: Float? { get }
  var direction: simd_float3? { get }
}
