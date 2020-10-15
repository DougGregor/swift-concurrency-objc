
@available(iOS 4.0, *)
class AVCaptureVideoDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(_ sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate?, queue sampleBufferCallbackQueue: DispatchQueue?)
  var sampleBufferDelegate: AVCaptureVideoDataOutputSampleBufferDelegate? { get }
  var sampleBufferCallbackQueue: DispatchQueue? { get }
  var videoSettings: [String : Any]!
  @available(iOS 7.0, *)
  func recommendedVideoSettingsForAssetWriter(writingTo outputFileType: AVFileType) -> [String : Any]?
  @available(iOS 11.0, *)
  func availableVideoCodecTypesForAssetWriter(writingTo outputFileType: AVFileType) -> [AVVideoCodecType]
  @available(iOS 11.0, *)
  func recommendedVideoSettings(forVideoCodecType videoCodecType: AVVideoCodecType, assetWriterOutputFileType outputFileType: AVFileType) -> [AnyHashable : Any]?
  @available(iOS 5.0, *)
  var __availableVideoCVPixelFormatTypes: [NSNumber] { get }
  @available(iOS 5.0, *)
  var availableVideoCodecTypes: [AVVideoCodecType] { get }
  var alwaysDiscardsLateVideoFrames: Bool
  @available(iOS 13.0, *)
  var automaticallyConfiguresOutputBufferDimensions: Bool
  @available(iOS 13.0, *)
  var deliversPreviewSizedOutputBuffers: Bool
}

@available(macOS 10.7, iOS 5.0, *)
extension AVCaptureVideoDataOutput {
  @nonobjc var availableVideoPixelFormatTypes: [OSType] { get }
}
@available(iOS 4.0, *)
protocol AVCaptureVideoDataOutputSampleBufferDelegate : NSObjectProtocol {
  optional func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
  @available(iOS 6.0, *)
  optional func captureOutput(_ output: AVCaptureOutput, didDrop sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
}
