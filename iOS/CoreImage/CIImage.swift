
@available(iOS 5.0, *)
class CIImage : NSObject, NSSecureCoding, NSCopying {
  class func empty() -> CIImage
  @available(iOS 13.0, *)
  class var black: CIImage { get }
  @available(iOS 13.0, *)
  class var white: CIImage { get }
  @available(iOS 13.0, *)
  class var gray: CIImage { get }
  @available(iOS 13.0, *)
  class var red: CIImage { get }
  @available(iOS 13.0, *)
  class var green: CIImage { get }
  @available(iOS 13.0, *)
  class var blue: CIImage { get }
  @available(iOS 13.0, *)
  class var cyan: CIImage { get }
  @available(iOS 13.0, *)
  class var magenta: CIImage { get }
  @available(iOS 13.0, *)
  class var yellow: CIImage { get }
  @available(iOS 13.0, *)
  class var clear: CIImage { get }
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [CIImageOption : Any]? = nil)
  @available(iOS 13.0, *)
  init(cgImageSource source: CGImageSource, index: Int, options dict: [CIImageOption : Any]? = nil)
  init?(data: Data)
  init?(data: Data, options: [CIImageOption : Any]? = nil)
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(iOS, introduced: 6.0, deprecated: 12.0, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(iOS 9.0, *)
  init?(mtlTexture texture: MTLTexture, options: [CIImageOption : Any]? = nil)
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [CIImageOption : Any]? = nil)
  @available(iOS 5.0, *)
  init(ioSurface surface: IOSurfaceRef)
  @available(iOS 5.0, *)
  init(ioSurface surface: IOSurfaceRef, options: [CIImageOption : Any]? = nil)
  @available(iOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(iOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [CIImageOption : Any]? = nil)
  @available(iOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(iOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [CIImageOption : Any]? = nil)
  init(color: CIColor)
  func transformed(by matrix: CGAffineTransform) -> CIImage
  @available(iOS 10.0, *)
  func transformed(by matrix: CGAffineTransform, highQualityDownsample: Bool) -> CIImage
  @available(iOS 8.0, *)
  func oriented(forExifOrientation orientation: Int32) -> CIImage
  @available(iOS 8.0, *)
  func orientationTransform(forExifOrientation orientation: Int32) -> CGAffineTransform
  @available(iOS 11.0, *)
  func oriented(_ orientation: CGImagePropertyOrientation) -> CIImage
  @available(iOS 11.0, *)
  func orientationTransform(for orientation: CGImagePropertyOrientation) -> CGAffineTransform
  @available(iOS 8.0, *)
  func composited(over dest: CIImage) -> CIImage
  func cropped(to rect: CGRect) -> CIImage
  @available(iOS 8.0, *)
  func clampedToExtent() -> CIImage
  @available(iOS 10.0, *)
  func clamped(to rect: CGRect) -> CIImage
  @available(iOS 8.0, *)
  func applyingFilter(_ filterName: String, parameters params: [String : Any]) -> CIImage
  @available(iOS 11.0, *)
  func applyingFilter(_ filterName: String) -> CIImage
  @available(iOS 10.0, *)
  func matchedToWorkingSpace(from colorSpace: CGColorSpace) -> CIImage?
  @available(iOS 10.0, *)
  func matchedFromWorkingSpace(to colorSpace: CGColorSpace) -> CIImage?
  @available(iOS 10.0, *)
  func premultiplyingAlpha() -> CIImage
  @available(iOS 10.0, *)
  func unpremultiplyingAlpha() -> CIImage
  @available(iOS 10.0, *)
  func settingAlphaOne(in extent: CGRect) -> CIImage
  @available(iOS 10.0, *)
  func applyingGaussianBlur(sigma: Double) -> CIImage
  @available(iOS 10.0, *)
  func settingProperties(_ properties: [AnyHashable : Any]) -> CIImage
  @available(iOS 11.0, *)
  func samplingLinear() -> CIImage
  @available(iOS 11.0, *)
  func samplingNearest() -> CIImage
  @available(iOS 12.0, *)
  func insertingIntermediate() -> CIImage
  @available(iOS 12.0, *)
  func insertingIntermediate(cache: Bool) -> CIImage
  var extent: CGRect { get }
  @available(iOS 5.0, *)
  var properties: [String : Any] { get }
  @available(iOS 9.0, *)
  var url: URL? { get }
  @available(iOS 9.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(iOS 10.0, *)
  var pixelBuffer: CVPixelBuffer? { get }
  @available(iOS 10.0, *)
  var cgImage: CGImage? { get }
  @available(iOS 6.0, *)
  func regionOfInterest(for image: CIImage, in rect: CGRect) -> CGRect
}
struct CIFormat : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int32)
  let rawValue: Int32
}
extension CIFormat {
  @available(iOS 6.0, *)
  static var ARGB8: CIFormat
  static var BGRA8: CIFormat
  static var RGBA8: CIFormat
  @available(iOS 9.0, *)
  static var ABGR8: CIFormat
  @available(iOS 6.0, *)
  static var RGBAh: CIFormat
  @available(iOS 10.0, *)
  static var RGBA16: CIFormat
  @available(iOS 7.0, *)
  static var RGBAf: CIFormat
  @available(iOS 9.0, *)
  static var A8: CIFormat
  @available(iOS 9.0, *)
  static var A16: CIFormat
  @available(iOS 9.0, *)
  static var Ah: CIFormat
  @available(iOS 9.0, *)
  static var Af: CIFormat
  @available(iOS 9.0, *)
  static var R8: CIFormat
  @available(iOS 9.0, *)
  static var R16: CIFormat
  @available(iOS 9.0, *)
  static var Rh: CIFormat
  @available(iOS 9.0, *)
  static var Rf: CIFormat
  @available(iOS 9.0, *)
  static var RG8: CIFormat
  @available(iOS 9.0, *)
  static var RG16: CIFormat
  @available(iOS 9.0, *)
  static var RGh: CIFormat
  @available(iOS 9.0, *)
  static var RGf: CIFormat
  @available(iOS 10.0, *)
  static var L8: CIFormat
  @available(iOS 10.0, *)
  static var L16: CIFormat
  @available(iOS 10.0, *)
  static var Lh: CIFormat
  @available(iOS 10.0, *)
  static var Lf: CIFormat
  @available(iOS 10.0, *)
  static var LA8: CIFormat
  @available(iOS 10.0, *)
  static var LA16: CIFormat
  @available(iOS 10.0, *)
  static var LAh: CIFormat
  @available(iOS 10.0, *)
  static var LAf: CIFormat
}
struct CIImageOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIImageOption {
  static let colorSpace: CIImageOption
  @available(iOS 14.1, *)
  static let toneMapHDRtoSDR: CIImageOption
  @available(iOS 11.0, *)
  static let nearestSampling: CIImageOption
  @available(iOS 5.0, *)
  static let properties: CIImageOption
  @available(iOS 11.0, *)
  static let applyOrientationProperty: CIImageOption
  @available(iOS 11.0, *)
  static let auxiliaryDepth: CIImageOption
  @available(iOS 11.0, *)
  static let auxiliaryDisparity: CIImageOption
  @available(iOS 12.0, *)
  static let auxiliaryPortraitEffectsMatte: CIImageOption
  @available(iOS 13.0, *)
  static let auxiliarySemanticSegmentationSkinMatte: CIImageOption
  @available(iOS 13.0, *)
  static let auxiliarySemanticSegmentationHairMatte: CIImageOption
  @available(iOS 13.0, *)
  static let auxiliarySemanticSegmentationTeethMatte: CIImageOption
  @available(iOS 14.1, *)
  static let auxiliarySemanticSegmentationGlassesMatte: CIImageOption
}
extension CIImage {
  @available(iOS 5.0, *)
  func autoAdjustmentFilters() -> [CIFilter]
  @available(iOS 5.0, *)
  func autoAdjustmentFilters(options: [CIImageAutoAdjustmentOption : Any]? = nil) -> [CIFilter]
}
struct CIImageAutoAdjustmentOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIImageAutoAdjustmentOption {
  @available(iOS 5.0, *)
  static let enhance: CIImageAutoAdjustmentOption
  @available(iOS 5.0, *)
  static let redEye: CIImageAutoAdjustmentOption
  @available(iOS 5.0, *)
  static let features: CIImageAutoAdjustmentOption
  @available(iOS 8.0, *)
  static let crop: CIImageAutoAdjustmentOption
  @available(iOS 8.0, *)
  static let level: CIImageAutoAdjustmentOption
}
extension CIImage {
}
extension CIImage {
}
extension CIImage {
}
