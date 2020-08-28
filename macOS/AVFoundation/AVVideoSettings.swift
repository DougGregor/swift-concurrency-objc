
@available(macOS 10.7, *)
let AVVideoCodecKey: String
struct AVVideoCodecType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVVideoCodecType {
  @available(macOS 10.13, *)
  static let hevc: AVVideoCodecType
  @available(macOS 10.13, *)
  static let h264: AVVideoCodecType
  @available(macOS 10.13, *)
  static let jpeg: AVVideoCodecType
  @available(macOS 10.13, *)
  static let proRes4444: AVVideoCodecType
  @available(macOS 10.13, *)
  static let proRes422: AVVideoCodecType
  @available(macOS 10.15, *)
  static let proRes422HQ: AVVideoCodecType
  @available(macOS 10.15, *)
  static let proRes422LT: AVVideoCodecType
  @available(macOS 10.15, *)
  static let proRes422Proxy: AVVideoCodecType
  @available(macOS 10.15, *)
  static let hevcWithAlpha: AVVideoCodecType
}
@available(macOS, introduced: 10.13, deprecated: 10.13, renamed: "AVVideoCodecType.hevc")
let AVVideoCodecHEVC: String
@available(macOS, introduced: 10.7, deprecated: 10.13, renamed: "AVVideoCodecType.h264")
let AVVideoCodecH264: String
@available(macOS, introduced: 10.7, deprecated: 10.13, renamed: "AVVideoCodecType.jpeg")
let AVVideoCodecJPEG: String
@available(macOS, introduced: 10.7, deprecated: 10.13, renamed: "AVVideoCodecType.proRes4444")
let AVVideoCodecAppleProRes4444: String
@available(macOS, introduced: 10.7, deprecated: 10.13, renamed: "AVVideoCodecType.proRes422")
let AVVideoCodecAppleProRes422: String
@available(macOS 10.7, *)
let AVVideoWidthKey: String
@available(macOS 10.7, *)
let AVVideoHeightKey: String
@available(macOS 10.7, *)
let AVVideoPixelAspectRatioKey: String
@available(macOS 10.7, *)
let AVVideoPixelAspectRatioHorizontalSpacingKey: String
@available(macOS 10.7, *)
let AVVideoPixelAspectRatioVerticalSpacingKey: String
@available(macOS 10.7, *)
let AVVideoCleanApertureKey: String
@available(macOS 10.7, *)
let AVVideoCleanApertureWidthKey: String
@available(macOS 10.7, *)
let AVVideoCleanApertureHeightKey: String
@available(macOS 10.7, *)
let AVVideoCleanApertureHorizontalOffsetKey: String
@available(macOS 10.7, *)
let AVVideoCleanApertureVerticalOffsetKey: String
@available(macOS 10.7, *)
let AVVideoScalingModeKey: String
@available(macOS 10.7, *)
let AVVideoScalingModeFit: String
@available(macOS 10.7, *)
let AVVideoScalingModeResize: String
@available(macOS 10.7, *)
let AVVideoScalingModeResizeAspect: String
@available(macOS 10.7, *)
let AVVideoScalingModeResizeAspectFill: String
@available(macOS 10.7, *)
let AVVideoColorPropertiesKey: String
@available(macOS 10.7, *)
let AVVideoColorPrimariesKey: String
@available(macOS 10.7, *)
let AVVideoColorPrimaries_ITU_R_709_2: String
@available(macOS 10.7, *)
let AVVideoColorPrimaries_EBU_3213: String
@available(macOS 10.7, *)
let AVVideoColorPrimaries_SMPTE_C: String
@available(macOS 10.12, *)
let AVVideoColorPrimaries_P3_D65: String
@available(macOS 10.13, *)
let AVVideoColorPrimaries_ITU_R_2020: String
@available(macOS 10.7, *)
let AVVideoTransferFunctionKey: String
@available(macOS 10.7, *)
let AVVideoTransferFunction_ITU_R_709_2: String
@available(macOS 10.7, *)
let AVVideoTransferFunction_SMPTE_240M_1995: String
@available(macOS 10.13, *)
let AVVideoTransferFunction_SMPTE_ST_2084_PQ: String
@available(macOS 10.13, *)
let AVVideoTransferFunction_ITU_R_2100_HLG: String
@available(macOS 10.7, *)
let AVVideoYCbCrMatrixKey: String
@available(macOS 10.7, *)
let AVVideoYCbCrMatrix_ITU_R_709_2: String
@available(macOS 10.7, *)
let AVVideoYCbCrMatrix_ITU_R_601_4: String
@available(macOS 10.7, *)
let AVVideoYCbCrMatrix_SMPTE_240M_1995: String
@available(macOS 10.13, *)
let AVVideoYCbCrMatrix_ITU_R_2020: String
@available(macOS 10.12, *)
let AVVideoAllowWideColorKey: String
@available(macOS 10.7, *)
let AVVideoCompressionPropertiesKey: String
@available(macOS 10.7, *)
let AVVideoAverageBitRateKey: String
@available(macOS 10.7, *)
let AVVideoQualityKey: String
@available(macOS 10.7, *)
let AVVideoMaxKeyFrameIntervalKey: String
@available(macOS 10.9, *)
let AVVideoMaxKeyFrameIntervalDurationKey: String
@available(macOS 10.10, *)
let AVVideoAllowFrameReorderingKey: String
@available(macOS 10.8, *)
let AVVideoProfileLevelKey: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Baseline30: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Baseline31: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Baseline41: String
@available(macOS 10.9, *)
let AVVideoProfileLevelH264BaselineAutoLevel: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Main30: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Main31: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Main32: String
@available(macOS 10.8, *)
let AVVideoProfileLevelH264Main41: String
@available(macOS 10.9, *)
let AVVideoProfileLevelH264MainAutoLevel: String
@available(macOS 10.9, *)
let AVVideoProfileLevelH264High40: String
@available(macOS 10.9, *)
let AVVideoProfileLevelH264High41: String
@available(macOS 10.9, *)
let AVVideoProfileLevelH264HighAutoLevel: String
@available(macOS 10.10, *)
let AVVideoH264EntropyModeKey: String
@available(macOS 10.10, *)
let AVVideoH264EntropyModeCAVLC: String
@available(macOS 10.10, *)
let AVVideoH264EntropyModeCABAC: String
@available(macOS 10.10, *)
let AVVideoExpectedSourceFrameRateKey: String
@available(macOS 10.10, *)
let AVVideoAverageNonDroppableFrameRateKey: String
@available(macOS 10.13, *)
let AVVideoDecompressionPropertiesKey: String
@available(macOS 10.10, *)
let AVVideoEncoderSpecificationKey: String
struct AVVideoApertureMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVVideoApertureMode {
  @available(macOS 10.13, *)
  static let cleanAperture: AVVideoApertureMode
  @available(macOS 10.13, *)
  static let productionAperture: AVVideoApertureMode
  @available(macOS 10.13, *)
  static let encodedPixels: AVVideoApertureMode
}
