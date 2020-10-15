
let RPRecordingErrorDomain: String
@available(macOS 11.0, *)
enum RPRecordingErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case userDeclined
  case disabled
  case failedToStart
  case failed
  case insufficientStorage
  case interrupted
  case contentResize
  case broadcastInvalidSession
  case systemDormancy
  case entitlements
  case activePhoneCall
  case failedToSave
  case carPlay
  case failedApplicationConnectionInvalid
  case failedApplicationConnectionInterrupted
  case failedNoMatchingApplicationContext
  case failedMediaServicesFailure
  case videoMixingFailure
  case broadcastSetupFailed
  case failedToObtainURL
  case failedIncorrectTimeStamps
  case failedToProcessFirstSample
  case failedAssetWriterFailedToSave
  case failedNoAssetWriter
  case failedAssetWriterInWrongState
  case failedAssetWriterExportFailed
  case failedToRemoveFile
  case failedAssetWriterExportCanceled
  case attemptToStopNonRecording
  case attemptToStartInRecordingState
  case photoFailure
  case recordingInvalidSession
  case failedToStartCaptureStack
  case invalidParameter
  case filePermissions
  case codeSuccessful
}
