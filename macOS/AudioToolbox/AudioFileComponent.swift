
typealias AudioFileComponent = AudioComponentInstance
typealias AudioFileComponentPropertyID = UInt32
@available(macOS 10.5, *)
func AudioFileComponentCreateURL(_ inComponent: AudioFileComponent, _ inFileRef: CFURL, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32) -> OSStatus
@available(macOS 10.5, *)
func AudioFileComponentOpenURL(_ inComponent: AudioFileComponent, _ inFileRef: CFURL, _ inPermissions: Int8, _ inFileDescriptor: Int32) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentOpenWithCallbacks(_ inComponent: AudioFileComponent, _ inClientData: UnsafeMutableRawPointer, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentInitializeWithCallbacks(_ inComponent: AudioFileComponent, _ inClientData: UnsafeMutableRawPointer, _ inReadFunc: AudioFile_ReadProc, _ inWriteFunc: AudioFile_WriteProc, _ inGetSizeFunc: AudioFile_GetSizeProc, _ inSetSizeFunc: AudioFile_SetSizeProc, _ inFileType: UInt32, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentCloseFile(_ inComponent: AudioFileComponent) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentOptimize(_ inComponent: AudioFileComponent) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentReadBytes(_ inComponent: AudioFileComponent, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentWriteBytes(_ inComponent: AudioFileComponent, _ inUseCache: Bool, _ inStartingByte: Int64, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafeRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentReadPackets(_ inComponent: AudioFileComponent, _ inUseCache: Bool, _ outNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>?, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentReadPacketData(_ inComponent: AudioFileComponent, _ inUseCache: Bool, _ ioNumBytes: UnsafeMutablePointer<UInt32>, _ outPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>?, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ outBuffer: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentWritePackets(_ inComponent: AudioFileComponent, _ inUseCache: Bool, _ inNumBytes: UInt32, _ inPacketDescriptions: UnsafePointer<AudioStreamPacketDescription>?, _ inStartingPacket: Int64, _ ioNumPackets: UnsafeMutablePointer<UInt32>, _ inBuffer: UnsafeRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentGetPropertyInfo(_ inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ outPropertySize: UnsafeMutablePointer<UInt32>?, _ outWritable: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentGetProperty(_ inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentSetProperty(_ inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafeRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentCountUserData(_ inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ outNumberItems: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentGetUserDataSize(_ inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32, _ outUserDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentGetUserData(_ inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32, _ ioUserDataSize: UnsafeMutablePointer<UInt32>, _ outUserData: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentSetUserData(_ inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32, _ inUserDataSize: UInt32, _ inUserData: UnsafeRawPointer) -> OSStatus
@available(macOS 10.5, *)
func AudioFileComponentRemoveUserData(_ inComponent: AudioFileComponent, _ inUserDataID: UInt32, _ inIndex: UInt32) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentExtensionIsThisFormat(_ inComponent: AudioFileComponent, _ inExtension: CFString, _ outResult: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentFileDataIsThisFormat(_ inComponent: AudioFileComponent, _ inDataByteSize: UInt32, _ inData: UnsafeRawPointer, _ outResult: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentGetGlobalInfoSize(_ inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeRawPointer?, _ outPropertySize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioFileComponentGetGlobalInfo(_ inComponent: AudioFileComponent, _ inPropertyID: AudioFileComponentPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeRawPointer?, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutableRawPointer) -> OSStatus
var kAudioFileComponent_CanRead: AudioFilePropertyID { get }
var kAudioFileComponent_CanWrite: AudioFilePropertyID { get }
var kAudioFileComponent_FileTypeName: AudioFilePropertyID { get }
var kAudioFileComponent_UTIsForType: AudioFilePropertyID { get }
var kAudioFileComponent_MIMETypesForType: AudioFilePropertyID { get }
var kAudioFileComponent_ExtensionsForType: AudioFilePropertyID { get }
var kAudioFileComponent_AvailableFormatIDs: AudioFilePropertyID { get }
var kAudioFileComponent_AvailableStreamDescriptionsForFormat: AudioFilePropertyID { get }
var kAudioFileComponent_FastDispatchTable: AudioFilePropertyID { get }
var kAudioFileComponent_HFSTypeCodesForType: AudioFilePropertyID { get }
var kAudioFileCreateSelect: Int { get }
var kAudioFileOpenSelect: Int { get }
var kAudioFileInitializeSelect: Int { get }
var kAudioFileOpenWithCallbacksSelect: Int { get }
var kAudioFileInitializeWithCallbacksSelect: Int { get }
var kAudioFileCloseSelect: Int { get }
var kAudioFileOptimizeSelect: Int { get }
var kAudioFileReadBytesSelect: Int { get }
var kAudioFileWriteBytesSelect: Int { get }
var kAudioFileReadPacketsSelect: Int { get }
var kAudioFileWritePacketsSelect: Int { get }
var kAudioFileGetPropertyInfoSelect: Int { get }
var kAudioFileGetPropertySelect: Int { get }
var kAudioFileSetPropertySelect: Int { get }
var kAudioFileExtensionIsThisFormatSelect: Int { get }
var kAudioFileFileIsThisFormatSelect: Int { get }
var kAudioFileDataIsThisFormatSelect: Int { get }
var kAudioFileGetGlobalInfoSizeSelect: Int { get }
var kAudioFileGetGlobalInfoSelect: Int { get }
var kAudioFileCountUserDataSelect: Int { get }
var kAudioFileGetUserDataSizeSelect: Int { get }
var kAudioFileGetUserDataSelect: Int { get }
var kAudioFileSetUserDataSelect: Int { get }
var kAudioFileRemoveUserDataSelect: Int { get }
var kAudioFileCreateURLSelect: Int { get }
var kAudioFileOpenURLSelect: Int { get }
var kAudioFileFileDataIsThisFormatSelect: Int { get }
var kAudioFileReadPacketDataSelect: Int { get }
typealias ReadBytesFDF = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias WriteBytesFDF = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafeRawPointer) -> OSStatus
typealias ReadPacketsFDF = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>?, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias ReadPacketDataFDF = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>?, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias WritePacketsFDF = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, UInt32, UnsafePointer<AudioStreamPacketDescription>?, Int64, UnsafeMutablePointer<UInt32>, UnsafeRawPointer) -> OSStatus
typealias GetPropertyInfoFDF = @convention(c) (UnsafeMutableRawPointer, AudioFilePropertyID, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> OSStatus
typealias GetPropertyFDF = @convention(c) (UnsafeMutableRawPointer, AudioFilePropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias SetPropertyFDF = @convention(c) (UnsafeMutableRawPointer, AudioFilePropertyID, UInt32, UnsafeRawPointer) -> OSStatus
typealias CountUserDataFDF = @convention(c) (UnsafeMutableRawPointer, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias GetUserDataSizeFDF = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias GetUserDataFDF = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias SetUserDataFDF = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32, UInt32, UnsafeRawPointer) -> OSStatus
typealias AudioFileComponentCreateURLProc = @convention(c) (UnsafeMutableRawPointer, CFURL, UnsafePointer<AudioStreamBasicDescription>, UInt32) -> OSStatus
typealias AudioFileComponentOpenURLProc = @convention(c) (UnsafeMutableRawPointer, CFURL, Int8, Int32) -> OSStatus
typealias AudioFileComponentOpenWithCallbacksProc = @convention(c) (UnsafeMutableRawPointer, UnsafeMutableRawPointer, AudioFile_ReadProc, AudioFile_WriteProc, AudioFile_GetSizeProc, AudioFile_SetSizeProc) -> OSStatus
typealias AudioFileComponentInitializeWithCallbacksProc = @convention(c) (UnsafeMutableRawPointer, UnsafeMutableRawPointer, AudioFile_ReadProc, AudioFile_WriteProc, AudioFile_GetSizeProc, AudioFile_SetSizeProc, UInt32, UnsafePointer<AudioStreamBasicDescription>, UInt32) -> OSStatus
typealias AudioFileComponentCloseProc = @convention(c) (UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentOptimizeProc = @convention(c) (UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentReadBytesProc = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentWriteBytesProc = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, Int64, UnsafeMutablePointer<UInt32>, UnsafeRawPointer) -> OSStatus
typealias AudioFileComponentReadPacketsProc = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>?, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentReadPacketDataProc = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioStreamPacketDescription>?, Int64, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentWritePacketsProc = @convention(c) (UnsafeMutableRawPointer, DarwinBoolean, UInt32, UnsafePointer<AudioStreamPacketDescription>?, Int64, UnsafeMutablePointer<UInt32>, UnsafeRawPointer) -> OSStatus
typealias AudioFileComponentGetPropertyInfoProc = @convention(c) (UnsafeMutableRawPointer, AudioFileComponentPropertyID, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> OSStatus
typealias AudioFileComponentGetPropertyProc = @convention(c) (UnsafeMutableRawPointer, AudioFileComponentPropertyID, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentSetPropertyProc = @convention(c) (UnsafeMutableRawPointer, AudioFileComponentPropertyID, UInt32, UnsafeRawPointer) -> OSStatus
typealias AudioFileComponentCountUserDataProc = @convention(c) (UnsafeMutableRawPointer, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetUserDataSizeProc = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetUserDataProc = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
typealias AudioFileComponentSetUserDataProc = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32, UInt32, UnsafeRawPointer) -> OSStatus
typealias AudioFileComponentRemoveUserDataProc = @convention(c) (UnsafeMutableRawPointer, UInt32, UInt32) -> OSStatus
typealias AudioFileComponentExtensionIsThisFormatProc = @convention(c) (UnsafeMutableRawPointer, CFString, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentFileDataIsThisFormatProc = @convention(c) (UnsafeMutableRawPointer, UInt32, UnsafeRawPointer, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetGlobalInfoSizeProc = @convention(c) (UnsafeMutableRawPointer, AudioFileComponentPropertyID, UInt32, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>) -> OSStatus
typealias AudioFileComponentGetGlobalInfoProc = @convention(c) (UnsafeMutableRawPointer, AudioFileComponentPropertyID, UInt32, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
