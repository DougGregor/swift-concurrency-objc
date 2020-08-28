
@available(tvOS 5.0, *)
class CIImage : NSObject, NSSecureCoding, NSCopying {
  class func empty() -> CIImage
  @available(tvOS 13.0, *)
  class var black: CIImage { get }
  @available(tvOS 13.0, *)
  class var white: CIImage { get }
  @available(tvOS 13.0, *)
  class var gray: CIImage { get }
  @available(tvOS 13.0, *)
  class var red: CIImage { get }
  @available(tvOS 13.0, *)
  class var green: CIImage { get }
  @available(tvOS 13.0, *)
  class var blue: CIImage { get }
  @available(tvOS 13.0, *)
  class var cyan: CIImage { get }
  @available(tvOS 13.0, *)
  class var magenta: CIImage { get }
  @available(tvOS 13.0, *)
  class var yellow: CIImage { get }
  @available(tvOS 13.0, *)
  class var clear: CIImage { get }
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [CIImageOption : Any]? = nil)
  @available(tvOS 13.0, *)
  init(cgImageSource source: CGImageSource, index: Int, options dict: [CIImageOption : Any]? = nil)
  init?(data: Data)
  init?(data: Data, options: [CIImageOption : Any]? = nil)
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(tvOS, introduced: 6.0, deprecated: 12.0, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(tvOS 9.0, *)
  init?(mtlTexture texture: MTLTexture, options: [CIImageOption : Any]? = nil)
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [CIImageOption : Any]? = nil)
  @available(tvOS 5.0, *)
  init(ioSurface surface: IOSurfaceRef)
  @available(tvOS 5.0, *)
  init(ioSurface surface: IOSurfaceRef, options: [CIImageOption : Any]? = nil)
  @available(tvOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(tvOS 9.0, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [CIImageOption : Any]? = nil)
  @available(tvOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(tvOS 5.0, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [CIImageOption : Any]? = nil)
  init(color: CIColor)
  func transformed(by matrix: CGAffineTransform) -> CIImage
  @available(tvOS 10.0, *)
  func transformed(by matrix: CGAffineTransform, highQualityDownsample: Bool) -> CIImage
  @available(tvOS 8.0, *)
  func oriented(forExifOrientation orientation: Int32) -> CIImage
  @available(tvOS 8.0, *)
  func orientationTransform(forExifOrientation orientation: Int32) -> CGAffineTransform
  @available(tvOS 11.0, *)
  func oriented(_ orientation: CGImagePropertyOrientation) -> CIImage
  @available(tvOS 11.0, *)
  func orientationTransform(for orientation: CGImagePropertyOrientation) -> CGAffineTransform
  @available(tvOS 8.0, *)
  func composited(over dest: CIImage) -> CIImage
  func cropped(to rect: CGRect) -> CIImage
  @available(tvOS 8.0, *)
  func clampedToExtent() -> CIImage
  @available(tvOS 10.0, *)
  func clamped(to rect: CGRect) -> CIImage
  @available(tvOS 8.0, *)
  func applyingFilter(_ filterName: String, parameters params: [String : Any]) -> CIImage
  @available(tvOS 11.0, *)
  func applyingFilter(_ filterName: String) -> CIImage
  @available(tvOS 10.0, *)
  func matchedToWorkingSpace(from colorSpace: CGColorSpace) -> CIImage?
  @available(tvOS 10.0, *)
  func matchedFromWorkingSpace(to colorSpace: CGColorSpace) -> CIImage?
  @available(tvOS 10.0, *)
  func premultiplyingAlpha() -> CIImage
  @available(tvOS 10.0, *)
  func unpremultiplyingAlpha() -> CIImage
  @available(tvOS 10.0, *)
  func settingAlphaOne(in extent: CGRect) -> CIImage
  @available(tvOS 10.0, *)
  func applyingGaussianBlur(sigma: Double) -> CIImage
  @available(tvOS 10.0, *)
  func settingProperties(_ properties: [AnyHashable : Any]) -> CIImage
  @available(tvOS 11.0, *)
  func samplingLinear() -> CIImage
  @available(tvOS 11.0, *)
  func samplingNearest() -> CIImage
  @available(tvOS 12.0, *)
  func insertingIntermediate() -> CIImage
  @available(tvOS 12.0, *)
  func insertingIntermediate(cache: Bool) -> CIImage
  var extent: CGRect { get }
  @available(tvOS 5.0, *)
  var properties: [String : Any] { get }
  @available(tvOS 9.0, *)
  var url: URL? { get }
  @available(tvOS 9.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(tvOS 10.0, *)
  var pixelBuffer: CVPixelBuffer? { get }
  @available(tvOS 10.0, *)
  var cgImage: CGImage? { get }
  @available(tvOS 6.0, *)
  func regionOfInterest(for image: CIImage, in rect: CGRect) -> CGRect
}
struct CIFormat : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int32)
  let rawValue: Int32
}
extension CIFormat {
  @available(tvOS 6.0, *)
  static var ARGB8: CIFormat
  static var BGRA8: CIFormat
  static var RGBA8: CIFormat
  @available(tvOS 9.0, *)
  static var ABGR8: CIFormat
  @available(tvOS 6.0, *)
  static var RGBAh: CIFormat
  @available(tvOS 10.0, *)
  static var RGBA16: CIFormat
  @available(tvOS 7.0, *)
  static var RGBAf: CIFormat
  @available(tvOS 9.0, *)
  static var A8: CIFormat
  @available(tvOS 9.0, *)
  static var A16: CIFormat
  @available(tvOS 9.0, *)
  static var Ah: CIFormat
  @available(tvOS 9.0, *)
  static var Af: CIFormat
  @available(tvOS 9.0, *)
  static var R8: CIFormat
  @available(tvOS 9.0, *)
  static var R16: CIFormat
  @available(tvOS 9.0, *)
  static var Rh: CIFormat
  @available(tvOS 9.0, *)
  static var Rf: CIFormat
  @available(tvOS 9.0, *)
  static var RG8: CIFormat
  @available(tvOS 9.0, *)
  static var RG16: CIFormat
  @available(tvOS 9.0, *)
  static var RGh: CIFormat
  @available(tvOS 9.0, *)
  static var RGf: CIFormat
  @available(tvOS 10.0, *)
  static var L8: CIFormat
  @available(tvOS 10.0, *)
  static var L16: CIFormat
  @available(tvOS 10.0, *)
  static var Lh: CIFormat
  @available(tvOS 10.0, *)
  static var Lf: CIFormat
  @available(tvOS 10.0, *)
  static var LA8: CIFormat
  @available(tvOS 10.0, *)
  static var LA16: CIFormat
  @available(tvOS 10.0, *)
  static var LAh: CIFormat
  @available(tvOS 10.0, *)
  static var LAf: CIFormat
}
struct CIImageOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIImageOption {
  static let colorSpace: CIImageOption
  @available(tvOS 11.0, *)
  static let nearestSampling: CIImageOption
  @available(tvOS 5.0, *)
  static let properties: CIImageOption
  @available(tvOS 11.0, *)
  static let applyOrientationProperty: CIImageOption
  @available(tvOS 11.0, *)
  static let auxiliaryDepth: CIImageOption
  @available(tvOS 11.0, *)
  static let auxiliaryDisparity: CIImageOption
  @available(tvOS 12.0, *)
  static let auxiliaryPortraitEffectsMatte: CIImageOption
  @available(tvOS 13.0, *)
  static let auxiliarySemanticSegmentationSkinMatte: CIImageOption
  @available(tvOS 13.0, *)
  static let auxiliarySemanticSegmentationHairMatte: CIImageOption
  @available(tvOS 13.0, *)
  static let auxiliarySemanticSegmentationTeethMatte: CIImageOption
}
extension CIImage {
  @available(tvOS 5.0, *)
  func autoAdjustmentFilters() -> [CIFilter]
  @available(tvOS 5.0, *)
  func autoAdjustmentFilters(options: [CIImageAutoAdjustmentOption : Any]? = nil) -> [CIFilter]
}
struct CIImageAutoAdjustmentOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIImageAutoAdjustmentOption {
  @available(tvOS 5.0, *)
  static let enhance: CIImageAutoAdjustmentOption
  @available(tvOS 5.0, *)
  static let redEye: CIImageAutoAdjustmentOption
  @available(tvOS 5.0, *)
  static let features: CIImageAutoAdjustmentOption
  @available(tvOS 8.0, *)
  static let crop: CIImageAutoAdjustmentOption
  @available(tvOS 8.0, *)
  static let level: CIImageAutoAdjustmentOption
}
extension CIImage {
}
extension CIImage {
}
extension CIImage {
}
