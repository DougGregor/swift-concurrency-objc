
struct VNImageOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VNImageOption {
  @available(tvOS 11.0, *)
  static let properties: VNImageOption
  @available(tvOS 11.0, *)
  static let cameraIntrinsics: VNImageOption
  @available(tvOS 11.0, *)
  static let ciContext: VNImageOption
}
@available(tvOS 11.0, *)
class VNImageRequestHandler : NSObject {
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, options: [VNImageOption : Any] = [:])
  init(cvPixelBuffer pixelBuffer: CVPixelBuffer, orientation: CGImagePropertyOrientation, options: [VNImageOption : Any] = [:])
  init(cgImage image: CGImage, options: [VNImageOption : Any] = [:])
  init(cgImage image: CGImage, orientation: CGImagePropertyOrientation, options: [VNImageOption : Any] = [:])
  init(url imageURL: URL, options: [VNImageOption : Any] = [:])
  init(url imageURL: URL, orientation: CGImagePropertyOrientation, options: [VNImageOption : Any] = [:])
  init(data imageData: Data, options: [VNImageOption : Any] = [:])
  init(data imageData: Data, orientation: CGImagePropertyOrientation, options: [VNImageOption : Any] = [:])
  @available(tvOS 14.0, *)
  init(cmSampleBuffer sampleBuffer: CMSampleBuffer, options: [VNImageOption : Any] = [:])
  @available(tvOS 14.0, *)
  init(cmSampleBuffer sampleBuffer: CMSampleBuffer, orientation: CGImagePropertyOrientation, options: [VNImageOption : Any] = [:])
  func perform(_ requests: [VNRequest]) throws
}
@available(tvOS 11.0, *)
class VNSequenceRequestHandler : NSObject {
  func perform(_ requests: [VNRequest], on pixelBuffer: CVPixelBuffer) throws
  func perform(_ requests: [VNRequest], on pixelBuffer: CVPixelBuffer, orientation: CGImagePropertyOrientation) throws
  func perform(_ requests: [VNRequest], on image: CGImage) throws
  func perform(_ requests: [VNRequest], on image: CGImage, orientation: CGImagePropertyOrientation) throws
  func perform(_ requests: [VNRequest], onImageURL imageURL: URL) throws
  func perform(_ requests: [VNRequest], onImageURL imageURL: URL, orientation: CGImagePropertyOrientation) throws
  func perform(_ requests: [VNRequest], onImageData imageData: Data) throws
  func perform(_ requests: [VNRequest], onImageData imageData: Data, orientation: CGImagePropertyOrientation) throws
  @available(tvOS 14.0, *)
  func perform(_ requests: [VNRequest], on sampleBuffer: CMSampleBuffer) throws
  @available(tvOS 14.0, *)
  func perform(_ requests: [VNRequest], on sampleBuffer: CMSampleBuffer, orientation: CGImagePropertyOrientation) throws
}
