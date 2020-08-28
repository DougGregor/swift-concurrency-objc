
@available(iOS 5.0, *)
class CIContext : NSObject {
  @available(iOS 9.0, *)
  /*not inherited*/ init(cgContext cgctx: CGContext, options: [CIContextOption : Any]? = nil)
  @available(iOS 5.0, *)
  init(options: [CIContextOption : Any]? = nil)
  @available(iOS, introduced: 5.0, deprecated: 12.0, message: "Core Image OpenGLES API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  /*not inherited*/ init(eaglContext: EAGLContext)
  @available(iOS, introduced: 5.0, deprecated: 12.0, message: "Core Image OpenGLES API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  /*not inherited*/ init(eaglContext: EAGLContext, options: [CIContextOption : Any]? = nil)
  @available(iOS 9.0, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice)
  @available(iOS 9.0, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice, options: [CIContextOption : Any]? = nil)
  @available(iOS 13.0, *)
  /*not inherited*/ init(mtlCommandQueue commandQueue: MTLCommandQueue)
  @available(iOS 13.0, *)
  /*not inherited*/ init(mtlCommandQueue commandQueue: MTLCommandQueue, options: [CIContextOption : Any]? = nil)
  @available(iOS 9.0, *)
  var workingColorSpace: CGColorSpace? { get }
  @available(iOS 9.0, *)
  var workingFormat: CIFormat { get }
  func draw(_ image: CIImage, in inRect: CGRect, from fromRect: CGRect)
  func render(_ image: CIImage, toBitmap data: UnsafeMutableRawPointer, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(iOS 5.0, *)
  func render(_ image: CIImage, to surface: IOSurfaceRef, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(iOS 5.0, *)
  func render(_ image: CIImage, to buffer: CVPixelBuffer)
  @available(iOS 5.0, *)
  func render(_ image: CIImage, to buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(iOS 9.0, *)
  func render(_ image: CIImage, to texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  @available(iOS 10.0, *)
  func clearCaches()
  @available(iOS 5.0, *)
  func inputImageMaximumSize() -> CGSize
  @available(iOS 5.0, *)
  func outputImageMaximumSize() -> CGSize
}
struct CIContextOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIContextOption {
  static let outputColorSpace: CIContextOption
  static let workingColorSpace: CIContextOption
  @available(iOS 8.0, *)
  static let workingFormat: CIContextOption
  @available(iOS 9.0, *)
  static let highQualityDownsample: CIContextOption
  @available(iOS 7.0, *)
  static let outputPremultiplied: CIContextOption
  @available(iOS 10.0, *)
  static let cacheIntermediates: CIContextOption
  static let useSoftwareRenderer: CIContextOption
  @available(iOS 8.0, *)
  static let priorityRequestLow: CIContextOption
  @available(iOS 13.0, *)
  static let allowLowPower: CIContextOption
  @available(iOS 12.0, *)
  static let name: CIContextOption
}
extension CIContext {
  func createCGImage(_ image: CIImage, from fromRect: CGRect) -> CGImage?
  func createCGImage(_ image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage?
  @available(iOS 10.0, *)
  func createCGImage(_ image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?, deferred: Bool) -> CGImage?
}
extension CIContext {
}
struct CIImageRepresentationOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIContext {
  @available(iOS 10.0, *)
  func tiffRepresentation(of image: CIImage, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(iOS 10.0, *)
  func jpegRepresentation(of image: CIImage, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(iOS 11.0, *)
  func heifRepresentation(of image: CIImage, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(iOS 11.0, *)
  func pngRepresentation(of image: CIImage, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(iOS 10.0, *)
  func writeTIFFRepresentation(of image: CIImage, to url: URL, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
  @available(iOS 11.0, *)
  func writePNGRepresentation(of image: CIImage, to url: URL, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
  @available(iOS 10.0, *)
  func writeJPEGRepresentation(of image: CIImage, to url: URL, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
  @available(iOS 11.0, *)
  func writeHEIFRepresentation(of image: CIImage, to url: URL, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
}
extension CIImageRepresentationOption {
  @available(iOS 11.0, *)
  static let avDepthData: CIImageRepresentationOption
  @available(iOS 11.0, *)
  static let depthImage: CIImageRepresentationOption
  @available(iOS 11.0, *)
  static let disparityImage: CIImageRepresentationOption
  @available(iOS 12.0, *)
  static let avPortraitEffectsMatte: CIImageRepresentationOption
  @available(iOS 12.0, *)
  static let portraitEffectsMatteImage: CIImageRepresentationOption
  @available(iOS 13.0, *)
  static let avSemanticSegmentationMattes: CIImageRepresentationOption
  @available(iOS 13.0, *)
  static let semanticSegmentationSkinMatteImage: CIImageRepresentationOption
  @available(iOS 13.0, *)
  static let semanticSegmentationHairMatteImage: CIImageRepresentationOption
  @available(iOS 13.0, *)
  static let semanticSegmentationTeethMatteImage: CIImageRepresentationOption
}
extension CIContext {
  @available(iOS 12.0, *)
  func depthBlurEffectFilter(forImageURL url: URL, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(iOS 12.0, *)
  func depthBlurEffectFilter(forImageData data: Data, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(iOS 12.0, *)
  func depthBlurEffectFilter(for image: CIImage, disparityImage: CIImage, portraitEffectsMatte: CIImage?, orientation: CGImagePropertyOrientation, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(iOS 13.0, *)
  func depthBlurEffectFilter(for image: CIImage, disparityImage: CIImage, portraitEffectsMatte: CIImage?, hairSemanticSegmentation: CIImage?, orientation: CGImagePropertyOrientation, options: [AnyHashable : Any]? = nil) -> CIFilter?
}
