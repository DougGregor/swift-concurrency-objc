
@available(watchOS 4.0, *)
enum SCNCameraProjectionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  @available(watchOS 4.0, *)
  var fieldOfView: CGFloat
  @available(watchOS 4.0, *)
  var projectionDirection: SCNCameraProjectionDirection
  @available(watchOS 4.0, *)
  var focalLength: CGFloat
  @available(watchOS 4.0, *)
  var sensorHeight: CGFloat
  var zNear: Double
  var zFar: Double
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  var orthographicScale: Double
  var projectionTransform: SCNMatrix4
  @available(watchOS 6.0, *)
  func projectionTransform(withViewportSize viewportSize: CGSize) -> SCNMatrix4
  @available(watchOS 4.0, *)
  var wantsDepthOfField: Bool
  @available(watchOS 4.0, *)
  var focusDistance: CGFloat
  @available(watchOS 4.0, *)
  var focalBlurSampleCount: Int
  @available(watchOS 4.0, *)
  var fStop: CGFloat
  @available(watchOS 4.0, *)
  var apertureBladeCount: Int
  @available(watchOS 3.0, *)
  var motionBlurIntensity: CGFloat
  @available(watchOS 4.0, *)
  var screenSpaceAmbientOcclusionIntensity: CGFloat
  @available(watchOS 4.0, *)
  var screenSpaceAmbientOcclusionRadius: CGFloat
  @available(watchOS 4.0, *)
  var screenSpaceAmbientOcclusionBias: CGFloat
  @available(watchOS 4.0, *)
  var screenSpaceAmbientOcclusionDepthThreshold: CGFloat
  @available(watchOS 4.0, *)
  var screenSpaceAmbientOcclusionNormalThreshold: CGFloat
  @available(watchOS 3.0, *)
  var wantsHDR: Bool
  @available(watchOS 3.0, *)
  var exposureOffset: CGFloat
  @available(watchOS 3.0, *)
  var averageGray: CGFloat
  @available(watchOS 3.0, *)
  var whitePoint: CGFloat
  @available(watchOS 3.0, *)
  var wantsExposureAdaptation: Bool
  @available(watchOS 3.0, *)
  var exposureAdaptationBrighteningSpeedFactor: CGFloat
  @available(watchOS 3.0, *)
  var exposureAdaptationDarkeningSpeedFactor: CGFloat
  @available(watchOS 3.0, *)
  var minimumExposure: CGFloat
  @available(watchOS 3.0, *)
  var maximumExposure: CGFloat
  @available(watchOS 3.0, *)
  var bloomThreshold: CGFloat
  @available(watchOS 6.0, *)
  var bloomIterationCount: Int
  @available(watchOS 6.0, *)
  var bloomIterationSpread: CGFloat
  @available(watchOS 3.0, *)
  var bloomIntensity: CGFloat
  @available(watchOS 3.0, *)
  var bloomBlurRadius: CGFloat
  @available(watchOS 3.0, *)
  var vignettingPower: CGFloat
  @available(watchOS 3.0, *)
  var vignettingIntensity: CGFloat
  @available(watchOS 3.0, *)
  var colorFringeStrength: CGFloat
  @available(watchOS 3.0, *)
  var colorFringeIntensity: CGFloat
  @available(watchOS 3.0, *)
  var saturation: CGFloat
  @available(watchOS 3.0, *)
  var contrast: CGFloat
  @available(watchOS 6.0, *)
  var grainIntensity: CGFloat
  @available(watchOS 6.0, *)
  var grainScale: CGFloat
  @available(watchOS 6.0, *)
  var grainIsColored: Bool
  @available(watchOS 6.0, *)
  var whiteBalanceTemperature: CGFloat
  @available(watchOS 6.0, *)
  var whiteBalanceTint: CGFloat
  @available(watchOS 3.0, *)
  var colorGrading: SCNMaterialProperty { get }
  var categoryBitMask: Int
}
