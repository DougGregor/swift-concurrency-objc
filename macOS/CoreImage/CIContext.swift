
@available(macOS 10.4, *)
class CIContext : NSObject {
  @available(macOS, introduced: 10.6, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  /*not inherited*/ init(cglContext cglctx: CGLContextObj, pixelFormat: CGLPixelFormatObj?, colorSpace: CGColorSpace?, options: [CIContextOption : Any]? = nil)
  @available(macOS 10.4, *)
  /*not inherited*/ init(cgContext cgctx: CGContext, options: [CIContextOption : Any]? = nil)
  @available(macOS 10.4, *)
  init(options: [CIContextOption : Any]? = nil)
  @available(macOS 10.11, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice)
  @available(macOS 10.11, *)
  /*not inherited*/ init(mtlDevice device: MTLDevice, options: [CIContextOption : Any]? = nil)
  @available(macOS 10.15, *)
  /*not inherited*/ init(mtlCommandQueue commandQueue: MTLCommandQueue)
  @available(macOS 10.15, *)
  /*not inherited*/ init(mtlCommandQueue commandQueue: MTLCommandQueue, options: [CIContextOption : Any]? = nil)
  @available(macOS 10.11, *)
  var workingColorSpace: CGColorSpace? { get }
  @available(macOS 10.11, *)
  var workingFormat: CIFormat { get }
  func draw(_ image: CIImage, in inRect: CGRect, from fromRect: CGRect)
  @available(macOS, introduced: 10.4, deprecated: 10.11)
  func createCGLayer(with size: CGSize, info: CFDictionary?) -> CGLayer?
  func render(_ image: CIImage, toBitmap data: UnsafeMutableRawPointer, rowBytes: Int, bounds: CGRect, format: CIFormat, colorSpace: CGColorSpace?)
  @available(macOS 10.6, *)
  func render(_ image: CIImage, to surface: IOSurfaceRef, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(macOS 10.11, *)
  func render(_ image: CIImage, to buffer: CVPixelBuffer)
  @available(macOS 10.11, *)
  func render(_ image: CIImage, to buffer: CVPixelBuffer, bounds: CGRect, colorSpace: CGColorSpace?)
  @available(macOS 10.11, *)
  func render(_ image: CIImage, to texture: MTLTexture, commandBuffer: MTLCommandBuffer?, bounds: CGRect, colorSpace: CGColorSpace)
  @available(macOS 10.4, *)
  func reclaimResources()
  @available(macOS 10.4, *)
  func clearCaches()
}
struct CIContextOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIContextOption {
  static let outputColorSpace: CIContextOption
  static let workingColorSpace: CIContextOption
  @available(macOS 10.4, *)
  static let workingFormat: CIContextOption
  @available(macOS 10.11, *)
  static let highQualityDownsample: CIContextOption
  @available(macOS 10.4, *)
  static let outputPremultiplied: CIContextOption
  @available(macOS 10.12, *)
  static let cacheIntermediates: CIContextOption
  static let useSoftwareRenderer: CIContextOption
  @available(macOS 10.12, *)
  static let priorityRequestLow: CIContextOption
  @available(macOS 10.12, *)
  static let allowLowPower: CIContextOption
  @available(macOS 10.14, *)
  static let name: CIContextOption
}
extension CIContext {
  func createCGImage(_ image: CIImage, from fromRect: CGRect) -> CGImage?
  func createCGImage(_ image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?) -> CGImage?
  @available(macOS 10.12, *)
  func createCGImage(_ image: CIImage, from fromRect: CGRect, format: CIFormat, colorSpace: CGColorSpace?, deferred: Bool) -> CGImage?
}
extension CIContext {
  @available(macOS 10.10, *)
  class func offlineGPUCount() -> UInt32
  @available(macOS, introduced: 10.10, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  /*not inherited*/ init?(forOfflineGPUAt index: UInt32)
  @available(macOS, introduced: 10.10, deprecated: 10.14, message: "Core Image OpenGL API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  /*not inherited*/ init?(forOfflineGPUAt index: UInt32, colorSpace: CGColorSpace?, options: [CIContextOption : Any]? = nil, sharedContext: CGLContextObj?)
}
struct CIImageRepresentationOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CIContext {
  @available(macOS 10.12, *)
  func tiffRepresentation(of image: CIImage, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(macOS 10.12, *)
  func jpegRepresentation(of image: CIImage, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(macOS 10.13.4, *)
  func heifRepresentation(of image: CIImage, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(macOS 10.13, *)
  func pngRepresentation(of image: CIImage, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) -> Data?
  @available(macOS 10.12, *)
  func writeTIFFRepresentation(of image: CIImage, to url: URL, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
  @available(macOS 10.13, *)
  func writePNGRepresentation(of image: CIImage, to url: URL, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
  @available(macOS 10.12, *)
  func writeJPEGRepresentation(of image: CIImage, to url: URL, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
  @available(macOS 10.13.4, *)
  func writeHEIFRepresentation(of image: CIImage, to url: URL, format: CIFormat, colorSpace: CGColorSpace, options: [CIImageRepresentationOption : Any] = [:]) throws
}
extension CIImageRepresentationOption {
  @available(macOS 10.13, *)
  static let avDepthData: CIImageRepresentationOption
  @available(macOS 10.13, *)
  static let depthImage: CIImageRepresentationOption
  @available(macOS 10.13, *)
  static let disparityImage: CIImageRepresentationOption
  @available(macOS 10.14, *)
  static let avPortraitEffectsMatte: CIImageRepresentationOption
  @available(macOS 10.14, *)
  static let portraitEffectsMatteImage: CIImageRepresentationOption
  @available(macOS 10.15, *)
  static let avSemanticSegmentationMattes: CIImageRepresentationOption
  @available(macOS 10.15, *)
  static let semanticSegmentationSkinMatteImage: CIImageRepresentationOption
  @available(macOS 10.15, *)
  static let semanticSegmentationHairMatteImage: CIImageRepresentationOption
  @available(macOS 10.15, *)
  static let semanticSegmentationTeethMatteImage: CIImageRepresentationOption
  @available(macOS 11.0, *)
  static let semanticSegmentationGlassesMatteImage: CIImageRepresentationOption
}
extension CIContext {
  @available(macOS 10.14, *)
  func depthBlurEffectFilter(forImageURL url: URL, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(macOS 10.14, *)
  func depthBlurEffectFilter(forImageData data: Data, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(macOS 10.14, *)
  func depthBlurEffectFilter(for image: CIImage, disparityImage: CIImage, portraitEffectsMatte: CIImage?, orientation: CGImagePropertyOrientation, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(macOS 10.15, *)
  func depthBlurEffectFilter(for image: CIImage, disparityImage: CIImage, portraitEffectsMatte: CIImage?, hairSemanticSegmentation: CIImage?, orientation: CGImagePropertyOrientation, options: [AnyHashable : Any]? = nil) -> CIFilter?
  @available(macOS 11.0, *)
  func depthBlurEffectFilter(for image: CIImage, disparityImage: CIImage, portraitEffectsMatte: CIImage?, hairSemanticSegmentation: CIImage?, glassesMatte: CIImage?, gainMap: CIImage?, orientation: CGImagePropertyOrientation, options: [AnyHashable : Any]? = nil) -> CIFilter?
}
