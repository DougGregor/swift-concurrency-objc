
class DRTrackRef : _CFObject {
}
@available(macOS 10.2, *)
func DRTrackGetTypeID() -> CFTypeID
typealias DRTrackMessage = UInt32
typealias DRTrackCallbackProc = @convention(c) (DRTrackRef?, DRTrackMessage, UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.2, *)
func DRTrackCreate(_ properties: CFDictionary!, _ callback: DRTrackCallbackProc!) -> Unmanaged<DRTrackRef>!
@available(macOS 10.2, *)
func DRTrackSetProperties(_ track: DRTrackRef!, _ properties: CFDictionary!)
@available(macOS 10.2, *)
func DRTrackGetProperties(_ track: DRTrackRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
func DRTrackSpeedTest(_ track: DRTrackRef!, _ howManyMilliseconds: UInt32, _ howManyBytes: UInt32) -> Float
@available(macOS 10.3, *)
func DRTrackEstimateLength(_ track: DRTrackRef!) -> UInt64
@available(macOS 10.2, *)
let kDRTrackLengthKey: CFString!
@available(macOS 10.2, *)
let kDRBlockSizeKey: CFString!
@available(macOS 10.2, *)
let kDRBlockTypeKey: CFString!
@available(macOS 10.2, *)
let kDRDataFormKey: CFString!
@available(macOS 10.2, *)
let kDRSessionFormatKey: CFString!
@available(macOS 10.2, *)
let kDRTrackModeKey: CFString!
@available(macOS 10.2, *)
let kDRVerificationTypeKey: CFString!
@available(macOS 10.2, *)
let kDRDVDCopyrightInfoKey: CFString!
@available(macOS 10.2, *)
let kDRDVDTimestampKey: CFString!
@available(macOS 10.2, *)
let kDRBufferZone1DataKey: CFString!
@available(macOS 10.2, *)
let kDRMaxBurnSpeedKey: CFString!
@available(macOS 10.2, *)
let kDRPreGapLengthKey: CFString!
@available(macOS 10.4, *)
let kDRPreGapIsRequiredKey: CFString!
@available(macOS 10.3, *)
let kDRTrackISRCKey: CFString!
@available(macOS 10.3, *)
let kDRIndexPointsKey: CFString!
@available(macOS 10.3, *)
let kDRAudioPreEmphasisKey: CFString!
@available(macOS 10.3, *)
let kDRAudioFourChannelKey: CFString!
@available(macOS 10.3, *)
let kDRSerialCopyManagementStateKey: CFString!
@available(macOS 10.2, *)
let kDRVerificationTypeNone: CFString!
@available(macOS 10.2, *)
let kDRVerificationTypeProduceAgain: CFString!
@available(macOS 10.2, *)
let kDRVerificationTypeReceiveData: CFString!
@available(macOS 10.4, *)
let kDRVerificationTypeChecksum: CFString!
@available(macOS 10.3, *)
let kDRSCMSCopyrightFree: CFString!
@available(macOS 10.3, *)
let kDRSCMSCopyrightProtectedOriginal: CFString!
@available(macOS 10.3, *)
let kDRSCMSCopyrightProtectedCopy: CFString!
@available(macOS 10.3, *)
let kDRNextWritableAddressKey: CFString!
@available(macOS 10.3, *)
let kDRTrackStartAddressKey: CFString!
@available(macOS 10.3, *)
let kDRFreeBlocksKey: CFString!
@available(macOS 10.3, *)
let kDRTrackNumberKey: CFString!
@available(macOS 10.3, *)
let kDRSessionNumberKey: CFString!
@available(macOS 10.3, *)
let kDRTrackTypeKey: CFString!
@available(macOS 10.3, *)
let kDRTrackIsEmptyKey: CFString!
@available(macOS 10.3, *)
let kDRTrackPacketTypeKey: CFString!
@available(macOS 10.3, *)
let kDRTrackPacketSizeKey: CFString!
@available(macOS 10.3, *)
let kDRTrackTypeInvisible: CFString!
@available(macOS 10.3, *)
let kDRTrackTypeIncomplete: CFString!
@available(macOS 10.3, *)
let kDRTrackTypeReserved: CFString!
@available(macOS 10.3, *)
let kDRTrackTypeClosed: CFString!
@available(macOS 10.3, *)
let kDRTrackPacketTypeFixed: CFString!
@available(macOS 10.3, *)
let kDRTrackPacketTypeVariable: CFString!
@available(macOS 10.2, *)
let kDRBurnKey: CFString!
@available(macOS 10.5, *)
let kDRSubchannelDataFormKey: CFString!
@available(macOS 10.5, *)
let kDRSubchannelDataFormNone: CFString!
@available(macOS 10.5, *)
let kDRSubchannelDataFormPack: CFString!
@available(macOS 10.5, *)
let kDRSubchannelDataFormRaw: CFString!
var kDRBlockSizeAudio: Int { get }
var kDRBlockSizeMode1Data: Int { get }
var kDRBlockSizeMode2Data: Int { get }
var kDRBlockSizeMode2Form1Data: Int { get }
var kDRBlockSizeMode2Form2Data: Int { get }
var kDRBlockSizeDVDData: Int { get }
var kDRBlockTypeAudio: Int { get }
var kDRBlockTypeMode1Data: Int { get }
var kDRBlockTypeMode2Data: Int { get }
var kDRBlockTypeMode2Form1Data: Int { get }
var kDRBlockTypeMode2Form2Data: Int { get }
var kDRBlockTypeDVDData: Int { get }
var kDRDataFormAudio: Int { get }
var kDRDataFormMode1Data: Int { get }
var kDRDataFormMode2Data: Int { get }
var kDRDataFormMode2Form1Data: Int { get }
var kDRDataFormMode2Form2Data: Int { get }
var kDRDataFormDVDData: Int { get }
var kDRTrackModeAudio: Int { get }
var kDRTrackMode1Data: Int { get }
var kDRTrackMode2Data: Int { get }
var kDRTrackMode2Form1Data: Int { get }
var kDRTrackMode2Form2Data: Int { get }
var kDRTrackModeDVDData: Int { get }
var kDRSessionFormatAudio: Int { get }
var kDRSessionFormatMode1Data: Int { get }
var kDRSessionFormatCDI: Int { get }
var kDRSessionFormatCDXA: Int { get }
var kDRSessionFormatDVDData: Int { get }
var kDRFlagSubchannelDataRequested: Int { get }
var kDRFlagNoMoreData: Int { get }
var kDRTrackMessagePreBurn: Int { get }
var kDRTrackMessageProduceData: Int { get }
var kDRTrackMessageVerificationStarting: Int { get }
var kDRTrackMessageVerifyData: Int { get }
var kDRTrackMessageVerificationDone: Int { get }
var kDRTrackMessagePostBurn: Int { get }
var kDRTrackMessageEstimateLength: Int { get }
var kDRTrackMessageProducePreGap: Int { get }
var kDRTrackMessageVerifyPreGap: Int { get }
struct DRTrackProductionInfo {
  var buffer: UnsafeMutableRawPointer!
  var reqCount: UInt32
  var actCount: UInt32
  var flags: UInt32
  var blockSize: UInt32
  var requestedAddress: UInt64
  init()
  init(buffer: UnsafeMutableRawPointer!, reqCount: UInt32, actCount: UInt32, flags: UInt32, blockSize: UInt32, requestedAddress: UInt64)
}
