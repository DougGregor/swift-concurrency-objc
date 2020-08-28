
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
  @available(tvOS 10.0, *)
  static let IES: SCNLight.LightType
  @available(tvOS 10.0, *)
  static let probe: SCNLight.LightType
  @available(tvOS 13.0, *)
  static let area: SCNLight.LightType
}
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case deferred
  case modulated
}
@available(tvOS 13.0, *)
enum SCNLightProbeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case irradiance
  case radiance
}
@available(tvOS 13.0, *)
enum SCNLightProbeUpdateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case never
  case realtime
}
@available(tvOS 13.0, *)
enum SCNLightAreaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case rectangle
  case polygon
}
class SCNLight : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  var type: SCNLight.LightType
  var color: Any
  @available(tvOS 10.0, *)
  var temperature: CGFloat
  @available(tvOS 10.0, *)
  var intensity: CGFloat
  var name: String?
  var castsShadow: Bool
  var shadowColor: Any
  var shadowRadius: CGFloat
  var shadowMapSize: CGSize
  var shadowSampleCount: Int
  var shadowMode: SCNShadowMode
  var shadowBias: CGFloat
  @available(tvOS 11.0, *)
  var automaticallyAdjustsShadowProjection: Bool
  @available(tvOS 11.0, *)
  var maximumShadowDistance: CGFloat
  @available(tvOS 11.0, *)
  var forcesBackFaceCasters: Bool
  @available(tvOS 11.0, *)
  var sampleDistributedShadowMaps: Bool
  @available(tvOS 11.0, *)
  var shadowCascadeCount: Int
  @available(tvOS 11.0, *)
  var shadowCascadeSplittingFactor: CGFloat
  var orthographicScale: CGFloat
  var zNear: CGFloat
  var zFar: CGFloat
  var attenuationStartDistance: CGFloat
  var attenuationEndDistance: CGFloat
  var attenuationFalloffExponent: CGFloat
  var spotInnerAngle: CGFloat
  var spotOuterAngle: CGFloat
  @available(tvOS 10.0, *)
  var iesProfileURL: URL?
  @available(tvOS 11.0, *)
  var sphericalHarmonicsCoefficients: Data { get }
  @available(tvOS 13.0, *)
  var probeType: SCNLightProbeType
  @available(tvOS 13.0, *)
  var probeUpdateType: SCNLightProbeUpdateType
  @available(tvOS 13.0, *)
  var probeExtents: simd_float3
  @available(tvOS 13.0, *)
  var probeOffset: simd_float3
  @available(tvOS 13.0, *)
  var parallaxCorrectionEnabled: Bool
  @available(tvOS 13.0, *)
  var parallaxExtentsFactor: simd_float3
  @available(tvOS 13.0, *)
  var parallaxCenterOffset: simd_float3
  @available(tvOS 12.0, *)
  var probeEnvironment: SCNMaterialProperty? { get }
  @available(tvOS 13.0, *)
  var areaType: SCNLightAreaType
  @available(tvOS 13.0, *)
  var areaExtents: simd_float3
  @available(tvOS 13.0, *)
  var areaPolygonVertices: [NSValue]?
  @available(tvOS 13.0, *)
  var drawsArea: Bool
  @available(tvOS 13.0, *)
  var doubleSided: Bool
  var gobo: SCNMaterialProperty? { get }
  var categoryBitMask: Int
}
