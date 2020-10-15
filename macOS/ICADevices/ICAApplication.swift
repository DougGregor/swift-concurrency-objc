
typealias ICAError = OSErr
var kICAPBVersion: Int { get }
var kICACommunicationErr: Int { get }
var kICADeviceNotFoundErr: Int { get }
var kICADeviceNotOpenErr: Int { get }
var kICAFileCorruptedErr: Int { get }
var kICAIOPendingErr: Int { get }
var kICAInvalidObjectErr: Int { get }
var kICAInvalidPropertyErr: Int { get }
var kICAIndexOutOfRangeErr: Int { get }
var kICAPropertyTypeNotFoundErr: Int { get }
var kICACannotYieldDevice: Int { get }
var kICADataTypeNotFoundErr: Int { get }
var kICADeviceMemoryAllocationErr: Int { get }
var kICADeviceInternalErr: Int { get }
var kICADeviceInvalidParamErr: Int { get }
var kICADeviceAlreadyOpenErr: Int { get }
var kICADeviceLocationIDNotFoundErr: Int { get }
var kICADeviceGUIDNotFoundErr: Int { get }
var kICADeviceIOServicePathNotFoundErr: Int { get }
var kICADeviceUnsupportedErr: Int { get }
var kICAFrameworkInternalErr: Int { get }
var kICAExtensionInternalErr: Int { get }
var kICAInvalidSessionErr: Int { get }
var kICASandboxViolation: Int { get }
var kICASecureSessionRequired: Int { get }
var kICADevice: Int { get }
var kICADeviceCamera: Int { get }
var kICADeviceScanner: Int { get }
var kICADeviceMFP: Int { get }
var kICADevicePhone: Int { get }
var kICADevicePDA: Int { get }
var kICADeviceOther: Int { get }
var kICAList: Int { get }
var kICADirectory: Int { get }
var kICAFile: Int { get }
var kICAFileImage: Int { get }
var kICAFileMovie: Int { get }
var kICAFileAudio: Int { get }
var kICAFileFirmware: Int { get }
var kICAFileOther: Int { get }
var kICAProperty: Int { get }
var kICAPropertyImageWidth: Int { get }
var kICAPropertyImageHeight: Int { get }
var kICAPropertyImageBitDepth: Int { get }
var kICAPropertyImageDPI: Int { get }
var kICAPropertyImageExposureTime: Int { get }
var kICAPropertyImageFNumber: Int { get }
var kICAPropertyImageDateOriginal: Int { get }
var kICAPropertyImageDateDigitized: Int { get }
var kICAPropertyImageShutterSpeed: Int { get }
var kICAPropertyImageAperture: Int { get }
var kICAPropertyImageFlash: Int { get }
var kICAPropertyColorSpace: Int { get }
var kICAPropertyImageFilename: Int { get }
var kICAPropertyImageSize: Int { get }
var kICAPropertyImageData: Int { get }
var kICAPropertyImageThumbnail: Int { get }
var kICAPropertyColorSyncProfile: Int { get }
var kICATypeUInt8: Int { get }
var kICATypeUInt16: Int { get }
var kICATypeUInt32: Int { get }
var kICATypeUInt64: Int { get }
var kICATypeSInt16: Int { get }
var kICATypeSInt32: Int { get }
var kICATypeSInt64: Int { get }
var kICATypeFloat: Int { get }
var kICATypeFixed: Int { get }
var kICATypeBoolean: Int { get }
var kICATypeString: Int { get }
var kICATypeData: Int { get }
var kICATypeThumbnail: Int { get }
var kICAFlagReadWriteAccess: Int { get }
var kICAFlagReadAccess: Int { get }
var kICAButtonScan: Int { get }
var kICAButtonCopy: Int { get }
var kICAButtonEMail: Int { get }
var kICAButtonWeb: Int { get }
var kICACameraPassThruSend: Int { get }
var kICACameraPassThruReceive: Int { get }
var kICACameraPassThruNotUsed: Int { get }
struct ICAPTPPassThroughPB {
  var commandCode: UInt32
  var resultCode: UInt32
  var numOfInputParams: UInt32
  var numOfOutputParams: UInt32
  var params: (UInt32, UInt32, UInt32, UInt32)
  var dataUsageMode: UInt32
  var flags: UInt32
  var dataSize: UInt32
  var data: (UInt8)
  init()
  init(commandCode: UInt32, resultCode: UInt32, numOfInputParams: UInt32, numOfOutputParams: UInt32, params: (UInt32, UInt32, UInt32, UInt32), dataUsageMode: UInt32, flags: UInt32, dataSize: UInt32, data: (UInt8))
}
struct ICAPTPEventDataset {
  var dataLength: UInt32
  var containerType: UInt16
  var eventCode: UInt16
  var transactionID: UInt32
  var params: (UInt32, UInt32, UInt32)
  init()
  init(dataLength: UInt32, containerType: UInt16, eventCode: UInt16, transactionID: UInt32, params: (UInt32, UInt32, UInt32))
}
@available(macOS 10.5, *)
let kICADevicesArrayKey: CFString!
@available(macOS 10.5, *)
let kICAObjectKey: CFString!
@available(macOS 10.5, *)
let kICAObjectNameKey: CFString!
@available(macOS 10.5, *)
let kICAUSBVendorIDKey: CFString!
@available(macOS 10.5, *)
let kICAUSBProductIDKey: CFString!
@available(macOS 10.5, *)
let kICADeviceTypeKey: CFString!
@available(macOS 10.5, *)
let kICAExecutableArchitectureKey: CFString!
@available(macOS 10.5, *)
let kICARemoteDeviceKey: CFString!
@available(macOS 10.5, *)
let kICADeviceSharedKey: CFString!
@available(macOS 10.5, *)
let kICADeviceWebSharedKey: CFString!
@available(macOS 10.5, *)
let kICADeviceUsedKey: CFString!
@available(macOS 10.5, *)
let kICABonjourServiceTypeKey: CFString!
@available(macOS 10.5, *)
let kICABonjourServiceNameKey: CFString!
@available(macOS 10.5, *)
let kICABonjourTXTRecordKey: CFString!
@available(macOS 10.5, *)
let kICADeviceCapabilitiesKey: CFString!
@available(macOS 10.5, *)
let kICALockStatusKey: CFString!
@available(macOS 10.5, *)
let kICADataPropertyKey: CFString!
@available(macOS 10.5, *)
let kICADataTypeKey: CFString!
@available(macOS 10.5, *)
let kICADataSizeKey: CFString!
@available(macOS 10.5, *)
let kICAThumbnailPropertyKey: CFString!
@available(macOS 10.5, *)
let kICAThumbnailSizeKey: CFString!
@available(macOS 10.5, *)
let kICARawKey: CFString!
@available(macOS 10.4, *)
let kICAMediaHeightKey: CFString!
@available(macOS 10.4, *)
let kICAMediaWidthKey: CFString!
@available(macOS 10.5, *)
let kICACreationDateStringKey: CFString!
@available(macOS 10.5, *)
let kICAModificationDateStringKey: CFString!
@available(macOS 10.5, *)
let kMetaDataDictionaryKey: CFString!
@available(macOS 10.5, *)
let kICAMediaDurationInSecondsKey: CFString!
@available(macOS 10.5, *)
let kICADeviceTypeCamera: CFString!
@available(macOS 10.5, *)
let kICADeviceTypeScanner: CFString!
@available(macOS 10.4, *)
let kICAUSBTransportType: CFString!
@available(macOS 10.4, *)
let kICAFireWireTransportType: CFString!
@available(macOS 10.4, *)
let kICABluetoothTransportType: CFString!
@available(macOS 10.4, *)
let kICATCPIPTransportType: CFString!
@available(macOS 10.4, *)
let kICASCSITransportType: CFString!
@available(macOS 10.4, *)
let kICATWAINTransportType: CFString!
@available(macOS 10.5, *)
let kICADeviceBrowserDeviceRefKey: CFString!
@available(macOS 10.4, *)
let kICADeviceModulePathKey: CFString!
@available(macOS 10.5, *)
let kICADeviceIconPathKey: CFString!
@available(macOS 10.4, *)
let kICATransportTypeKey: CFString!
@available(macOS 10.4, *)
let kICABluetoothAddressKey: CFString!
@available(macOS 10.4, *)
let kICAUSBLocationIDKey: CFString!
@available(macOS 10.4, *)
let kICAFireWireGUIDKey: CFString!
@available(macOS 10.4, *)
let kICAIOServicePathKey: CFString!
@available(macOS 10.4, *)
let kICAIPAddressKey: CFString!
@available(macOS 10.4, *)
let kICAIPPortKey: CFString!
@available(macOS 10.4, *)
let kICAIPNameKey: CFString!
@available(macOS 10.4, *)
let kICAIPGUIDKey: CFString!
@available(macOS 10.4, *)
let kICATWAINDSPathKey: CFString!
@available(macOS 10.5, *)
let kICAUserAssignedDeviceNameKey: CFString!
struct ICAHeader {
  var err: ICAError
  var refcon: UInt
  init()
  init(err: ICAError, refcon: UInt)
}
typealias ICACompletion = @convention(c) (UnsafeMutablePointer<ICAHeader>?) -> Void
typealias ICAImportFilterProc = @convention(c) (CFDictionary?, UInt) -> DarwinBoolean
typealias ICANotificationProc = @convention(c) (CFString?, CFDictionary?) -> Void
typealias ICAObject = UInt32
typealias ICAProperty = UInt32
typealias ICAConnectionID = UInt32
typealias ICASessionID = UInt32
typealias ICAScannerSessionID = ICASessionID
typealias ICAEventDataCookie = UInt32
struct ICAObjectInfo {
  var objectType: OSType
  var objectSubtype: OSType
  init()
  init(objectType: OSType, objectSubtype: OSType)
}
var kICAAllowMultipleImages: Int { get }
var kICADownloadAndReturnPathArray: Int { get }
struct ICAImportImagePB {
  var header: ICAHeader
  var deviceObject: ICAObject
  var flags: UInt32
  var supportedFileTypes: Unmanaged<CFArray>!
  var filterProc: ICAImportFilterProc!
  var importedImages: UnsafeMutablePointer<Unmanaged<CFArray>?>!
  init()
  init(header: ICAHeader, deviceObject: ICAObject, flags: UInt32, supportedFileTypes: Unmanaged<CFArray>!, filterProc: ICAImportFilterProc!, importedImages: UnsafeMutablePointer<Unmanaged<CFArray>?>!)
}
typealias ICANotification = @convention(c) (CFString?, CFDictionary?) -> Void
@available(macOS 10.5, *)
let kICANotificationTypeObjectAdded: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeObjectRemoved: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeObjectInfoChanged: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeStoreAdded: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeStoreRemoved: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeStoreFull: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeStoreInfoChanged: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceAdded: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceRemoved: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceInfoChanged: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDevicePropertyChanged: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceWasReset: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceStatusInfo: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceStatusError: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeCaptureComplete: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeRequestObjectTransfer: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeTransactionCanceled: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeUnreportedStatus: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeProprietary: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDeviceConnectionProgress: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeDownloadProgressStatus: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeScanProgressStatus: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeScannerSessionClosed: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeScannerScanDone: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeScannerPageDone: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeScannerButtonPressed: CFString!
@available(macOS 10.6, *)
let kICANotificationTypeScannerOverviewOverlayAvailable: CFString!
@available(macOS 10.5, *)
let kICAErrorKey: CFString!
@available(macOS 10.5, *)
let kICARefconKey: CFString!
@available(macOS 10.5, *)
let kICANotificationICAObjectKey: CFString!
@available(macOS 10.5, *)
let kICANotificationDeviceICAObjectKey: CFString!
@available(macOS 10.5, *)
let kICANotificationDeviceListICAObjectKey: CFString!
@available(macOS 10.5, *)
let kICANotificationClassKey: CFString!
@available(macOS 10.5, *)
let kICANotificationTypeKey: CFString!
@available(macOS 10.5, *)
let kICANotificationRawEventKey: CFString!
@available(macOS 10.5, *)
let kICANotificationDataKey: CFString!
@available(macOS 10.5, *)
let kICANotificationDataSizeKey: CFString!
@available(macOS 10.5, *)
let kICANotificationDataCookieKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageWidthKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageHeightKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageBytesPerRowKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageStartRowKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageNumberOfRowsKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageDataKey: CFString!
@available(macOS 10.5, *)
let kICANotificationImageDataSizeKey: CFString!
@available(macOS 10.5, *)
let kICANotificationDataIsBigEndianKey: CFString!
@available(macOS 10.5, *)
let kICANotificationScannerDocumentNameKey: CFString!
@available(macOS 10.5, *)
let kICANotificationScannerButtonTypeKey: CFString!
@available(macOS 10.5, *)
let kICANotificationNumerOfImagesRemainingKey: CFString!
@available(macOS 10.5, *)
let kICANotificationPercentDownloadedKey: CFString!
@available(macOS 10.5, *)
let kICANotificationSubTypeKey: CFString!
@available(macOS 10.5, *)
let kICANotificationSubTypeWarmUpStarted: CFString!
@available(macOS 10.5, *)
let kICANotificationSubTypeWarmUpDone: CFString!
@available(macOS 10.5, *)
let kICANotificationVendorErrorCodeKey: CFString!
@available(macOS 10.6, *)
let kICANotificationSubTypePerformOverviewScan: CFString!
@available(macOS 10.6, *)
let kICANotificationSubTypeDocumentLoaded: CFString!
@available(macOS 10.6, *)
let kICANotificationSubTypeDocumentNotLoaded: CFString!
@available(macOS 10.5, *)
let kICANotificationClassPTPStandard: CFString!
@available(macOS 10.5, *)
let kICANotificationClassPTPVendor: CFString!
@available(macOS 10.5, *)
let kICANotificationClassProprietary: CFString!
@available(macOS 10.5, *)
let kICADevicePropUndefined: CFString!
@available(macOS 10.5, *)
let kICADevicePropBatteryLevel: CFString!
@available(macOS 10.5, *)
let kICADevicePropFunctionalMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropImageSize: CFString!
@available(macOS 10.5, *)
let kICADevicePropCompressionSetting: CFString!
@available(macOS 10.5, *)
let kICADevicePropWhiteBalance: CFString!
@available(macOS 10.5, *)
let kICADevicePropRGBGain: CFString!
@available(macOS 10.5, *)
let kICADevicePropFNumber: CFString!
@available(macOS 10.5, *)
let kICADevicePropFocalLength: CFString!
@available(macOS 10.5, *)
let kICADevicePropFocusDistance: CFString!
@available(macOS 10.5, *)
let kICADevicePropFocusMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropExposureMeteringMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropFlashMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropExposureTime: CFString!
@available(macOS 10.5, *)
let kICADevicePropExposureProgramMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropExposureIndex: CFString!
@available(macOS 10.5, *)
let kICADevicePropExposureBiasCompensation: CFString!
@available(macOS 10.5, *)
let kICADevicePropDateTime: CFString!
@available(macOS 10.5, *)
let kICADevicePropCaptureDelay: CFString!
@available(macOS 10.5, *)
let kICADevicePropStillCaptureMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropContrast: CFString!
@available(macOS 10.5, *)
let kICADevicePropSharpness: CFString!
@available(macOS 10.5, *)
let kICADevicePropDigitalZoom: CFString!
@available(macOS 10.5, *)
let kICADevicePropEffectMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropBurstNumber: CFString!
@available(macOS 10.5, *)
let kICADevicePropBurstInterval: CFString!
@available(macOS 10.5, *)
let kICADevicePropTimelapseNumber: CFString!
@available(macOS 10.5, *)
let kICADevicePropTimelapseInterval: CFString!
@available(macOS 10.5, *)
let kICADevicePropFocusMeteringMode: CFString!
@available(macOS 10.5, *)
let kICADevicePropUploadURL: CFString!
@available(macOS 10.5, *)
let kICADevicePropArtist: CFString!
@available(macOS 10.5, *)
let kICADevicePropCopyrightInfo: CFString!
struct ICARegisterForEventNotificationPB {
  var header: ICAHeader
  var objectOfInterest: ICAObject
  var eventsOfInterest: Unmanaged<CFArray>!
  var notificationProc: ICANotification!
  var options: Unmanaged<CFDictionary>!
  init()
  init(header: ICAHeader, objectOfInterest: ICAObject, eventsOfInterest: Unmanaged<CFArray>!, notificationProc: ICANotification!, options: Unmanaged<CFDictionary>!)
}
struct ICASendNotificationPB {
  var header: ICAHeader
  var notificationDictionary: Unmanaged<CFMutableDictionary>!
  var replyCode: UInt32
  init()
  init(header: ICAHeader, notificationDictionary: Unmanaged<CFMutableDictionary>!, replyCode: UInt32)
}
struct ICAGetDeviceListPB {
  var header: ICAHeader
  var object: ICAObject
  init()
  init(header: ICAHeader, object: ICAObject)
}
struct ICACopyObjectPropertyDictionaryPB {
  var header: ICAHeader
  var object: ICAObject
  var theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!
  init()
  init(header: ICAHeader, object: ICAObject, theDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!)
}
var kICAThumbnailFormatJPEG: Int { get }
var kICAThumbnailFormatTIFF: Int { get }
var kICAThumbnailFormatPNG: Int { get }
struct ICACopyObjectThumbnailPB {
  var header: ICAHeader
  var object: ICAObject
  var thumbnailFormat: OSType
  var thumbnailData: UnsafeMutablePointer<Unmanaged<CFData>?>!
  init()
  init(header: ICAHeader, object: ICAObject, thumbnailFormat: OSType, thumbnailData: UnsafeMutablePointer<Unmanaged<CFData>?>!)
}
struct ICACopyObjectDataPB {
  var header: ICAHeader
  var object: ICAObject
  var startByte: Int
  var requestedSize: Int
  var data: UnsafeMutablePointer<Unmanaged<CFData>?>!
  init()
  init(header: ICAHeader, object: ICAObject, startByte: Int, requestedSize: Int, data: UnsafeMutablePointer<Unmanaged<CFData>?>!)
}
struct ICAMessage {
  var messageType: OSType
  var startByte: UInt32
  var dataPtr: UnsafeMutableRawPointer!
  var dataSize: UInt32
  var dataType: OSType
  init()
  init(messageType: OSType, startByte: UInt32, dataPtr: UnsafeMutableRawPointer!, dataSize: UInt32, dataType: OSType)
}
var kICAMessageConnect: Int { get }
var kICAMessageDisconnect: Int { get }
var kICAMessageReset: Int { get }
var kICAMessageCheckDevice: Int { get }
var kICAMessageCameraReadClock: Int { get }
var kICAMessageGetLastButtonPressed: Int { get }
var kICAMessageGetEventData: Int { get }
var kICAMessageDeviceYield: Int { get }
var kICAMessageCameraPassThrough: Int { get }
var kICAMessageScannerOverviewSelectionChanged: Int { get }
struct ICAObjectSendMessagePB {
  var header: ICAHeader
  var object: ICAObject
  var message: ICAMessage
  var result: UInt32
  init()
  init(header: ICAHeader, object: ICAObject, message: ICAMessage, result: UInt32)
}
var kDeleteAfterDownload: Int { get }
var kCreateCustomIcon: Int { get }
var kAddMetaDataToFinderComment: Int { get }
var kAdjustCreationDate: Int { get }
var kSetFileTypeAndCreator: Int { get }
var kRotateImage: Int { get }
var kDontEmbedColorSyncProfile: Int { get }
@available(*, deprecated)
struct ICADownloadFilePB {
  var header: ICAHeader
  var object: ICAObject
  var dirFSRef: UnsafeMutablePointer<FSRef>!
  var flags: UInt32
  var fileType: OSType
  var fileCreator: OSType
  var rotationAngle: Fixed
  var fileFSRef: UnsafeMutablePointer<FSRef>!
  init()
  init(header: ICAHeader, object: ICAObject, dirFSRef: UnsafeMutablePointer<FSRef>!, flags: UInt32, fileType: OSType, fileCreator: OSType, rotationAngle: Fixed, fileFSRef: UnsafeMutablePointer<FSRef>!)
}
var kICAUploadFileAsIs: Int { get }
var kICAUploadFileScaleToFit: Int { get }
@available(*, deprecated)
struct ICAUploadFilePB {
  var header: ICAHeader
  var parentObject: ICAObject
  var fileFSRef: UnsafeMutablePointer<FSRef>!
  var flags: UInt32
  init()
  init(header: ICAHeader, parentObject: ICAObject, fileFSRef: UnsafeMutablePointer<FSRef>!, flags: UInt32)
}
struct ICALoadDeviceModulePB {
  var header: ICAHeader
  var paramDictionary: Unmanaged<CFDictionary>!
  init()
  init(header: ICAHeader, paramDictionary: Unmanaged<CFDictionary>!)
}
struct ICAUnloadDeviceModulePB {
  var header: ICAHeader
  var deviceObject: ICAObject
  init()
  init(header: ICAHeader, deviceObject: ICAObject)
}
struct ICAOpenSessionPB {
  var header: ICAHeader
  var deviceObject: ICAObject
  var sessionID: ICASessionID
  init()
  init(header: ICAHeader, deviceObject: ICAObject, sessionID: ICASessionID)
}
struct ICACloseSessionPB {
  var header: ICAHeader
  var sessionID: ICASessionID
  init()
  init(header: ICAHeader, sessionID: ICASessionID)
}
struct ICAScannerOpenSessionPB {
  var header: ICAHeader
  var object: ICAObject
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, object: ICAObject, sessionID: ICAScannerSessionID)
}
struct ICAScannerCloseSessionPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}
struct ICAScannerInitializePB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}
struct ICAScannerGetParametersPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICAScannerSetParametersPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var theDict: Unmanaged<CFMutableDictionary>!
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, theDict: Unmanaged<CFMutableDictionary>!)
}
struct ICAScannerStatusPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  var status: UInt32
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID, status: UInt32)
}
struct ICAScannerStartPB {
  var header: ICAHeader
  var sessionID: ICAScannerSessionID
  init()
  init(header: ICAHeader, sessionID: ICAScannerSessionID)
}
