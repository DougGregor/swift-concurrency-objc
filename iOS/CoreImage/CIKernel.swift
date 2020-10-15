
typealias CIKernelROICallback = (Int32, CGRect) -> CGRect
@available(iOS 8.0, *)
class CIKernel : NSObject {
  @available(iOS, introduced: 8.0, deprecated: 12.0, message: "Core Image Kernel Language API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  class func makeKernels(source string: String) -> [CIKernel]?
  @available(iOS, introduced: 8.0, deprecated: 12.0, message: "Core Image Kernel Language API deprecated. (Define CI_SILENCE_GL_DEPRECATION to silence these warnings)")
  convenience init?(source string: String)
  @available(iOS 11.0, *)
  convenience init(functionName name: String, fromMetalLibraryData data: Data) throws
  @available(iOS 11.0, *)
  convenience init(functionName name: String, fromMetalLibraryData data: Data, outputPixelFormat format: CIFormat) throws
  @available(iOS 14.0, *)
  class func kernelNames(fromMetalLibraryData data: Data) -> [String]
  @available(iOS 8.0, *)
  var name: String { get }
  @available(iOS 9.0, *)
  func setROISelector(_ method: Selector)
  @available(iOS 8.0, *)
  func apply(extent: CGRect, roiCallback callback: @escaping CIKernelROICallback, arguments args: [Any]) -> CIImage?
}
@available(iOS 8.0, *)
class CIColorKernel : CIKernel {
  func apply(extent: CGRect, arguments args: [Any]) -> CIImage?
}
@available(iOS 8.0, *)
class CIWarpKernel : CIKernel {
  func apply(extent: CGRect, roiCallback callback: @escaping CIKernelROICallback, image: CIImage, arguments args: [Any]) -> CIImage?
}
@available(iOS 11.0, *)
class CIBlendKernel : CIColorKernel {
  func apply(foreground: CIImage, background: CIImage) -> CIImage?
  @available(iOS 13.0, *)
  func apply(foreground: CIImage, background: CIImage, colorSpace: CGColorSpace) -> CIImage?
}
extension CIBlendKernel {
  class var componentAdd: CIBlendKernel { get }
  class var componentMultiply: CIBlendKernel { get }
  class var componentMin: CIBlendKernel { get }
  class var componentMax: CIBlendKernel { get }
  class var clear: CIBlendKernel { get }
  class var source: CIBlendKernel { get }
  class var destination: CIBlendKernel { get }
  class var sourceOver: CIBlendKernel { get }
  class var destinationOver: CIBlendKernel { get }
  class var sourceIn: CIBlendKernel { get }
  class var destinationIn: CIBlendKernel { get }
  class var sourceOut: CIBlendKernel { get }
  class var destinationOut: CIBlendKernel { get }
  class var sourceAtop: CIBlendKernel { get }
  class var destinationAtop: CIBlendKernel { get }
  class var exclusiveOr: CIBlendKernel { get }
  class var multiply: CIBlendKernel { get }
  class var screen: CIBlendKernel { get }
  class var overlay: CIBlendKernel { get }
  class var darken: CIBlendKernel { get }
  class var lighten: CIBlendKernel { get }
  class var colorDodge: CIBlendKernel { get }
  class var colorBurn: CIBlendKernel { get }
  class var hardLight: CIBlendKernel { get }
  class var softLight: CIBlendKernel { get }
  class var difference: CIBlendKernel { get }
  class var exclusion: CIBlendKernel { get }
  class var hue: CIBlendKernel { get }
  class var saturation: CIBlendKernel { get }
  class var color: CIBlendKernel { get }
  class var luminosity: CIBlendKernel { get }
  class var subtract: CIBlendKernel { get }
  class var divide: CIBlendKernel { get }
  class var linearBurn: CIBlendKernel { get }
  class var linearDodge: CIBlendKernel { get }
  class var vividLight: CIBlendKernel { get }
  class var linearLight: CIBlendKernel { get }
  class var pinLight: CIBlendKernel { get }
  class var hardMix: CIBlendKernel { get }
  class var darkerColor: CIBlendKernel { get }
  class var lighterColor: CIBlendKernel { get }
}
