
@available(tvOS 11.0, *)
enum SCNCameraProjectionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  @available(tvOS 11.0, *)
  var fieldOfView: CGFloat
  @available(tvOS 11.0, *)
  var projectionDirection: SCNCameraProjectionDirection
  @available(tvOS 11.0, *)
  var focalLength: CGFloat
  @available(tvOS 11.0, *)
  var sensorHeight: CGFloat
  var zNear: Double
  var zFar: Double
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  var orthographicScale: Double
  var projectionTransform: SCNMatrix4
  @available(tvOS 13.0, *)
  func projectionTransform(withViewportSize viewportSize: CGSize) -> SCNMatrix4
  @available(tvOS 11.0, *)
  var wantsDepthOfField: Bool
  @available(tvOS 11.0, *)
  var focusDistance: CGFloat
  @available(tvOS 11.0, *)
  var focalBlurSampleCount: Int
  @available(tvOS 11.0, *)
  var fStop: CGFloat
  @available(tvOS 11.0, *)
  var apertureBladeCount: Int
  @available(tvOS 10.0, *)
  var motionBlurIntensity: CGFloat
  @available(tvOS 11.0, *)
  var screenSpaceAmbientOcclusionIntensity: CGFloat
  @available(tvOS 11.0, *)
  var screenSpaceAmbientOcclusionRadius: CGFloat
  @available(tvOS 11.0, *)
  var screenSpaceAmbientOcclusionBias: CGFloat
  @available(tvOS 11.0, *)
  var screenSpaceAmbientOcclusionDepthThreshold: CGFloat
  @available(tvOS 11.0, *)
  var screenSpaceAmbientOcclusionNormalThreshold: CGFloat
  @available(tvOS 10.0, *)
  var wantsHDR: Bool
  @available(tvOS 10.0, *)
  var exposureOffset: CGFloat
  @available(tvOS 10.0, *)
  var averageGray: CGFloat
  @available(tvOS 10.0, *)
  var whitePoint: CGFloat
  @available(tvOS 10.0, *)
  var wantsExposureAdaptation: Bool
  @available(tvOS 10.0, *)
  var exposureAdaptationBrighteningSpeedFactor: CGFloat
  @available(tvOS 10.0, *)
  var exposureAdaptationDarkeningSpeedFactor: CGFloat
  @available(tvOS 10.0, *)
  var minimumExposure: CGFloat
  @available(tvOS 10.0, *)
  var maximumExposure: CGFloat
  @available(tvOS 10.0, *)
  var bloomThreshold: CGFloat
  @available(tvOS 13.0, *)
  var bloomIterationCount: Int
  @available(tvOS 13.0, *)
  var bloomIterationSpread: CGFloat
  @available(tvOS 10.0, *)
  var bloomIntensity: CGFloat
  @available(tvOS 10.0, *)
  var bloomBlurRadius: CGFloat
  @available(tvOS 10.0, *)
  var vignettingPower: CGFloat
  @available(tvOS 10.0, *)
  var vignettingIntensity: CGFloat
  @available(tvOS 10.0, *)
  var colorFringeStrength: CGFloat
  @available(tvOS 10.0, *)
  var colorFringeIntensity: CGFloat
  @available(tvOS 10.0, *)
  var saturation: CGFloat
  @available(tvOS 10.0, *)
  var contrast: CGFloat
  @available(tvOS 13.0, *)
  var grainIntensity: CGFloat
  @available(tvOS 13.0, *)
  var grainScale: CGFloat
  @available(tvOS 13.0, *)
  var grainIsColored: Bool
  @available(tvOS 13.0, *)
  var whiteBalanceTemperature: CGFloat
  @available(tvOS 13.0, *)
  var whiteBalanceTint: CGFloat
  @available(tvOS 10.0, *)
  var colorGrading: SCNMaterialProperty { get }
  var categoryBitMask: Int
}
