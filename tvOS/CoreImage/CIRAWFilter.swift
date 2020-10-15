
struct CIRAWFilterOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIFilter {
  @available(tvOS 10.0, *)
  /*not inherited*/ init!(imageURL url: URL!, options: [CIRAWFilterOption : Any]! = [:])
  @available(tvOS 10.0, *)
  /*not inherited*/ init!(imageData data: Data!, options: [CIRAWFilterOption : Any]! = [:])
  @available(tvOS 10.0, *)
  /*not inherited*/ init!(cvPixelBuffer pixelBuffer: CVPixelBuffer!, properties: [AnyHashable : Any]!, options: [CIRAWFilterOption : Any]! = [:])
  @available(tvOS 13.0, *)
  class func supportedRawCameraModels() -> [String]!
}
extension CIRAWFilterOption {
  @available(tvOS 10.0, *)
  static let allowDraftMode: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let decoderVersion: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let supportedDecoderVersions: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let baselineExposure: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let boostAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let boostShadowAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let disableGamutMap: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let neutralChromaticityX: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let neutralChromaticityY: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let neutralTemperature: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let neutralTint: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let neutralLocation: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let scaleFactor: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let ignoreImageOrientation: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let imageOrientation: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let enableSharpening: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let enableChromaticNoiseTracking: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let noiseReductionAmount: CIRAWFilterOption
  @available(tvOS 11.0, *)
  static let moireAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let enableVendorLensCorrection: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let luminanceNoiseReductionAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let colorNoiseReductionAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let noiseReductionSharpnessAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let noiseReductionContrastAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let noiseReductionDetailAmount: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let linearSpaceFilter: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let outputNativeSize: CIRAWFilterOption
  @available(tvOS 10.0, *)
  static let activeKeys: CIRAWFilterOption
}
@available(tvOS 12.0, *)
let kCIInputEnableEDRModeKey: String
