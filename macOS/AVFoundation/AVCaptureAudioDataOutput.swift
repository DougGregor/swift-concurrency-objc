
@available(macOS 10.7, *)
class AVCaptureAudioDataOutput : AVCaptureOutput {
  func setSampleBufferDelegate(_ sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate?, queue sampleBufferCallbackQueue: DispatchQueue?)
  var sampleBufferDelegate: AVCaptureAudioDataOutputSampleBufferDelegate? { get }
  var sampleBufferCallbackQueue: DispatchQueue? { get }
  var audioSettings: [String : Any]!
  @available(macOS 10.15, *)
  func recommendedAudioSettingsForAssetWriter(writingTo outputFileType: AVFileType) -> [AnyHashable : Any]?
}
@available(macOS 10.7, *)
protocol AVCaptureAudioDataOutputSampleBufferDelegate : NSObjectProtocol {
  @asyncHandler optional func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
}
