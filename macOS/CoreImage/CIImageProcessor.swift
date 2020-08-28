
@available(macOS 10.12, *)
class CIImageProcessorKernel : NSObject {
  class func process(with inputs: [CIImageProcessorInput]?, arguments: [String : Any]?, output: CIImageProcessorOutput) throws
  class func roi(forInput input: Int32, arguments: [String : Any]?, outputRect: CGRect) -> CGRect
  class func formatForInput(at input: Int32) -> CIFormat
  class var outputFormat: CIFormat { get }
  @available(macOS 10.13, *)
  class var outputIsOpaque: Bool { get }
  class var synchronizeInputs: Bool { get }
  class func apply(withExtent extent: CGRect, inputs: [CIImage]?, arguments args: [String : Any]?) throws -> CIImage
}
@available(macOS 10.12, *)
protocol CIImageProcessorInput {
  var region: CGRect { get }
  var bytesPerRow: Int { get }
  var format: CIFormat { get }
  var baseAddress: UnsafeRawPointer { get }
  var surface: IOSurfaceRef { get }
  var pixelBuffer: CVPixelBuffer? { get }
  var metalTexture: MTLTexture? { get }
}
@available(macOS 10.12, *)
protocol CIImageProcessorOutput {
  var region: CGRect { get }
  var bytesPerRow: Int { get }
  var format: CIFormat { get }
  var baseAddress: UnsafeMutableRawPointer { get }
  var surface: IOSurfaceRef { get }
  var pixelBuffer: CVPixelBuffer? { get }
  var metalTexture: MTLTexture? { get }
  var metalCommandBuffer: MTLCommandBuffer? { get }
}
