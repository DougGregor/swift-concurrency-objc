
@available(iOS 13.0, *)
let ICErrorDomain: String
enum ICEXIFOrientationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case orientation1
  case orientation2
  case orientation3
  case orientation4
  case orientation5
  case orientation6
  case orientation7
  case orientation8
}
enum ICReturnCodeOffset : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case thumbnailOffset
  case metadataOffset
  case downloadOffset
  case deleteOffset
  case exFATOffset
  case ptpOffset
  case systemOffset
  case deviceOffset
  case deviceConnection
  case objectOffset
}
struct ICReturnThumbnailError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notAvailable: ICReturnThumbnailError.Code { get }
  static var alreadyFetching: ICReturnThumbnailError.Code { get }
  static var canceled: ICReturnThumbnailError.Code { get }
  static var invalid: ICReturnThumbnailError.Code { get }
}
struct ICReturnMetadataError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var notAvailable: ICReturnMetadataError.Code { get }
  static var alreadyFetching: ICReturnMetadataError.Code { get }
  static var canceled: ICReturnMetadataError.Code { get }
  static var invalid: ICReturnMetadataError.Code { get }
}
struct ICReturnConnectionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var driverExited: ICReturnConnectionError.Code { get }
  static var closedSessionSuddenly: ICReturnConnectionError.Code { get }
  static var ejectedSuddenly: ICReturnConnectionError.Code { get }
  static var sessionAlreadyOpen: ICReturnConnectionError.Code { get }
  static var ejectFailed: ICReturnConnectionError.Code { get }
  static var failedToOpen: ICReturnConnectionError.Code { get }
  static var failedToOpenDevice: ICReturnConnectionError.Code { get }
  static var notAuthorizedToOpenDevice: ICReturnConnectionError.Code { get }
}
struct ICReturnPTPDeviceError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var failedToSendCommand: ICReturnPTPDeviceError.Code { get }
  static var notAuthorizedToSendCommand: ICReturnPTPDeviceError.Code { get }
}
struct ICReturnDownloadError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var pathInvalid: ICReturnDownloadError.Code { get }
  static var fileWritable: ICReturnDownloadError.Code { get }
}
struct ICLegacyReturn : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var communicationErr: ICLegacyReturn.Code { get }
  static var deviceNotFoundErr: ICLegacyReturn.Code { get }
  static var deviceNotOpenErr: ICLegacyReturn.Code { get }
  static var fileCorruptedErr: ICLegacyReturn.Code { get }
  static var ioPendingErr: ICLegacyReturn.Code { get }
  static var invalidObjectErr: ICLegacyReturn.Code { get }
  static var invalidPropertyErr: ICLegacyReturn.Code { get }
  static var indexOutOfRangeErr: ICLegacyReturn.Code { get }
  static var propertyTypeNotFoundErr: ICLegacyReturn.Code { get }
  static var cannotYieldDevice: ICLegacyReturn.Code { get }
  static var dataTypeNotFoundErr: ICLegacyReturn.Code { get }
  static var deviceMemoryAllocationErr: ICLegacyReturn.Code { get }
  static var deviceInternalErr: ICLegacyReturn.Code { get }
  static var deviceInvalidParamErr: ICLegacyReturn.Code { get }
  static var deviceAlreadyOpenErr: ICLegacyReturn.Code { get }
  static var deviceLocationIDNotFoundErr: ICLegacyReturn.Code { get }
  static var deviceGUIDNotFoundErr: ICLegacyReturn.Code { get }
  static var deviceIOServicePathNotFoundErr: ICLegacyReturn.Code { get }
  static var deviceUnsupportedErr: ICLegacyReturn.Code { get }
  static var frameworkInternalErr: ICLegacyReturn.Code { get }
  static var extensionInternalErr: ICLegacyReturn.Code { get }
  static var invalidSessionErr: ICLegacyReturn.Code { get }
}
struct ICReturn : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var success: ICReturn.Code { get }
  static var invalidParam: ICReturn.Code { get }
  static var communicationTimedOut: ICReturn.Code { get }
  static var scanOperationCanceled: ICReturn.Code { get }
  static var scannerInUseByLocalUser: ICReturn.Code { get }
  static var scannerInUseByRemoteUser: ICReturn.Code { get }
  static var deviceFailedToOpenSession: ICReturn.Code { get }
  static var deviceFailedToCloseSession: ICReturn.Code { get }
  static var scannerFailedToSelectFunctionalUnit: ICReturn.Code { get }
  static var scannerFailedToCompleteOverviewScan: ICReturn.Code { get }
  static var scannerFailedToCompleteScan: ICReturn.Code { get }
  static var receivedUnsolicitedScannerStatusInfo: ICReturn.Code { get }
  static var receivedUnsolicitedScannerErrorInfo: ICReturn.Code { get }
  static var downloadFailed: ICReturn.Code { get }
  static var uploadFailed: ICReturn.Code { get }
  static var failedToCompletePassThroughCommand: ICReturn.Code { get }
  static var downloadCanceled: ICReturn.Code { get }
  static var failedToEnabeTethering: ICReturn.Code { get }
  static var failedToDisabeTethering: ICReturn.Code { get }
  static var failedToCompleteSendMessageRequest: ICReturn.Code { get }
  static var deleteFilesFailed: ICReturn.Code { get }
  static var deleteFilesCanceled: ICReturn.Code { get }
  static var deviceIsPasscodeLocked: ICReturn.Code { get }
  static var deviceFailedToTakePicture: ICReturn.Code { get }
  static var deviceSoftwareNotInstalled: ICReturn.Code { get }
  static var deviceSoftwareIsBeingInstalled: ICReturn.Code { get }
  static var deviceSoftwareInstallationCompleted: ICReturn.Code { get }
  static var deviceSoftwareInstallationCanceled: ICReturn.Code { get }
  static var deviceSoftwareInstallationFailed: ICReturn.Code { get }
  static var deviceSoftwareNotAvailable: ICReturn.Code { get }
  static var deviceCouldNotPair: ICReturn.Code { get }
  static var deviceCouldNotUnpair: ICReturn.Code { get }
  static var deviceNeedsCredentials: ICReturn.Code { get }
  static var deviceIsBusyEnumerating: ICReturn.Code { get }
  static var deviceCommandGeneralFailure: ICReturn.Code { get }
  static var deviceFailedToCompleteTransfer: ICReturn.Code { get }
  static var deviceFailedToSendData: ICReturn.Code { get }
  static var sessionNotOpened: ICReturn.Code { get }
  static var exFATVolumeInvalid: ICReturn.Code { get }
  static var multiErrorDictionary: ICReturn.Code { get }
}
struct ICReturnObjectError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var codeObjectDoesNotExist: ICReturnObjectError.Code { get }
  static var codeObjectDataOffsetInvalid: ICReturnObjectError.Code { get }
  static var codeObjectCouldNotBeRead: ICReturnObjectError.Code { get }
  static var codeObjectDataEmpty: ICReturnObjectError.Code { get }
  static var codeObjectDataRequestTooLarge: ICReturnObjectError.Code { get }
}
