
struct CIRAWFilterOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIFilter {
  @available(iOS 10.0, *)
  /*not inherited*/ init!(imageURL url: URL!, options: [CIRAWFilterOption : Any]! = [:])
  @available(iOS 10.0, *)
  /*not inherited*/ init!(imageData data: Data!, options: [CIRAWFilterOption : Any]! = [:])
  @available(iOS 10.0, *)
  /*not inherited*/ init!(cvPixelBuffer pixelBuffer: CVPixelBuffer!, properties: [AnyHashable : Any]!, options: [CIRAWFilterOption : Any]! = [:])
  @available(iOS 13.0, *)
  class func supportedRawCameraModels() -> [String]!
}
extension CIRAWFilterOption {
  @available(iOS 10.0, *)
  static let allowDraftMode: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let decoderVersion: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let supportedDecoderVersions: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let baselineExposure: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let boostAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let boostShadowAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let disableGamutMap: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let neutralChromaticityX: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let neutralChromaticityY: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let neutralTemperature: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let neutralTint: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let neutralLocation: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let scaleFactor: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let ignoreImageOrientation: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let imageOrientation: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let enableSharpening: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let enableChromaticNoiseTracking: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let noiseReductionAmount: CIRAWFilterOption
  @available(iOS 11.0, *)
  static let moireAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let enableVendorLensCorrection: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let luminanceNoiseReductionAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let colorNoiseReductionAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let noiseReductionSharpnessAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let noiseReductionContrastAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let noiseReductionDetailAmount: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let linearSpaceFilter: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let outputNativeSize: CIRAWFilterOption
  @available(iOS 10.0, *)
  static let activeKeys: CIRAWFilterOption
}
@available(iOS 12.0, *)
let kCIInputEnableEDRModeKey: String
