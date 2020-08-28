
@available(iOS 11.0, *)
class ARLightEstimate : NSObject {
  var ambientIntensity: CGFloat { get }
  var ambientColorTemperature: CGFloat { get }
}
@available(iOS 11.0, *)
class ARDirectionalLightEstimate : ARLightEstimate {
  var sphericalHarmonicsCoefficients: Data { get }
  var primaryLightDirection: simd_float3 { get }
  var primaryLightIntensity: CGFloat { get }
}
