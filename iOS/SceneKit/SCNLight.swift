
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
  @available(iOS 10.0, *)
  static let IES: SCNLight.LightType
  @available(iOS 10.0, *)
  static let probe: SCNLight.LightType
  @available(iOS 13.0, *)
  static let area: SCNLight.LightType
}
enum SCNShadowMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case forward
  case deferred
  case modulated
}
@available(iOS 13.0, *)
enum SCNLightProbeType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case irradiance
  case radiance
}
@available(iOS 13.0, *)
enum SCNLightProbeUpdateType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case never
  case realtime
}
@available(iOS 13.0, *)
enum SCNLightAreaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case rectangle
  case polygon
}
class SCNLight : NSObject, SCNAnimatable, NSCopying, NSSecureCoding {
  var type: SCNLight.LightType
  var color: Any
  @available(iOS 10.0, *)
  var temperature: CGFloat
  @available(iOS 10.0, *)
  var intensity: CGFloat
  var name: String?
  var castsShadow: Bool
  var shadowColor: Any
  var shadowRadius: CGFloat
  var shadowMapSize: CGSize
  var shadowSampleCount: Int
  var shadowMode: SCNShadowMode
  var shadowBias: CGFloat
  @available(iOS 11.0, *)
  var automaticallyAdjustsShadowProjection: Bool
  @available(iOS 11.0, *)
  var maximumShadowDistance: CGFloat
  @available(iOS 11.0, *)
  var forcesBackFaceCasters: Bool
  @available(iOS 11.0, *)
  var sampleDistributedShadowMaps: Bool
  @available(iOS 11.0, *)
  var shadowCascadeCount: Int
  @available(iOS 11.0, *)
  var shadowCascadeSplittingFactor: CGFloat
  var orthographicScale: CGFloat
  var zNear: CGFloat
  var zFar: CGFloat
  var attenuationStartDistance: CGFloat
  var attenuationEndDistance: CGFloat
  var attenuationFalloffExponent: CGFloat
  var spotInnerAngle: CGFloat
  var spotOuterAngle: CGFloat
  @available(iOS 10.0, *)
  var iesProfileURL: URL?
  @available(iOS 11.0, *)
  var sphericalHarmonicsCoefficients: Data { get }
  @available(iOS 13.0, *)
  var probeType: SCNLightProbeType
  @available(iOS 13.0, *)
  var probeUpdateType: SCNLightProbeUpdateType
  @available(iOS 13.0, *)
  var probeExtents: simd_float3
  @available(iOS 13.0, *)
  var probeOffset: simd_float3
  @available(iOS 13.0, *)
  var parallaxCorrectionEnabled: Bool
  @available(iOS 13.0, *)
  var parallaxExtentsFactor: simd_float3
  @available(iOS 13.0, *)
  var parallaxCenterOffset: simd_float3
  @available(iOS 12.0, *)
  var probeEnvironment: SCNMaterialProperty? { get }
  @available(iOS 13.0, *)
  var areaType: SCNLightAreaType
  @available(iOS 13.0, *)
  var areaExtents: simd_float3
  @available(iOS 13.0, *)
  var areaPolygonVertices: [NSValue]?
  @available(iOS 13.0, *)
  var drawsArea: Bool
  @available(iOS 13.0, *)
  var doubleSided: Bool
  var gobo: SCNMaterialProperty? { get }
  var categoryBitMask: Int
}
