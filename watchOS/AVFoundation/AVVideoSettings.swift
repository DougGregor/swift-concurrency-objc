
@available(watchOS 2.0, *)
let AVVideoCodecKey: String
struct AVVideoCodecType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVVideoCodecType {
  @available(watchOS 4.0, *)
  static let hevc: AVVideoCodecType
  @available(watchOS 4.0, *)
  static let h264: AVVideoCodecType
  @available(watchOS 4.0, *)
  static let jpeg: AVVideoCodecType
  @available(watchOS 4.0, *)
  static let proRes4444: AVVideoCodecType
  @available(watchOS 4.0, *)
  static let proRes422: AVVideoCodecType
  @available(watchOS 6.0, *)
  static let proRes422HQ: AVVideoCodecType
  @available(watchOS 6.0, *)
  static let proRes422LT: AVVideoCodecType
  @available(watchOS 6.0, *)
  static let proRes422Proxy: AVVideoCodecType
  @available(watchOS 6.0, *)
  static let hevcWithAlpha: AVVideoCodecType
}
@available(watchOS, introduced: 4.0, deprecated: 4.0, renamed: "AVVideoCodecType.hevc")
let AVVideoCodecHEVC: String
@available(watchOS, introduced: 2.0, deprecated: 4.0, renamed: "AVVideoCodecType.h264")
let AVVideoCodecH264: String
@available(watchOS, introduced: 2.0, deprecated: 4.0, renamed: "AVVideoCodecType.jpeg")
let AVVideoCodecJPEG: String
@available(watchOS 2.0, *)
let AVVideoWidthKey: String
@available(watchOS 2.0, *)
let AVVideoHeightKey: String
@available(watchOS 2.0, *)
let AVVideoPixelAspectRatioKey: String
@available(watchOS 2.0, *)
let AVVideoPixelAspectRatioHorizontalSpacingKey: String
@available(watchOS 2.0, *)
let AVVideoPixelAspectRatioVerticalSpacingKey: String
@available(watchOS 2.0, *)
let AVVideoCleanApertureKey: String
@available(watchOS 2.0, *)
let AVVideoCleanApertureWidthKey: String
@available(watchOS 2.0, *)
let AVVideoCleanApertureHeightKey: String
@available(watchOS 2.0, *)
let AVVideoCleanApertureHorizontalOffsetKey: String
@available(watchOS 2.0, *)
let AVVideoCleanApertureVerticalOffsetKey: String
@available(watchOS 2.0, *)
let AVVideoScalingModeKey: String
@available(watchOS 2.0, *)
let AVVideoScalingModeFit: String
@available(watchOS 2.0, *)
let AVVideoScalingModeResize: String
@available(watchOS 2.0, *)
let AVVideoScalingModeResizeAspect: String
@available(watchOS 2.0, *)
let AVVideoScalingModeResizeAspectFill: String
@available(watchOS 3.0, *)
let AVVideoColorPropertiesKey: String
@available(watchOS 3.0, *)
let AVVideoColorPrimariesKey: String
@available(watchOS 3.0, *)
let AVVideoColorPrimaries_ITU_R_709_2: String
@available(watchOS 3.0, *)
let AVVideoColorPrimaries_SMPTE_C: String
@available(watchOS 3.0, *)
let AVVideoColorPrimaries_P3_D65: String
@available(watchOS 4.0, *)
let AVVideoColorPrimaries_ITU_R_2020: String
@available(watchOS 3.0, *)
let AVVideoTransferFunctionKey: String
@available(watchOS 3.0, *)
let AVVideoTransferFunction_ITU_R_709_2: String
@available(watchOS 4.0, *)
let AVVideoTransferFunction_SMPTE_ST_2084_PQ: String
@available(watchOS 4.0, *)
let AVVideoTransferFunction_ITU_R_2100_HLG: String
@available(watchOS 3.0, *)
let AVVideoYCbCrMatrixKey: String
@available(watchOS 3.0, *)
let AVVideoYCbCrMatrix_ITU_R_709_2: String
@available(watchOS 3.0, *)
let AVVideoYCbCrMatrix_ITU_R_601_4: String
@available(watchOS 4.0, *)
let AVVideoYCbCrMatrix_ITU_R_2020: String
@available(watchOS 3.0, *)
let AVVideoAllowWideColorKey: String
@available(watchOS 2.0, *)
let AVVideoCompressionPropertiesKey: String
@available(watchOS 2.0, *)
let AVVideoAverageBitRateKey: String
@available(watchOS 2.0, *)
let AVVideoQualityKey: String
@available(watchOS 2.0, *)
let AVVideoMaxKeyFrameIntervalKey: String
@available(watchOS 2.0, *)
let AVVideoMaxKeyFrameIntervalDurationKey: String
@available(watchOS 2.0, *)
let AVVideoAllowFrameReorderingKey: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelKey: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Baseline30: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Baseline31: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Baseline41: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264BaselineAutoLevel: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Main30: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Main31: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Main32: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264Main41: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264MainAutoLevel: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264High40: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264High41: String
@available(watchOS 2.0, *)
let AVVideoProfileLevelH264HighAutoLevel: String
@available(watchOS 2.0, *)
let AVVideoH264EntropyModeKey: String
@available(watchOS 2.0, *)
let AVVideoH264EntropyModeCAVLC: String
@available(watchOS 2.0, *)
let AVVideoH264EntropyModeCABAC: String
@available(watchOS 2.0, *)
let AVVideoExpectedSourceFrameRateKey: String
@available(watchOS 2.0, *)
let AVVideoAverageNonDroppableFrameRateKey: String
let AVVideoDecompressionPropertiesKey: String
struct AVVideoApertureMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVVideoApertureMode {
  @available(watchOS 4.0, *)
  static let cleanAperture: AVVideoApertureMode
  @available(watchOS 4.0, *)
  static let productionAperture: AVVideoApertureMode
  @available(watchOS 4.0, *)
  static let encodedPixels: AVVideoApertureMode
}
