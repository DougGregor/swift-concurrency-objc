
@available(iOS 11.0, *)
enum SCNCameraProjectionDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
class SCNCamera : NSObject, SCNAnimatable, SCNTechniqueSupport, NSCopying, NSSecureCoding {
  var name: String?
  @available(iOS 11.0, *)
  var fieldOfView: CGFloat
  @available(iOS 11.0, *)
  var projectionDirection: SCNCameraProjectionDirection
  @available(iOS 11.0, *)
  var focalLength: CGFloat
  @available(iOS 11.0, *)
  var sensorHeight: CGFloat
  var zNear: Double
  var zFar: Double
  var automaticallyAdjustsZRange: Bool
  var usesOrthographicProjection: Bool
  var orthographicScale: Double
  var projectionTransform: SCNMatrix4
  @available(iOS 13.0, *)
  func projectionTransform(withViewportSize viewportSize: CGSize) -> SCNMatrix4
  @available(iOS 11.0, *)
  var wantsDepthOfField: Bool
  @available(iOS 11.0, *)
  var focusDistance: CGFloat
  @available(iOS 11.0, *)
  var focalBlurSampleCount: Int
  @available(iOS 11.0, *)
  var fStop: CGFloat
  @available(iOS 11.0, *)
  var apertureBladeCount: Int
  @available(iOS 10.0, *)
  var motionBlurIntensity: CGFloat
  @available(iOS 11.0, *)
  var screenSpaceAmbientOcclusionIntensity: CGFloat
  @available(iOS 11.0, *)
  var screenSpaceAmbientOcclusionRadius: CGFloat
  @available(iOS 11.0, *)
  var screenSpaceAmbientOcclusionBias: CGFloat
  @available(iOS 11.0, *)
  var screenSpaceAmbientOcclusionDepthThreshold: CGFloat
  @available(iOS 11.0, *)
  var screenSpaceAmbientOcclusionNormalThreshold: CGFloat
  @available(iOS 10.0, *)
  var wantsHDR: Bool
  @available(iOS 10.0, *)
  var exposureOffset: CGFloat
  @available(iOS 10.0, *)
  var averageGray: CGFloat
  @available(iOS 10.0, *)
  var whitePoint: CGFloat
  @available(iOS 10.0, *)
  var wantsExposureAdaptation: Bool
  @available(iOS 10.0, *)
  var exposureAdaptationBrighteningSpeedFactor: CGFloat
  @available(iOS 10.0, *)
  var exposureAdaptationDarkeningSpeedFactor: CGFloat
  @available(iOS 10.0, *)
  var minimumExposure: CGFloat
  @available(iOS 10.0, *)
  var maximumExposure: CGFloat
  @available(iOS 10.0, *)
  var bloomThreshold: CGFloat
  @available(iOS 13.0, *)
  var bloomIterationCount: Int
  @available(iOS 13.0, *)
  var bloomIterationSpread: CGFloat
  @available(iOS 10.0, *)
  var bloomIntensity: CGFloat
  @available(iOS 10.0, *)
  var bloomBlurRadius: CGFloat
  @available(iOS 10.0, *)
  var vignettingPower: CGFloat
  @available(iOS 10.0, *)
  var vignettingIntensity: CGFloat
  @available(iOS 10.0, *)
  var colorFringeStrength: CGFloat
  @available(iOS 10.0, *)
  var colorFringeIntensity: CGFloat
  @available(iOS 10.0, *)
  var saturation: CGFloat
  @available(iOS 10.0, *)
  var contrast: CGFloat
  @available(iOS 13.0, *)
  var grainIntensity: CGFloat
  @available(iOS 13.0, *)
  var grainScale: CGFloat
  @available(iOS 13.0, *)
  var grainIsColored: Bool
  @available(iOS 13.0, *)
  var whiteBalanceTemperature: CGFloat
  @available(iOS 13.0, *)
  var whiteBalanceTint: CGFloat
  @available(iOS 10.0, *)
  var colorGrading: SCNMaterialProperty { get }
  var categoryBitMask: Int
}
