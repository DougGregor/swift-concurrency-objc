
let kCIAttributeFilterName: String
let kCIAttributeFilterDisplayName: String
@available(macOS 10.5, *)
let kCIAttributeDescription: String
@available(macOS 10.11, *)
let kCIAttributeFilterAvailable_Mac: String
@available(macOS 10.11, *)
let kCIAttributeFilterAvailable_iOS: String
@available(macOS 10.5, *)
let kCIAttributeReferenceDocumentation: String
let kCIAttributeFilterCategories: String
let kCIAttributeClass: String
let kCIAttributeType: String
let kCIAttributeMin: String
let kCIAttributeMax: String
let kCIAttributeSliderMin: String
let kCIAttributeSliderMax: String
let kCIAttributeDefault: String
let kCIAttributeIdentity: String
let kCIAttributeName: String
let kCIAttributeDisplayName: String
@available(macOS 10.5, *)
let kCIUIParameterSet: String
@available(macOS 10.5, *)
let kCIUISetBasic: String
@available(macOS 10.5, *)
let kCIUISetIntermediate: String
@available(macOS 10.5, *)
let kCIUISetAdvanced: String
@available(macOS 10.5, *)
let kCIUISetDevelopment: String
let kCIAttributeTypeTime: String
let kCIAttributeTypeScalar: String
let kCIAttributeTypeDistance: String
let kCIAttributeTypeAngle: String
let kCIAttributeTypeBoolean: String
@available(macOS 10.5, *)
let kCIAttributeTypeInteger: String
@available(macOS 10.5, *)
let kCIAttributeTypeCount: String
let kCIAttributeTypePosition: String
let kCIAttributeTypeOffset: String
let kCIAttributeTypePosition3: String
let kCIAttributeTypeRectangle: String
@available(macOS 10.4, *)
let kCIAttributeTypeOpaqueColor: String
@available(macOS 10.11, *)
let kCIAttributeTypeColor: String
@available(macOS 10.4, *)
let kCIAttributeTypeGradient: String
@available(macOS 10.11, *)
let kCIAttributeTypeImage: String
@available(macOS 10.11, *)
let kCIAttributeTypeTransform: String
let kCICategoryDistortionEffect: String
let kCICategoryGeometryAdjustment: String
let kCICategoryCompositeOperation: String
let kCICategoryHalftoneEffect: String
let kCICategoryColorAdjustment: String
let kCICategoryColorEffect: String
let kCICategoryTransition: String
let kCICategoryTileEffect: String
let kCICategoryGenerator: String
@available(macOS 10.5, *)
let kCICategoryReduction: String
let kCICategoryGradient: String
let kCICategoryStylize: String
let kCICategorySharpen: String
let kCICategoryBlur: String
let kCICategoryVideo: String
let kCICategoryStillImage: String
let kCICategoryInterlaced: String
let kCICategoryNonSquarePixels: String
let kCICategoryHighDynamicRange: String
let kCICategoryBuiltIn: String
@available(macOS 10.5, *)
let kCICategoryFilterGenerator: String
@available(macOS 10.4, *)
let kCIApplyOptionExtent: String
@available(macOS 10.4, *)
let kCIApplyOptionDefinition: String
@available(macOS 10.4, *)
let kCIApplyOptionUserInfo: String
@available(macOS 10.4, *)
let kCIApplyOptionColorSpace: String
@available(macOS 10.5, *)
let kCIOutputImageKey: String
@available(macOS 10.5, *)
let kCIInputBackgroundImageKey: String
@available(macOS 10.5, *)
let kCIInputImageKey: String
@available(macOS 10.13, *)
let kCIInputDepthImageKey: String
@available(macOS 10.13, *)
let kCIInputDisparityImageKey: String
@available(macOS 10.14, *)
let kCIInputAmountKey: String
@available(macOS 10.5, *)
let kCIInputTimeKey: String
@available(macOS 10.5, *)
let kCIInputTransformKey: String
@available(macOS 10.5, *)
let kCIInputScaleKey: String
@available(macOS 10.5, *)
let kCIInputAspectRatioKey: String
@available(macOS 10.5, *)
let kCIInputCenterKey: String
@available(macOS 10.5, *)
let kCIInputRadiusKey: String
@available(macOS 10.5, *)
let kCIInputAngleKey: String
@available(macOS 10.5, *)
let kCIInputRefractionKey: String
@available(macOS 10.5, *)
let kCIInputWidthKey: String
@available(macOS 10.5, *)
let kCIInputSharpnessKey: String
@available(macOS 10.5, *)
let kCIInputIntensityKey: String
@available(macOS 10.5, *)
let kCIInputEVKey: String
@available(macOS 10.5, *)
let kCIInputSaturationKey: String
@available(macOS 10.5, *)
let kCIInputColorKey: String
@available(macOS 10.5, *)
let kCIInputBrightnessKey: String
@available(macOS 10.5, *)
let kCIInputContrastKey: String
@available(macOS 10.5, *)
let kCIInputBiasKey: String
@available(macOS 10.11, *)
let kCIInputWeightsKey: String
@available(macOS 10.5, *)
let kCIInputGradientImageKey: String
@available(macOS 10.5, *)
let kCIInputMaskImageKey: String
@available(macOS 10.14, *)
let kCIInputMatteImageKey: String
@available(macOS 10.5, *)
let kCIInputShadingImageKey: String
@available(macOS 10.5, *)
let kCIInputTargetImageKey: String
@available(macOS 10.5, *)
let kCIInputExtentKey: String
@available(macOS 10.11, *)
let kCIInputVersionKey: String
@available(macOS 10.4, *)
class CIFilter : NSObject, NSSecureCoding, NSCopying {
  @available(macOS 10.10, *)
  var outputImage: CIImage? { get }
  var name: String
  @available(macOS 10.5, *)
  var isEnabled: Bool
  var inputKeys: [String] { get }
  var outputKeys: [String] { get }
  func setDefaults()
  var attributes: [String : Any] { get }
  @available(macOS 10.4, *)
  func apply(_ k: CIKernel, arguments args: [Any]?, options dict: [String : Any]? = nil) -> CIImage?
}

extension CIFilter {
}
protocol CIFilterProtocol {
  @available(macOS 10.4, *)
  var outputImage: CIImage? { get }
  optional static func customAttributes() -> [String : Any]?
}
extension CIFilter {
  /*not inherited*/ init?(name: String)
  @available(macOS 10.10, *)
  /*not inherited*/ init?(name: String, parameters params: [String : Any]?)
  class func filterNames(inCategory category: String?) -> [String]
  class func filterNames(inCategories categories: [String]?) -> [String]
  @available(macOS 10.4, *)
  class func registerName(_ name: String, constructor anObject: CIFilterConstructor, classAttributes attributes: [String : Any] = [:])
  @available(macOS 10.4, *)
  class func localizedName(forFilterName filterName: String) -> String?
  @available(macOS 10.4, *)
  class func localizedName(forCategory category: String) -> String
  @available(macOS 10.4, *)
  class func localizedDescription(forFilterName filterName: String) -> String?
  @available(macOS 10.4, *)
  class func localizedReferenceDocumentation(forFilterName filterName: String) -> URL?
}
extension CIFilter {
  @available(macOS 10.9, *)
  class func serializedXMP(from filters: [CIFilter], inputImageExtent extent: CGRect) -> Data?
  @available(macOS 10.9, *)
  class func filterArray(fromSerializedXMP xmpData: Data, inputImageExtent extent: CGRect, error outError: NSErrorPointer) -> [CIFilter]
}
