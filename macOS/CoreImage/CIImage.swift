
@available(macOS 10.4, *)
class CIImage : NSObject, NSSecureCoding, NSCopying {
  class func empty() -> CIImage
  @available(macOS 10.15, *)
  class var black: CIImage { get }
  @available(macOS 10.15, *)
  class var white: CIImage { get }
  @available(macOS 10.15, *)
  class var gray: CIImage { get }
  @available(macOS 10.15, *)
  class var red: CIImage { get }
  @available(macOS 10.15, *)
  class var green: CIImage { get }
  @available(macOS 10.15, *)
  class var blue: CIImage { get }
  @available(macOS 10.15, *)
  class var cyan: CIImage { get }
  @available(macOS 10.15, *)
  class var magenta: CIImage { get }
  @available(macOS 10.15, *)
  class var yellow: CIImage { get }
  @available(macOS 10.15, *)
  class var clear: CIImage { get }
  init(cgImage image: CGImage)
  init(cgImage image: CGImage, options: [CIImageOption : Any]? = nil)
  @available(macOS 10.15, *)
  init(cgImageSource source: CGImageSource, index: Int, options dict: [CIImageOption : Any]? = nil)
  @available(macOS, introduced: 10.4, deprecated: 10.11, message: "Use initWithCGImage: instead.")
  init(cgLayer layer: CGLayer)
  @available(macOS, introduced: 10.4, deprecated: 10.11, message: "Use initWithCGImage:options instead.")
  init(cgLayer layer: CGLayer, options: [CIImageOption : Any]? = nil)
  init?(data: Data)
  init?(data: Data, options: [CIImageOption : Any]? = nil)
  init(bitmapData data: Data, bytesPerRow: Int, size: CGSize, format: CIFormat, colorSpace: CGColorSpace?)
  @available(macOS, introduced: 10.4, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  init(texture name: UInt32, size: CGSize, flipped: Bool, colorSpace: CGColorSpace?)
  @available(macOS, introduced: 10.9, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  init(texture name: UInt32, size: CGSize, flipped: Bool, options: [CIImageOption : Any]? = nil)
  @available(macOS 10.11, *)
  init?(mtlTexture texture: MTLTexture, options: [CIImageOption : Any]? = nil)
  init?(contentsOf url: URL)
  init?(contentsOf url: URL, options: [CIImageOption : Any]? = nil)
  @available(macOS 10.6, *)
  init(ioSurface surface: IOSurfaceRef)
  @available(macOS 10.6, *)
  init(ioSurface surface: IOSurfaceRef, options: [CIImageOption : Any]? = nil)
  @available(macOS, introduced: 10.9, deprecated: 10.11)
  init(ioSurface surface: IOSurfaceRef, plane: Int, format: CIFormat, options: [CIImageOption : Any]? = nil)
  @available(macOS 10.4, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer)
  @available(macOS 10.4, *)
  init(cvImageBuffer imageBuffer: CVImageBuffer, options: [CIImageOption : Any]? = nil)
  @available(macOS 10.11, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer)
  @available(macOS 10.11, *)
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [CIImageOption : Any]? = nil)
  init(color: CIColor)
  func transformed(by matrix: CGAffineTransform) -> CIImage
  @available(macOS 10.12, *)
  func transformed(by matrix: CGAffineTransform, highQualityDownsample: Bool) -> CIImage
  @available(macOS 10.10, *)
  func oriented(forExifOrientation orientation: Int32) -> CIImage
  @available(macOS 10.10, *)
  func orientationTransform(forExifOrientation orientation: Int32) -> CGAffineTransform
  @available(macOS 10.13, *)
  func oriented(_ orientation: CGImagePropertyOrientation) -> CIImage
  @available(macOS 10.13, *)
  func orientationTransform(for orientation: CGImagePropertyOrientation) -> CGAffineTransform
  @available(macOS 10.4, *)
  func composited(over dest: CIImage) -> CIImage
  func cropped(to rect: CGRect) -> CIImage
  @available(macOS 10.10, *)
  func clampedToExtent() -> CIImage
  @available(macOS 10.12, *)
  func clamped(to rect: CGRect) -> CIImage
  @available(macOS 10.10, *)
  func applyingFilter(_ filterName: String, parameters params: [String : Any]) -> CIImage
  @available(macOS 10.13, *)
  func applyingFilter(_ filterName: String) -> CIImage
  @available(macOS 10.12, *)
  func matchedToWorkingSpace(from colorSpace: CGColorSpace) -> CIImage?
  @available(macOS 10.12, *)
  func matchedFromWorkingSpace(to colorSpace: CGColorSpace) -> CIImage?
  @available(macOS 10.12, *)
  func premultiplyingAlpha() -> CIImage
  @available(macOS 10.12, *)
  func unpremultiplyingAlpha() -> CIImage
  @available(macOS 10.12, *)
  func settingAlphaOne(in extent: CGRect) -> CIImage
  @available(macOS 10.12, *)
  func applyingGaussianBlur(sigma: Double) -> CIImage
  @available(macOS 10.12, *)
  func settingProperties(_ properties: [AnyHashable : Any]) -> CIImage
  @available(macOS 10.13, *)
  func samplingLinear() -> CIImage
  @available(macOS 10.13, *)
  func samplingNearest() -> CIImage
  @available(macOS 10.14, *)
  func insertingIntermediate() -> CIImage
  @available(macOS 10.14, *)
  func insertingIntermediate(cache: Bool) -> CIImage
  var extent: CGRect { get }
  @available(macOS 10.8, *)
  var properties: [String : Any] { get }
  @available(macOS 10.4, *)
  var definition: CIFilterShape { get }
  @available(macOS 10.4, *)
  var url: URL? { get }
  @available(macOS 10.4, *)
  var colorSpace: CGColorSpace? { get }
  @available(macOS 10.12, *)
  var pixelBuffer: CVPixelBuffer? { get }
  @available(macOS 10.12, *)
  var cgImage: CGImage? { get }
  @available(macOS 10.11, *)
  func regionOfInterest(for image: CIImage, in rect: CGRect) -> CGRect
}
struct CIFormat : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: Int32)
  let rawValue: Int32
}
extension CIFormat {
  @available(macOS 10.4, *)
  static var ARGB8: CIFormat
  static var BGRA8: CIFormat
  static var RGBA8: CIFormat
  @available(macOS 10.11, *)
  static var ABGR8: CIFormat
  @available(macOS 10.4, *)
  static var RGBAh: CIFormat
  @available(macOS 10.4, *)
  static var RGBA16: CIFormat
  @available(macOS 10.4, *)
  static var RGBAf: CIFormat
  @available(macOS 10.11, *)
  static var A8: CIFormat
  @available(macOS 10.11, *)
  static var A16: CIFormat
  @available(macOS 10.11, *)
  static var Ah: CIFormat
  @available(macOS 10.11, *)
  static var Af: CIFormat
  @available(macOS 10.11, *)
  static var R8: CIFormat
  @available(macOS 10.11, *)
  static var R16: CIFormat
  @available(macOS 10.11, *)
  static var Rh: CIFormat
  @available(macOS 10.11, *)
  static var Rf: CIFormat
  @available(macOS 10.11, *)
  static var RG8: CIFormat
  @available(macOS 10.11, *)
  static var RG16: CIFormat
  @available(macOS 10.11, *)
  static var RGh: CIFormat
  @available(macOS 10.11, *)
  static var RGf: CIFormat
  @available(macOS 10.12, *)
  static var L8: CIFormat
  @available(macOS 10.12, *)
  static var L16: CIFormat
  @available(macOS 10.12, *)
  static var Lh: CIFormat
  @available(macOS 10.12, *)
  static var Lf: CIFormat
  @available(macOS 10.12, *)
  static var LA8: CIFormat
  @available(macOS 10.12, *)
  static var LA16: CIFormat
  @available(macOS 10.12, *)
  static var LAh: CIFormat
  @available(macOS 10.12, *)
  static var LAf: CIFormat
}
struct CIImageOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIImageOption {
  static let colorSpace: CIImageOption
  @available(macOS 10.13, *)
  static let nearestSampling: CIImageOption
  @available(macOS 10.8, *)
  static let properties: CIImageOption
  @available(macOS 10.13, *)
  static let applyOrientationProperty: CIImageOption
  @available(macOS, introduced: 10.9, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  static let textureTarget: CIImageOption
  @available(macOS, introduced: 10.9, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  static let textureFormat: CIImageOption
  @available(macOS 10.13, *)
  static let auxiliaryDepth: CIImageOption
  @available(macOS 10.13, *)
  static let auxiliaryDisparity: CIImageOption
  @available(macOS 10.14, *)
  static let auxiliaryPortraitEffectsMatte: CIImageOption
  @available(macOS 10.15, *)
  static let auxiliarySemanticSegmentationSkinMatte: CIImageOption
  @available(macOS 10.15, *)
  static let auxiliarySemanticSegmentationHairMatte: CIImageOption
  @available(macOS 10.15, *)
  static let auxiliarySemanticSegmentationTeethMatte: CIImageOption
  @available(macOS 11.0, *)
  static let auxiliarySemanticSegmentationGlassesMatte: CIImageOption
}
extension CIImage {
  @available(macOS 10.8, *)
  func autoAdjustmentFilters() -> [CIFilter]
  @available(macOS 10.8, *)
  func autoAdjustmentFilters(options: [CIImageAutoAdjustmentOption : Any]? = nil) -> [CIFilter]
}
struct CIImageAutoAdjustmentOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIImageAutoAdjustmentOption {
  @available(macOS 10.8, *)
  static let enhance: CIImageAutoAdjustmentOption
  @available(macOS 10.8, *)
  static let redEye: CIImageAutoAdjustmentOption
  @available(macOS 10.8, *)
  static let features: CIImageAutoAdjustmentOption
  @available(macOS 10.10, *)
  static let crop: CIImageAutoAdjustmentOption
  @available(macOS 10.10, *)
  static let level: CIImageAutoAdjustmentOption
}
extension CIImage {
}
extension CIImage {
}
extension CIImage {
}
