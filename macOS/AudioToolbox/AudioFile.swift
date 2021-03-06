
typealias AudioFileTypeID = UInt32
var kAudioFileAIFFType: AudioFileTypeID { get }
var kAudioFileAIFCType: AudioFileTypeID { get }
var kAudioFileWAVEType: AudioFileTypeID { get }
var kAudioFileRF64Type: AudioFileTypeID { get }
var kAudioFileBW64Type: AudioFileTypeID { get }
var kAudioFileWave64Type: AudioFileTypeID { get }
var kAudioFileSoundDesigner2Type: AudioFileTypeID { get }
var kAudioFileNextType: AudioFileTypeID { get }
var kAudioFileMP3Type: AudioFileTypeID { get }
var kAudioFileMP2Type: AudioFileTypeID { get }
var kAudioFileMP1Type: AudioFileTypeID { get }
var kAudioFileAC3Type: AudioFileTypeID { get }
var kAudioFileAAC_ADTSType: AudioFileTypeID { get }
var kAudioFileMPEG4Type: AudioFileTypeID { get }
var kAudioFileM4AType: AudioFileTypeID { get }
var kAudioFileM4BType: AudioFileTypeID { get }
var kAudioFileCAFType: AudioFileTypeID { get }
var kAudioFile3GPType: AudioFileTypeID { get }
var kAudioFile3GP2Type: AudioFileTypeID { get }
var kAudioFileAMRType: AudioFileTypeID { get }
var kAudioFileFLACType: AudioFileTypeID { get }
var kAudioFileLATMInLOASType: AudioFileTypeID { get }
var kAudioFileUnspecifiedError: OSStatus { get }
var kAudioFileUnsupportedFileTypeError: OSStatus { get }
var kAudioFileUnsupportedDataFormatError: OSStatus { get }
var kAudioFileUnsupportedPropertyError: OSStatus { get }
var kAudioFileBadPropertySizeError: OSStatus { get }
var kAudioFilePermissionsError: OSStatus { get }
var kAudioFileNotOptimizedError: OSStatus { get }
var kAudioFileInvalidChunkError: OSStatus { get }
var kAudioFileDoesNotAllow64BitDataSizeError: OSStatus { get }
var kAudioFileInvalidPacketOffsetError: OSStatus { get }
var kAudioFileInvalidPacketDependencyError: OSStatus { get }
var kAudioFileInvalidFileError: OSStatus { get }
var kAudioFileOperationNotSupportedError: OSStatus { get }
var kAudioFileNotOpenError: OSStatus { get }
var kAudioFileEndOfFileError: OSStatus { get }
var kAudioFilePositionError: OSStatus { get }
var kAudioFileFileNotFoundError: OSStatus { get }
struct AudioFileFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var eraseFile: AudioFileFlags { get }
  static var dontPageAlignAudioData: AudioFileFlags { get }
}
enum AudioFilePermissions : Int8 {
  init?(rawValue: Int8)
  var rawValue: Int8 { get }
  case readPermission
  case writePermission
  case readWritePermission
}
typealias AudioFileID = OpaquePointer
typealias AudioFilePropertyID = UInt32
var kAudioFileLoopDirection_NoLooping: UInt32 { get }
var kAudioFileLoopDirection_Forward: UInt32 { get }
var kAudioFileLoopDirection_ForwardAndBackward: UInt32 { get }
var kAudioFileLoopDirection_Backward: UInt32 { get }
struct AudioFile_SMPTE_Time {
  var mHours: Int8
  var mMinutes: UInt8
  var mSeconds: UInt8
  var mFrames: UInt8
  var mSubFrameSampleOffset: UInt32
  init()
  init(mHours: Int8, mMinutes: UInt8, mSeconds: UInt8, mFrames: UInt8, mSubFrameSampleOffset: UInt32)
}
var kAudioFileMarkerType_Generic: UInt32 { get }
struct AudioFileMarker {
  var mFramePosition: Float64
  var mName: Unmanaged<CFString>?
  var mMarkerID: Int32
  var mSMPTETime: AudioFile_SMPTE_Time
  var mType: UInt32
  var mReserved: UInt16
  var mChannel: UInt16
  init()
  init(mFramePosition: Float64, mName: Unmanaged<CFString>?, mMarkerID: Int32, mSMPTETime: AudioFile_SMPTE_Time, mType: UInt32, mReserved: UInt16, mChannel: UInt16)
}
struct AudioFileMarkerList {
  var mSMPTE_TimeType: UInt32
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberMarkers: UInt32, mMarkers: (AudioFileMarker))
}
func NumBytesToNumAudioFileMarkers(_ inNumBytes: Int) -> Int
func NumAudioFileMarkersToNumBytes(_ inNumMarkers: Int) -> Int
struct AudioFileRegionFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var loopEnable: AudioFileRegionFlags { get }
  static var playForward: AudioFileRegionFlags { get }
  static var playBackward: AudioFileRegionFlags { get }
}
struct AudioFileRegion {
  var mRegionID: UInt32
  var mName: Unmanaged<CFString>
  var mFlags: AudioFileRegionFlags
  var mNumberMarkers: UInt32
  var mMarkers: (AudioFileMarker)
  init(mRegionID: UInt32, mName: Unmanaged<CFString>, mFlags: AudioFileRegionFlags, mNumberMarkers: UInt32, mMarkers: (AudioFileMarker))
}
struct AudioFileRegionList {
  var mSMPTE_TimeType: UInt32
  var mNumberRegions: UInt32
  var mRegions: (AudioFileRegion)
  init()
  init(mSMPTE_TimeType: UInt32, mNumberRegions: UInt32, mRegions: (AudioFileRegion))
}
func NextAudioFileRegion(_ inAFRegionPtr: UnsafePointer<AudioFileRegion>) -> UnsafeMutablePointer<AudioFileRegion>
struct AudioFramePacketTranslation {
  var mFrame: Int64
  var mPacket: Int64
  var mFrameOffsetInPacket: UInt32
  init()
  init(mFrame: Int64, mPacket: Int64, mFrameOffsetInPacket: UInt32)
}
struct AudioBytePacketTranslationFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var bytePacketTranslationFlag_IsEstimate: AudioBytePacketTranslationFlags { get }
}
struct AudioBytePacketTranslation {
  var mByte: Int64
  var mPacket: Int64
  var mByteOffsetInPacket: UInt32
  var mFlags: AudioBytePacketTranslationFlags
  init()
  init(mByte: Int64, mPacket: Int64, mByteOffsetInPacket: UInt32, mFlags: AudioBytePacketTranslationFlags)
}
struct AudioFilePacketTableInfo {
  var mNumberValidFrames: Int64
  var mPrimingFrames: Int32
  var mRemainderFrames: Int32
  init()
  init(mNumberValidFrames: Int64, mPrimingFrames: Int32, mRemainderFrames: Int32)
}
struct AudioPacketRangeByteCountTranslation {
  var mPacket: Int64
  var mPacketCount: Int64
  var mByteCountUpperBound: Int64
  init()
  init(mPacket: Int64, mPacketCount: Int64, mByteCountUpperBound: Int64)
}
struct AudioPacketRollDistanceTranslation {
  var mPacket: Int64
  var mRollDistance: Int64
  init()
  init(mPacket: Int64, mRollDistance: Int64)
}
struct AudioIndependentPacketTranslation {
  var mPacket: Int64
  var mIndependentlyDecodablePacket: Int64
  init()
  init(mPacket: Int64, mIndependentlyDecodablePacket: Int64)
}
struct AudioPacketDependencyInfoTranslation {
  var mPacket: Int64
  var mIsIndependentlyDecodable: UInt32
  var mNumberPrerollPackets: UInt32
  init()
  init(mPacket: Int64, mIsIndependentlyDecodable: UInt32, mNumberPrerollPackets: UInt32)
}
var kAFInfoDictionary_Album: String { get }
var kAFInfoDictionary_ApproximateDurationInSeconds: String { get }
var kAFInfoDictionary_Artist: String { get }
var kAFInfoDictionary_ChannelLayout: String { get }
var kAFInfoDictionary_Comments: String { get }
var kAFInfoDictionary_Composer: String { get }
var kAFInfoDictionary_Copyright: String { get }
var kAFInfoDictionary_EncodingApplication: String { get }
var kAFInfoDictionary_Genre: String { get }
var kAFInfoDictionary_ISRC: String { get }
var kAFInfoDictionary_KeySignature: String { get }
var kAFInfoDictionary_Lyricist: String { get }
var kAFInfoDictionary_NominalBitRate: String { get }
var kAFInfoDictionary_RecordedDate: String { get }
var kAFInfoDictionary_SourceBitDepth: String { get }
var kAFInfoDictionary_SourceEncoder: String { get }
var kAFInfoDictionary_SubTitle: String { get }
var kAFInfoDictionary_Tempo: String { get }
var kAFInfoDictionary_TimeSignature: String { get }
var kAFInfoDictionary_Title: String { get }
var kAFInfoDictionary_TrackNumber: String { get }
var kAFInfoDictionary_Year: String { get }
@available(macOS 10.5, *)
func AudioFileCreateWithURL(_ inFileRef: CFURL, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID?>) -> OSStatus
@available(macOS 10.5, *)
func AudioFileOpenURL(_ inFileRef: CFURL, _ inPermissions: AudioFilePermissions, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID?>) -> OSStatus
typealias AudioFile_ReadProc = @convention(c) (UnsafeMutableRawPointer, Int64, UInt32, UnsafeMutableRawPointer, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFile_WriteProc = @convention(c) (UnsafeMutableRawPointer, Int64, UInt32, UnsafeRawPointer, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFile_GetSizeProc = @convention(c) (UnsafeMutableRawPointer) -> Int64
typealias AudioFile_SetSizeProc = @convention(c) (UnsafeMutableRawPointer, Int64) -> OSStatus
@available(macOS 10.3, *)
func AudioFileInitializeWithCallbacks(_ inClientData: UnsafeMutableRawPointer, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc, _ inFileType: AudioFileTypeID, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: AudioFileFlags, _ outAudioFile: UnsafeMutablePointer<AudioFileID?>) -> OSStatus
@available(macOS 10.3, *)
func AudioFileOpenWithCallbacks(_ inClientData: UnsafeMutableRawPointer, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc?, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc?, _ inFileTypeHint: AudioFileTypeID, _ outAudioFile: UnsafeMutablePointer<AudioFileID?>) -> OSStatus
@available(macOS 10.2, *)
func AudioFileClose(_ inAudioFile: AudioFileID) -> OSStatus
@available(macOS 10.2, *)
func AudioFileOptimize(_ inAudioFile: AudioFileID) -> OSStatus
@available(macOS 10.2, *)
func AudioFileReadBytes(_ inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.2, *)
func AudioFileWriteBytes(_ inAudioFile: AudioFileID, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafeRawPointer) -> OSStatus
@available(macOS 10.6, *)
func AudioFileReadPacketData(_ inAudioFile: AudioFileID, _ inUseCache: Bool, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>?, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS, introduced: 10.2, deprecated: 10.10, message: "no longer supported")
func AudioFileReadPackets(_ inAudioFile: AudioFileID, _ inUseCache: Bool, _ outNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>?, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.2, *)
func AudioFileWritePackets(_ inAudioFile: AudioFileID, _ inUseCache: Bool, _ inNumBytes: UInt32, _ inPacketDescriptions: UnsafePointer<AudioStreamPacketDescription>?, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafeRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileCountUserData(_ inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ outNumberItems: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileGetUserDataSize(_ inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ outUserDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileGetUserData(_ inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ ioUserDataSize: UnsafeMutablePointer<UInt32>, _ outUserData: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileSetUserData(_ inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32, _ inUserDataSize: UInt32, _ inUserData: UnsafeRawPointer) -> OSStatus
@available(macOS 10.5, *)
func AudioFileRemoveUserData(_ inAudioFile: AudioFileID, _ inUserDataID: UInt32, _ inIndex: UInt32) -> OSStatus
var kAudioFilePropertyFileFormat: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormat: AudioFilePropertyID { get }
var kAudioFilePropertyIsOptimized: AudioFilePropertyID { get }
var kAudioFilePropertyMagicCookieData: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataByteCount: AudioFilePropertyID { get }
var kAudioFilePropertyAudioDataPacketCount: AudioFilePropertyID { get }
var kAudioFilePropertyMaximumPacketSize: AudioFilePropertyID { get }
var kAudioFilePropertyDataOffset: AudioFilePropertyID { get }
var kAudioFilePropertyChannelLayout: AudioFilePropertyID { get }
var kAudioFilePropertyDeferSizeUpdates: AudioFilePropertyID { get }
var kAudioFilePropertyDataFormatName: AudioFilePropertyID { get }
var kAudioFilePropertyMarkerList: AudioFilePropertyID { get }
var kAudioFilePropertyRegionList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToFrame: AudioFilePropertyID { get }
var kAudioFilePropertyFrameToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyRestrictsRandomAccess: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToRollDistance: AudioFilePropertyID { get }
var kAudioFilePropertyPreviousIndependentPacket: AudioFilePropertyID { get }
var kAudioFilePropertyNextIndependentPacket: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToDependencyInfo: AudioFilePropertyID { get }
var kAudioFilePropertyPacketToByte: AudioFilePropertyID { get }
var kAudioFilePropertyByteToPacket: AudioFilePropertyID { get }
var kAudioFilePropertyChunkIDs: AudioFilePropertyID { get }
var kAudioFilePropertyInfoDictionary: AudioFilePropertyID { get }
var kAudioFilePropertyPacketTableInfo: AudioFilePropertyID { get }
var kAudioFilePropertyFormatList: AudioFilePropertyID { get }
var kAudioFilePropertyPacketSizeUpperBound: AudioFilePropertyID { get }
var kAudioFilePropertyPacketRangeByteCountUpperBound: AudioFilePropertyID { get }
var kAudioFilePropertyReserveDuration: AudioFilePropertyID { get }
var kAudioFilePropertyEstimatedDuration: AudioFilePropertyID { get }
var kAudioFilePropertyBitRate: AudioFilePropertyID { get }
var kAudioFilePropertyID3Tag: AudioFilePropertyID { get }
var kAudioFilePropertyID3TagOffset: AudioFilePropertyID { get }
var kAudioFilePropertySourceBitDepth: AudioFilePropertyID { get }
var kAudioFilePropertyAlbumArtwork: AudioFilePropertyID { get }
var kAudioFilePropertyAudioTrackCount: AudioFilePropertyID { get }
var kAudioFilePropertyUseAudioTrack: AudioFilePropertyID { get }
@available(macOS 10.2, *)
func AudioFileGetPropertyInfo(_ inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>?, _ isWritable: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(macOS 10.2, *)
func AudioFileGetProperty(_ inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.2, *)
func AudioFileSetProperty(_ inAudioFile: AudioFileID, _ inPropertyID: AudioFilePropertyID, _ inDataSize: UInt32, _ inPropertyData: UnsafeRawPointer) -> OSStatus
var kAudioFileGlobalInfo_ReadableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_WritableTypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_FileTypeName: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableStreamDescriptionsForFormat: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AvailableFormatIDs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllExtensions: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllHFSTypeCodes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllUTIs: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_AllMIMETypes: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_ExtensionsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_HFSTypeCodesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_UTIsForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_MIMETypesForType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForMIMEType: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForUTI: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForHFSTypeCode: AudioFilePropertyID { get }
var kAudioFileGlobalInfo_TypesForExtension: AudioFilePropertyID { get }
struct AudioFileTypeAndFormatID {
  var mFileType: AudioFileTypeID
  var mFormatID: UInt32
  init()
  init(mFileType: AudioFileTypeID, mFormatID: UInt32)
}
@available(macOS 10.3, *)
func AudioFileGetGlobalInfoSize(_ inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutableRawPointer?, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.3, *)
func AudioFileGetGlobalInfo(_ inPropertyID: AudioFilePropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeMutableRawPointer?, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutableRawPointer) -> OSStatus
