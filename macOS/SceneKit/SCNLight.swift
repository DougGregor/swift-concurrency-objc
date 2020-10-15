
extension SCNLight {
  struct LightType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension SCNLight.LightType {
  static let ambient: SCNLight.LightType
  static let omni: SCNLight.LightType
  static let directional: SCNLight.LightType
  static let spot: SCNLight.LightType
  @available(macOS 10.12, *)
  static let IES: SCNLight.LightType
  @available(macOS 10.12, *)
  static let probe: SCNLight.LightType
  @available(macOS 10.15, *)
  static let area: SCNLight.LightType
}
@available(macOS 10.10, *)
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case deferred
  case modulated
}
@available(macOS 10.15, *)
enum SCNLightProbeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case irradiance
  case radiance
}
@available(macOS 10.15, *)
enum SCNLightProbeUpdateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case never
  case realtime
}
@available(macOS 10.15, *)
enum SCNLightAreaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case rectangle
  case polygon
}
class SCNLight : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  var type: SCNLight.LightType
  var color: Any
  @available(macOS 10.12, *)
  var temperature: CGFloat
  @available(macOS 10.12, *)
  var intensity: CGFloat
  var name: String?
  var castsShadow: Bool
  var shadowColor: Any
  var shadowRadius: CGFloat
  @available(macOS 10.10, *)
  var shadowMapSize: CGSize
  @available(macOS 10.10, *)
  var shadowSampleCount: Int
  @available(macOS 10.10, *)
  var shadowMode: SCNShadowMode
  @available(macOS 10.10, *)
  var shadowBias: CGFloat
  @available(macOS 10.13, *)
  var automaticallyAdjustsShadowProjection: Bool
  @available(macOS 10.13, *)
  var maximumShadowDistance: CGFloat
  @available(macOS 10.13, *)
  var forcesBackFaceCasters: Bool
  @available(macOS 10.13, *)
  var sampleDistributedShadowMaps: Bool
  @available(macOS 10.13, *)
  var shadowCascadeCount: Int
  @available(macOS 10.13, *)
  var shadowCascadeSplittingFactor: CGFloat
  @available(macOS 10.10, *)
  var orthographicScale: CGFloat
  @available(macOS 10.10, *)
  var zNear: CGFloat
  @available(macOS 10.10, *)
  var zFar: CGFloat
  @available(macOS 10.10, *)
  var attenuationStartDistance: CGFloat
  @available(macOS 10.10, *)
  var attenuationEndDistance: CGFloat
  @available(macOS 10.10, *)
  var attenuationFalloffExponent: CGFloat
  @available(macOS 10.10, *)
  var spotInnerAngle: CGFloat
  @available(macOS 10.10, *)
  var spotOuterAngle: CGFloat
  @available(macOS 10.12, *)
  var iesProfileURL: URL?
  @available(macOS 10.13, *)
  var sphericalHarmonicsCoefficients: Data { get }
  @available(macOS 10.15, *)
  var probeType: SCNLightProbeType
  @available(macOS 10.15, *)
  var probeUpdateType: SCNLightProbeUpdateType
  @available(macOS 10.15, *)
  var probeExtents: simd_float3
  @available(macOS 10.15, *)
  var probeOffset: simd_float3
  @available(macOS 10.15, *)
  var parallaxCorrectionEnabled: Bool
  @available(macOS 10.15, *)
  var parallaxExtentsFactor: simd_float3
  @available(macOS 10.15, *)
  var parallaxCenterOffset: simd_float3
  @available(macOS 10.14, *)
  var probeEnvironment: SCNMaterialProperty? { get }
  @available(macOS 10.15, *)
  var areaType: SCNLightAreaType
  @available(macOS 10.15, *)
  var areaExtents: simd_float3
  @available(macOS 10.15, *)
  var areaPolygonVertices: [NSValue]?
  @available(macOS 10.15, *)
  var drawsArea: Bool
  @available(macOS 10.15, *)
  var doubleSided: Bool
  @available(macOS 10.9, *)
  var gobo: SCNMaterialProperty? { get }
  @available(macOS 10.10, *)
  var categoryBitMask: Int
}
