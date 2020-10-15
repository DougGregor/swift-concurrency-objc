
@available(macOS 10.7, *)
class AVCaptureFileOutput : AVCaptureOutput {
  unowned(unsafe) var delegate: @sil_unmanaged AVCaptureFileOutputDelegate?
  var outputFileURL: URL? { get }
  func startRecording(to outputFileURL: URL, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate)
  func stopRecording()
  var isRecording: Bool { get }
  var isRecordingPaused: Bool { get }
  func pauseRecording()
  func resumeRecording()
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
}
@available(macOS 10.7, *)
protocol AVCaptureFileOutputRecordingDelegate : NSObjectProtocol {
  optional func fileOutput(_ output: AVCaptureFileOutput, didStartRecordingTo fileURL: URL, from connections: [AVCaptureConnection])
  optional func fileOutput(_ output: AVCaptureFileOutput, didPauseRecordingTo fileURL: URL, from connections: [AVCaptureConnection])
  optional func fileOutput(_ output: AVCaptureFileOutput, didResumeRecordingTo fileURL: URL, from connections: [AVCaptureConnection])
  optional func fileOutput(_ output: AVCaptureFileOutput, willFinishRecordingTo fileURL: URL, from connections: [AVCaptureConnection], error: Error?)
  func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?)
}
@available(macOS 10.7, *)
protocol AVCaptureFileOutputDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  func fileOutputShouldProvideSampleAccurateRecordingStart(_ output: AVCaptureFileOutput) -> Bool
  optional func fileOutput(_ output: AVCaptureFileOutput, didOutputSampleBuffer sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection)
}
@available(macOS 10.7, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AVMetadataItem]?
  func outputSettings(for connection: AVCaptureConnection) -> [String : Any]
  func setOutputSettings(_ outputSettings: [String : Any]?, for connection: AVCaptureConnection)
}
@available(macOS 10.7, *)
class AVCaptureAudioFileOutput : AVCaptureFileOutput {
  class func availableOutputFileTypes() -> [AVFileType]
  func startRecording(to outputFileURL: URL, outputFileType fileType: AVFileType, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate)
  var metadata: [AVMetadataItem]
  var audioSettings: [String : Any]?
}
