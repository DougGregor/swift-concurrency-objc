
@available(macOS 10.7, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(_ sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate?, queue sampleBufferCallbackQueue: DispatchQueue?)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate? { get }
  var sampleBufferCallbackQueue: DispatchQueue? { get }
  var videoSettings: [String : Any]!
  @available(macOS 10.15, *)
  func recommendedVideoSettingsForAssetWriter(writingTo outputFileType: AVFileType) -> [String : Any]?
  @available(macOS 10.15, *)
  func availableVideoCodecTypesForAssetWriter(writingTo outputFileType: AVFileType) -> [AVVideoCodecType]
  @available(macOS 10.15, *)
  func recommendedVideoSettings(forVideoCodecType videoCodecType: AVVideoCodecType, assetWriterOutputFileType outputFileType: AVFileType) -> [AnyHashable : Any]?
  var __availableVideoCVPixelFormatTypes: [NSNumber] { get }
  var availableVideoCodecTypes: [AVVideoCodecType] { get }
  var alwaysDiscardsLateVideoFrames: Bool
}

@available(macOS 10.7, iOS 5.0, *)
extension AVCaptureVideoDataOutput {
  @nonobjc var availableVideoPixelFormatTypes: [OSType] { get }
}
@available(macOS 10.7, *)
protocol AVCaptureVideoDataOutputSampleBufferDelegate : NSObjectProtocol {
  optional func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
  optional func captureOutput(_ output: AVCaptureOutput, didDrop sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
}
