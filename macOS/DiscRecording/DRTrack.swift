
class DRTrack : NSObject {
  init!(producer: Any!)
  func properties() -> [AnyHashable : Any]!
  func setProperties(_ properties: [AnyHashable : Any]!)
  func testProductionSpeed(forInterval interval: TimeInterval) -> Float
  func testProductionSpeed(forLength length: UInt32) -> Float
  func estimateLength() -> UInt64
}
extension DRTrack {
  func length() -> DRMSF!
  func preGap() -> DRMSF!
  func setPreGap(_ preGap: DRMSF!)
}
protocol DRTrackDataProduction {
  func estimateLength(of track: DRTrack!) -> UInt64
  func prepare(_ track: DRTrack!, for burn: DRBurn!, toMedia mediaInfo: [AnyHashable : Any]!) -> Bool
  func cleanupTrack(afterBurn track: DRTrack!)
  func producePreGap(for track: DRTrack!, intoBuffer buffer: UnsafeMutablePointer<CChar>!, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>!) -> UInt32
  func produceData(for track: DRTrack!, intoBuffer buffer: UnsafeMutablePointer<CChar>!, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>!) -> UInt32
  func prepareTrack(forVerification track: DRTrack!) -> Bool
  func verifyPreGap(for track: DRTrack!, inBuffer buffer: UnsafePointer<CChar>!, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>!) -> Bool
  func verifyData(for track: DRTrack!, inBuffer buffer: UnsafePointer<CChar>!, length bufferLength: UInt32, atAddress address: UInt64, blockSize: UInt32, ioFlags flags: UnsafeMutablePointer<UInt32>!) -> Bool
  func cleanupTrack(afterVerification track: DRTrack!) -> Bool
}
@available(macOS 10.2, *)
let DRTrackLengthKey: String
@available(macOS 10.2, *)
let DRBlockSizeKey: String
@available(macOS 10.2, *)
let DRBlockTypeKey: String
@available(macOS 10.2, *)
let DRDataFormKey: String
@available(macOS 10.2, *)
let DRSessionFormatKey: String
@available(macOS 10.2, *)
let DRTrackModeKey: String
@available(macOS 10.2, *)
let DRVerificationTypeKey: String
@available(macOS 10.2, *)
let DRMaxBurnSpeedKey: String
@available(macOS 10.2, *)
let DRPreGapLengthKey: String
@available(macOS 10.5, *)
let DRPreGapIsRequiredKey: String
@available(macOS 10.2, *)
let DRDVDTimestampKey: String
@available(macOS 10.2, *)
let DRDVDCopyrightInfoKey: String
@available(macOS 10.3, *)
let DRTrackISRCKey: String
@available(macOS 10.3, *)
let DRIndexPointsKey: String
@available(macOS 10.3, *)
let DRAudioPreEmphasisKey: String
@available(macOS 10.3, *)
let DRAudioFourChannelKey: String
@available(macOS 10.3, *)
let DRSerialCopyManagementStateKey: String
@available(macOS 10.2, *)
let DRVerificationTypeProduceAgain: String
@available(macOS 10.2, *)
let DRVerificationTypeReceiveData: String
@available(macOS 10.4, *)
let DRVerificationTypeChecksum: String
@available(macOS 10.2, *)
let DRVerificationTypeNone: String
@available(macOS 10.3, *)
let DRSCMSCopyrightFree: String
@available(macOS 10.3, *)
let DRSCMSCopyrightProtectedOriginal: String
@available(macOS 10.3, *)
let DRSCMSCopyrightProtectedCopy: String
@available(macOS 10.3, *)
let DRNextWritableAddressKey: String
@available(macOS 10.3, *)
let DRTrackStartAddressKey: String
@available(macOS 10.3, *)
let DRFreeBlocksKey: String
@available(macOS 10.3, *)
let DRTrackNumberKey: String
@available(macOS 10.3, *)
let DRSessionNumberKey: String
@available(macOS 10.3, *)
let DRTrackTypeKey: String
@available(macOS 10.3, *)
let DRTrackIsEmptyKey: String
@available(macOS 10.3, *)
let DRTrackPacketTypeKey: String
@available(macOS 10.3, *)
let DRTrackPacketSizeKey: String
@available(macOS 10.3, *)
let DRTrackTypeInvisible: String
@available(macOS 10.3, *)
let DRTrackTypeIncomplete: String
@available(macOS 10.3, *)
let DRTrackTypeReserved: String
@available(macOS 10.3, *)
let DRTrackTypeClosed: String
@available(macOS 10.3, *)
let DRTrackPacketTypeFixed: String
@available(macOS 10.3, *)
let DRTrackPacketTypeVariable: String
@available(macOS 10.2, *)
let DRISOLevel: String
@available(macOS 10.2, *)
let DRVolumeSet: String
@available(macOS 10.2, *)
let DRPublisher: String
@available(macOS 10.2, *)
let DRDataPreparer: String
@available(macOS 10.2, *)
let DRApplicationIdentifier: String
@available(macOS 10.2, *)
let DRSystemIdentifier: String
@available(macOS 10.2, *)
let DRCopyrightFile: String
@available(macOS 10.2, *)
let DRAbstractFile: String
@available(macOS 10.2, *)
let DRBibliographicFile: String
@available(macOS 10.2, *)
let DRBlockSize: String
@available(macOS 10.2, *)
let DRDefaultDate: String
@available(macOS 10.2, *)
let DRVolumeCreationDate: String
@available(macOS 10.2, *)
let DRVolumeModificationDate: String
@available(macOS 10.2, *)
let DRVolumeCheckedDate: String
@available(macOS 10.2, *)
let DRVolumeExpirationDate: String
@available(macOS 10.2, *)
let DRVolumeEffectiveDate: String
@available(macOS 10.2, *)
let DRISOMacExtensions: String
@available(macOS 10.2, *)
let DRISORockRidgeExtensions: String
@available(macOS 10.3, *)
let DRSuppressMacSpecificFiles: String
var DRFlagSubchannelDataRequested: Int { get }
@available(macOS 10.5, *)
let DRSubchannelDataFormKey: String
@available(macOS 10.5, *)
let DRSubchannelDataFormNone: String
@available(macOS 10.5, *)
let DRSubchannelDataFormPack: String
@available(macOS 10.5, *)
let DRSubchannelDataFormRaw: String
