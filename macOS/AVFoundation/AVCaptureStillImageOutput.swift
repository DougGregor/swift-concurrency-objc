
@available(macOS, introduced: 10.7, deprecated: 10.15, message: "Use AVCapturePhotoOutput instead.")
class AVCaptureStillImageOutput : AVCaptureOutput {
  var outputSettings: [String : Any]
  var availableImageDataCVPixelFormatTypes: [NSNumber] { get }
  var availableImageDataCodecTypes: [AVVideoCodecType] { get }
  @available(macOS 10.14, *)
  var isHighResolutionStillImageOutputEnabled: Bool
  @available(macOS 10.8, *)
  var isCapturingStillImage: Bool { get }
  func captureStillImageAsynchronously(from connection: AVCaptureConnection, completionHandler handler: @escaping (CMSampleBuffer?, Error?) -> Void)
  func captureStillImageAsynchronously(from connection: AVCaptureConnection) async throws -> CMSampleBuffer?
  class func jpegStillImageNSDataRepresentation(_ jpegSampleBuffer: CMSampleBuffer) -> Data?
}
extension AVCaptureStillImageOutput {
}
