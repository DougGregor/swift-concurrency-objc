
struct CIRAWFilterOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIFilter {
  @available(macOS 10.5, *)
  /*not inherited*/ init!(imageURL url: URL!, options: [CIRAWFilterOption : Any]! = [:])
  @available(macOS 10.5, *)
  /*not inherited*/ init!(imageData data: Data!, options: [CIRAWFilterOption : Any]! = [:])
  @available(macOS 10.12, *)
  /*not inherited*/ init!(cvPixelBuffer pixelBuffer: CVPixelBuffer!, properties: [AnyHashable : Any]!, options: [CIRAWFilterOption : Any]! = [:])
  @available(macOS 10.15, *)
  class func supportedRawCameraModels() -> [String]!
}
extension CIRAWFilterOption {
  @available(macOS 10.5, *)
  static let allowDraftMode: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let decoderVersion: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let supportedDecoderVersions: CIRAWFilterOption
  @available(macOS 10.12, *)
  static let baselineExposure: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let boostAmount: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let boostShadowAmount: CIRAWFilterOption
  @available(macOS 10.12, *)
  static let disableGamutMap: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let neutralChromaticityX: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let neutralChromaticityY: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let neutralTemperature: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let neutralTint: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let neutralLocation: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let scaleFactor: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let ignoreImageOrientation: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let imageOrientation: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let enableSharpening: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let enableChromaticNoiseTracking: CIRAWFilterOption
  @available(macOS 10.7, *)
  static let noiseReductionAmount: CIRAWFilterOption
  @available(macOS 10.13, *)
  static let moireAmount: CIRAWFilterOption
  @available(macOS 10.10, *)
  static let enableVendorLensCorrection: CIRAWFilterOption
  @available(macOS 10.10, *)
  static let luminanceNoiseReductionAmount: CIRAWFilterOption
  @available(macOS 10.10, *)
  static let colorNoiseReductionAmount: CIRAWFilterOption
  @available(macOS 10.10, *)
  static let noiseReductionSharpnessAmount: CIRAWFilterOption
  @available(macOS 10.10, *)
  static let noiseReductionContrastAmount: CIRAWFilterOption
  @available(macOS 10.10, *)
  static let noiseReductionDetailAmount: CIRAWFilterOption
  @available(macOS 10.7, *)
  static let linearSpaceFilter: CIRAWFilterOption
  @available(macOS 10.5, *)
  static let outputNativeSize: CIRAWFilterOption
  @available(macOS 10.7, *)
  static let activeKeys: CIRAWFilterOption
}
@available(macOS 10.14, *)
let kCIInputEnableEDRModeKey: String
