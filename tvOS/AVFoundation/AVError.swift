
@available(tvOS 9.0, *)
let AVFoundationErrorDomain: String
@available(tvOS 9.0, *)
let AVErrorDeviceKey: String
@available(tvOS 9.0, *)
let AVErrorTimeKey: String
@available(tvOS 9.0, *)
let AVErrorFileSizeKey: String
@available(tvOS 9.0, *)
let AVErrorPIDKey: String
@available(tvOS 9.0, *)
let AVErrorRecordingSuccessfullyFinishedKey: String
@available(tvOS 9.0, *)
let AVErrorMediaTypeKey: String
@available(tvOS 9.0, *)
let AVErrorMediaSubTypeKey: String
@available(tvOS 9.0, *)
let AVErrorPresentationTimeStampKey: String
@available(tvOS 9.0, *)
let AVErrorPersistentTrackIDKey: String
@available(tvOS 9.0, *)
let AVErrorFileTypeKey: String
struct AVError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: AVError.Code { get }
  static var outOfMemory: AVError.Code { get }
  static var sessionNotRunning: AVError.Code { get }
  static var deviceAlreadyUsedByAnotherSession: AVError.Code { get }
  static var noDataCaptured: AVError.Code { get }
  static var sessionConfigurationChanged: AVError.Code { get }
  static var diskFull: AVError.Code { get }
  static var deviceWasDisconnected: AVError.Code { get }
  static var mediaChanged: AVError.Code { get }
  static var maximumDurationReached: AVError.Code { get }
  static var maximumFileSizeReached: AVError.Code { get }
  static var mediaDiscontinuity: AVError.Code { get }
  static var maximumNumberOfSamplesForFileFormatReached: AVError.Code { get }
  static var deviceNotConnected: AVError.Code { get }
  static var deviceInUseByAnotherApplication: AVError.Code { get }
  static var deviceLockedForConfigurationByAnotherProcess: AVError.Code { get }
  static var sessionWasInterrupted: AVError.Code { get }
  static var mediaServicesWereReset: AVError.Code { get }
  static var exportFailed: AVError.Code { get }
  static var decodeFailed: AVError.Code { get }
  static var invalidSourceMedia: AVError.Code { get }
  static var fileAlreadyExists: AVError.Code { get }
  static var compositionTrackSegmentsNotContiguous: AVError.Code { get }
  static var invalidCompositionTrackSegmentDuration: AVError.Code { get }
  static var invalidCompositionTrackSegmentSourceStartTime: AVError.Code { get }
  static var invalidCompositionTrackSegmentSourceDuration: AVError.Code { get }
  static var fileFormatNotRecognized: AVError.Code { get }
  static var fileFailedToParse: AVError.Code { get }
  static var maximumStillImageCaptureRequestsExceeded: AVError.Code { get }
  static var contentIsProtected: AVError.Code { get }
  static var noImageAtTime: AVError.Code { get }
  static var decoderNotFound: AVError.Code { get }
  static var encoderNotFound: AVError.Code { get }
  static var contentIsNotAuthorized: AVError.Code { get }
  static var applicationIsNotAuthorized: AVError.Code { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "AVCaptureSession no longer produces an AVCaptureSessionRuntimeErrorNotification with this error. See AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableInBackground.")
  static var deviceIsNotAvailableInBackground: AVError.Code { get }
  static var operationNotSupportedForAsset: AVError.Code { get }
  static var decoderTemporarilyUnavailable: AVError.Code { get }
  static var encoderTemporarilyUnavailable: AVError.Code { get }
  static var invalidVideoComposition: AVError.Code { get }
  static var referenceForbiddenByReferencePolicy: AVError.Code { get }
  static var invalidOutputURLPathExtension: AVError.Code { get }
  static var screenCaptureFailed: AVError.Code { get }
  static var displayWasDisabled: AVError.Code { get }
  static var torchLevelUnavailable: AVError.Code { get }
  static var operationInterrupted: AVError.Code { get }
  static var incompatibleAsset: AVError.Code { get }
  static var failedToLoadMediaData: AVError.Code { get }
  static var serverIncorrectlyConfigured: AVError.Code { get }
  static var applicationIsNotAuthorizedToUseDevice: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var failedToParse: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var fileTypeDoesNotSupportSampleReferences: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var undecodableMediaData: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var airPlayControllerRequiresInternet: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var airPlayReceiverRequiresInternet: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var videoCompositorFailed: AVError.Code { get }
  @available(tvOS 9.0, *)
  static var recordingAlreadyInProgress: AVError.Code { get }
  @available(tvOS 10.0, *)
  static var unsupportedOutputSettings: AVError.Code { get }
  @available(tvOS 10.0, *)
  static var operationNotAllowed: AVError.Code { get }
  @available(tvOS 11.0, *)
  static var contentIsUnavailable: AVError.Code { get }
  @available(tvOS 11.0, *)
  static var formatUnsupported: AVError.Code { get }
  @available(tvOS 11.0, *)
  static var malformedDepth: AVError.Code { get }
  @available(tvOS 11.0, *)
  static var contentNotUpdated: AVError.Code { get }
  @available(tvOS 11.0, *)
  static var noLongerPlayable: AVError.Code { get }
  @available(tvOS 11.0, *)
  static var noCompatibleAlternatesForExternalDisplay: AVError.Code { get }
  @available(tvOS 11.2, *)
  static var noSourceTrack: AVError.Code { get }
  @available(tvOS 12.0, *)
  static var externalPlaybackNotSupportedForAsset: AVError.Code { get }
  @available(tvOS 13.0, *)
  static var operationNotSupportedForPreset: AVError.Code { get }
  @available(tvOS 14.0, *)
  static var incorrectlyConfigured: AVError.Code { get }
  @available(tvOS 14.0, *)
  static var segmentStartedWithNonSyncSample: AVError.Code { get }
  @available(tvOS 14.0, *)
  static var rosettaNotInstalled: AVError.Code { get }
}

@available(watchOS 6.0, *)
extension AVError {
  @available(watchOS 6.0, *)
  var time: CMTime? { get }
  @available(watchOS 6.0, *)
  var fileSize: Int64? { get }
  @available(watchOS 6.0, *)
  var processID: Int? { get }
  @available(watchOS 6.0, *)
  var recordingSuccessfullyFinished: Bool? { get }
  @available(swift 4.2)
  @available(watchOS 6.0, *)
  var mediaType: AVMediaType? { get }
  @available(watchOS 6.0, *)
  var mediaSubtypes: [Int]? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var presentationTimeStamp: CMTime? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var persistentTrackID: CMPersistentTrackID? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var fileType: AVFileType? { get }
}
