
@available(macOS 10.13, *)
enum SCNCameraProjectionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  @available(macOS 10.13, *)
  var fieldOfView: CGFloat
  @available(macOS 10.13, *)
  var projectionDirection: SCNCameraProjectionDirection
  @available(macOS 10.13, *)
  var focalLength: CGFloat
  @available(macOS 10.13, *)
  var sensorHeight: CGFloat
  var zNear: Double
  var zFar: Double
  @available(macOS 10.9, *)
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  @available(macOS 10.9, *)
  var orthographicScale: Double
  var projectionTransform: SCNMatrix4
  @available(macOS 10.15, *)
  func projectionTransform(withViewportSize viewportSize: CGSize) -> SCNMatrix4
  @available(macOS 10.13, *)
  var wantsDepthOfField: Bool
  @available(macOS 10.13, *)
  var focusDistance: CGFloat
  @available(macOS 10.13, *)
  var focalBlurSampleCount: Int
  @available(macOS 10.13, *)
  var fStop: CGFloat
  @available(macOS 10.13, *)
  var apertureBladeCount: Int
  @available(macOS 10.12, *)
  var motionBlurIntensity: CGFloat
  @available(macOS 10.13, *)
  var screenSpaceAmbientOcclusionIntensity: CGFloat
  @available(macOS 10.13, *)
  var screenSpaceAmbientOcclusionRadius: CGFloat
  @available(macOS 10.13, *)
  var screenSpaceAmbientOcclusionBias: CGFloat
  @available(macOS 10.13, *)
  var screenSpaceAmbientOcclusionDepthThreshold: CGFloat
  @available(macOS 10.13, *)
  var screenSpaceAmbientOcclusionNormalThreshold: CGFloat
  @available(macOS 10.12, *)
  var wantsHDR: Bool
  @available(macOS 10.12, *)
  var exposureOffset: CGFloat
  @available(macOS 10.12, *)
  var averageGray: CGFloat
  @available(macOS 10.12, *)
  var whitePoint: CGFloat
  @available(macOS 10.12, *)
  var wantsExposureAdaptation: Bool
  @available(macOS 10.12, *)
  var exposureAdaptationBrighteningSpeedFactor: CGFloat
  @available(macOS 10.12, *)
  var exposureAdaptationDarkeningSpeedFactor: CGFloat
  @available(macOS 10.12, *)
  var minimumExposure: CGFloat
  @available(macOS 10.12, *)
  var maximumExposure: CGFloat
  @available(macOS 10.12, *)
  var bloomThreshold: CGFloat
  @available(macOS 10.15, *)
  var bloomIterationCount: Int
  @available(macOS 10.15, *)
  var bloomIterationSpread: CGFloat
  @available(macOS 10.12, *)
  var bloomIntensity: CGFloat
  @available(macOS 10.12, *)
  var bloomBlurRadius: CGFloat
  @available(macOS 10.12, *)
  var vignettingPower: CGFloat
  @available(macOS 10.12, *)
  var vignettingIntensity: CGFloat
  @available(macOS 10.12, *)
  var colorFringeStrength: CGFloat
  @available(macOS 10.12, *)
  var colorFringeIntensity: CGFloat
  @available(macOS 10.12, *)
  var saturation: CGFloat
  @available(macOS 10.12, *)
  var contrast: CGFloat
  @available(macOS 10.15, *)
  var grainIntensity: CGFloat
  @available(macOS 10.15, *)
  var grainScale: CGFloat
  @available(macOS 10.15, *)
  var grainIsColored: Bool
  @available(macOS 10.15, *)
  var whiteBalanceTemperature: CGFloat
  @available(macOS 10.15, *)
  var whiteBalanceTint: CGFloat
  @available(macOS 10.12, *)
  var colorGrading: SCNMaterialProperty { get }
  @available(macOS 10.10, *)
  var categoryBitMask: Int
}
