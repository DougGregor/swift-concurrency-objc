
@available(iOS 4.0, *)
class AVCaptureFileOutput : AVCaptureOutput {
  var outputFileURL: URL? { get }
  func startRecording(to outputFileURL: URL, recordingDelegate delegate: AVCaptureFileOutputRecordingDelegate)
  func stopRecording()
  var isRecording: Bool { get }
  var recordedDuration: CMTime { get }
  var recordedFileSize: Int64 { get }
  var maxRecordedDuration: CMTime
  var maxRecordedFileSize: Int64
  var minFreeDiskSpaceLimit: Int64
}
@available(iOS 4.0, *)
protocol AVCaptureFileOutputRecordingDelegate : NSObjectProtocol {
  optional func fileOutput(_ output: AVCaptureFileOutput, didStartRecordingTo fileURL: URL, from connections: [AVCaptureConnection])
  func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?)
}
@available(iOS 4.0, *)
class AVCaptureMovieFileOutput : AVCaptureFileOutput {
  var movieFragmentInterval: CMTime
  var metadata: [AVMetadataItem]?
  @available(iOS 10.0, *)
  var availableVideoCodecTypes: [AVVideoCodecType] { get }
  @available(iOS 12.0, *)
  func supportedOutputSettingsKeys(for connection: AVCaptureConnection) -> [String]
  @available(iOS 10.0, *)
  func outputSettings(for connection: AVCaptureConnection) -> [String : Any]
  @available(iOS 10.0, *)
  func setOutputSettings(_ outputSettings: [String : Any]?, for connection: AVCaptureConnection)
  @available(iOS 9.0, *)
  func recordsVideoOrientationAndMirroringChangesAsMetadataTrack(for connection: AVCaptureConnection) -> Bool
  @available(iOS 9.0, *)
  func setRecordsVideoOrientationAndMirroringChangesAsMetadataTrack(_ doRecordChanges: Bool, for connection: AVCaptureConnection)
}
