
@available(iOS 4.0, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(_ sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate?, queue sampleBufferCallbackQueue: DispatchQueue?)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate? { get }
  var sampleBufferCallbackQueue: DispatchQueue? { get }
  @available(iOS 7.0, *)
  func recommendedAudioSettingsForAssetWriter(writingTo outputFileType: AVFileType) -> [AnyHashable : Any]?
}
@available(iOS 4.0, *)
protocol AVCaptureAudioDataOutputSampleBufferDelegate : NSObjectProtocol {
  @asyncHandler optional func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
}
