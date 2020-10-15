
var kIOMessageTrayStateChange: Int32 { get }
var kIOMessageTrayStateHasChanged: Int32 { get }
var kMessageTrayStateChangeRequestAccepted: Int { get }
var kMessageTrayStateChangeRequestRejected: Int { get }
var kIOMessageMediaAccessChange: Int32 { get }
var kMessageDeterminingMediaPresence: Int { get }
var kMessageFoundMedia: Int { get }
var kMessageMediaTypeDetermined: Int { get }
var kIOPropertySupportedCDFeatures: String { get }
var kIOPropertySupportedDVDFeatures: String { get }
var kIOPropertySupportedBDFeatures: String { get }
var kIOPropertyLowPowerPolling: String { get }
typealias CDFeatures = UInt32
var kCDFeaturesAnalogAudioBit: Int { get }
var kCDFeaturesReadStructuresBit: Int { get }
var kCDFeaturesWriteOnceBit: Int { get }
var kCDFeaturesReWriteableBit: Int { get }
var kCDFeaturesCDDAStreamAccurateBit: Int { get }
var kCDFeaturesPacketWriteBit: Int { get }
var kCDFeaturesTAOWriteBit: Int { get }
var kCDFeaturesSAOWriteBit: Int { get }
var kCDFeaturesRawWriteBit: Int { get }
var kCDFeaturesTestWriteBit: Int { get }
var kCDFeaturesBUFWriteBit: Int { get }
var kCDFeaturesAnalogAudioMask: Int { get }
var kCDFeaturesReadStructuresMask: Int { get }
var kCDFeaturesWriteOnceMask: Int { get }
var kCDFeaturesReWriteableMask: Int { get }
var kCDFeaturesCDDAStreamAccurateMask: Int { get }
var kCDFeaturesPacketWriteMask: Int { get }
var kCDFeaturesTAOWriteMask: Int { get }
var kCDFeaturesSAOWriteMask: Int { get }
var kCDFeaturesRawWriteMask: Int { get }
var kCDFeaturesTestWriteMask: Int { get }
var kCDFeaturesBUFWriteMask: Int { get }
typealias DVDFeatures = UInt32
var kDVDFeaturesCSSBit: Int { get }
var kDVDFeaturesReadStructuresBit: Int { get }
var kDVDFeaturesWriteOnceBit: Int { get }
var kDVDFeaturesRandomWriteableBit: Int { get }
var kDVDFeaturesReWriteableBit: Int { get }
var kDVDFeaturesTestWriteBit: Int { get }
var kDVDFeaturesBUFWriteBit: Int { get }
var kDVDFeaturesPlusRBit: Int { get }
var kDVDFeaturesPlusRWBit: Int { get }
var kDVDFeaturesHDReadBit: Int { get }
var kDVDFeaturesHDRBit: Int { get }
var kDVDFeaturesHDRAMBit: Int { get }
var kDVDFeaturesHDRWBit: Int { get }
var kDVDFeaturesCSSMask: Int { get }
var kDVDFeaturesReadStructuresMask: Int { get }
var kDVDFeaturesWriteOnceMask: Int { get }
var kDVDFeaturesRandomWriteableMask: Int { get }
var kDVDFeaturesReWriteableMask: Int { get }
var kDVDFeaturesTestWriteMask: Int { get }
var kDVDFeaturesBUFWriteMask: Int { get }
var kDVDFeaturesPlusRMask: Int { get }
var kDVDFeaturesPlusRWMask: Int { get }
var kDVDFeaturesHDReadMask: Int { get }
var kDVDFeaturesHDRMask: Int { get }
var kDVDFeaturesHDRAMMask: Int { get }
var kDVDFeaturesHDRWMask: Int { get }
typealias BDFeatures = UInt32
var kBDFeaturesReadBit: Int { get }
var kBDFeaturesWriteBit: Int { get }
var kBDFeaturesReadMask: Int { get }
var kBDFeaturesWriteMask: Int { get }
var kDiscStatusEmpty: Int { get }
var kDiscStatusIncomplete: Int { get }
var kDiscStatusComplete: Int { get }
var kDiscStatusOther: Int { get }
var kDiscStatusMask: Int { get }
var kDiscStatusErasableMask: Int { get }
var kSenseDefaultSize: Int { get }
struct SCSI_Sense_Data {
  var VALID_RESPONSE_CODE: UInt8
  var SEGMENT_NUMBER: UInt8
  var SENSE_KEY: UInt8
  var INFORMATION_1: UInt8
  var INFORMATION_2: UInt8
  var INFORMATION_3: UInt8
  var INFORMATION_4: UInt8
  var ADDITIONAL_SENSE_LENGTH: UInt8
  var COMMAND_SPECIFIC_INFORMATION_1: UInt8
  var COMMAND_SPECIFIC_INFORMATION_2: UInt8
  var COMMAND_SPECIFIC_INFORMATION_3: UInt8
  var COMMAND_SPECIFIC_INFORMATION_4: UInt8
  var ADDITIONAL_SENSE_CODE: UInt8
  var ADDITIONAL_SENSE_CODE_QUALIFIER: UInt8
  var FIELD_REPLACEABLE_UNIT_CODE: UInt8
  var SKSV_SENSE_KEY_SPECIFIC_MSB: UInt8
  var SENSE_KEY_SPECIFIC_MID: UInt8
  var SENSE_KEY_SPECIFIC_LSB: UInt8
  init()
  init(VALID_RESPONSE_CODE: UInt8, SEGMENT_NUMBER: UInt8, SENSE_KEY: UInt8, INFORMATION_1: UInt8, INFORMATION_2: UInt8, INFORMATION_3: UInt8, INFORMATION_4: UInt8, ADDITIONAL_SENSE_LENGTH: UInt8, COMMAND_SPECIFIC_INFORMATION_1: UInt8, COMMAND_SPECIFIC_INFORMATION_2: UInt8, COMMAND_SPECIFIC_INFORMATION_3: UInt8, COMMAND_SPECIFIC_INFORMATION_4: UInt8, ADDITIONAL_SENSE_CODE: UInt8, ADDITIONAL_SENSE_CODE_QUALIFIER: UInt8, FIELD_REPLACEABLE_UNIT_CODE: UInt8, SKSV_SENSE_KEY_SPECIFIC_MSB: UInt8, SENSE_KEY_SPECIFIC_MID: UInt8, SENSE_KEY_SPECIFIC_LSB: UInt8)
}
var kSENSE_DATA_VALID: Int { get }
var kSENSE_NOT_DATA_VALID: Int { get }
var kSENSE_DATA_VALID_Mask: Int { get }
var kSENSE_RESPONSE_CODE_Current_Errors: Int { get }
var kSENSE_RESPONSE_CODE_Deferred_Errors: Int { get }
var kSENSE_RESPONSE_CODE_Mask: Int { get }
var kSENSE_FILEMARK_Set: Int { get }
var kSENSE_FILEMARK_Not_Set: Int { get }
var kSENSE_FILEMARK_Mask: Int { get }
var kSENSE_EOM_Set: Int { get }
var kSENSE_EOM_Not_Set: Int { get }
var kSENSE_EOM_Mask: Int { get }
var kSENSE_ILI_Set: Int { get }
var kSENSE_ILI_Not_Set: Int { get }
var kSENSE_ILI_Mask: Int { get }
var kSENSE_KEY_NO_SENSE: Int { get }
var kSENSE_KEY_RECOVERED_ERROR: Int { get }
var kSENSE_KEY_NOT_READY: Int { get }
var kSENSE_KEY_MEDIUM_ERROR: Int { get }
var kSENSE_KEY_HARDWARE_ERROR: Int { get }
var kSENSE_KEY_ILLEGAL_REQUEST: Int { get }
var kSENSE_KEY_UNIT_ATTENTION: Int { get }
var kSENSE_KEY_DATA_PROTECT: Int { get }
var kSENSE_KEY_BLANK_CHECK: Int { get }
var kSENSE_KEY_VENDOR_SPECIFIC: Int { get }
var kSENSE_KEY_COPY_ABORTED: Int { get }
var kSENSE_KEY_ABORTED_COMMAND: Int { get }
var kSENSE_KEY_VOLUME_OVERFLOW: Int { get }
var kSENSE_KEY_MISCOMPARE: Int { get }
var kSENSE_KEY_Mask: Int { get }
var kINQUIRY_StandardDataHeaderSize: Int { get }
var kINQUIRY_MaximumDataSize: Int { get }
var kINQUIRY_VENDOR_IDENTIFICATION_Length: Int { get }
var kINQUIRY_PRODUCT_IDENTIFICATION_Length: Int { get }
var kINQUIRY_PRODUCT_REVISION_LEVEL_Length: Int { get }
struct SCSICmd_INQUIRY_StandardData {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var RMB: UInt8
  var VERSION: UInt8
  var RESPONSE_DATA_FORMAT: UInt8
  var ADDITIONAL_LENGTH: UInt8
  var SCCSReserved: UInt8
  var flags1: UInt8
  var flags2: UInt8
  var VENDOR_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  var PRODUCT_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  var PRODUCT_REVISION_LEVEL: (CChar, CChar, CChar, CChar)
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, RMB: UInt8, VERSION: UInt8, RESPONSE_DATA_FORMAT: UInt8, ADDITIONAL_LENGTH: UInt8, SCCSReserved: UInt8, flags1: UInt8, flags2: UInt8, VENDOR_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar), PRODUCT_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar), PRODUCT_REVISION_LEVEL: (CChar, CChar, CChar, CChar))
}
typealias SCSICmd_INQUIRY_StandardDataPtr = UnsafeMutablePointer<SCSICmd_INQUIRY_StandardData>
struct SCSICmd_INQUIRY_StandardDataAll {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var RMB: UInt8
  var VERSION: UInt8
  var RESPONSE_DATA_FORMAT: UInt8
  var ADDITIONAL_LENGTH: UInt8
  var SCCSReserved: UInt8
  var flags1: UInt8
  var flags2: UInt8
  var VENDOR_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  var PRODUCT_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar)
  var PRODUCT_REVISION_LEVEL: (CChar, CChar, CChar, CChar)
  var VendorSpecific1: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var flags3: UInt8
  var Reserved1: UInt8
  var VERSION_DESCRIPTOR: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16)
  var Reserved2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var VendorSpecific2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, RMB: UInt8, VERSION: UInt8, RESPONSE_DATA_FORMAT: UInt8, ADDITIONAL_LENGTH: UInt8, SCCSReserved: UInt8, flags1: UInt8, flags2: UInt8, VENDOR_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar), PRODUCT_IDENTIFICATION: (CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar, CChar), PRODUCT_REVISION_LEVEL: (CChar, CChar, CChar, CChar), VendorSpecific1: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), flags3: UInt8, Reserved1: UInt8, VERSION_DESCRIPTOR: (UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), Reserved2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), VendorSpecific2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
var kINQUIRY_PERIPHERAL_QUALIFIER_Connected: Int { get }
var kINQUIRY_PERIPHERAL_QUALIFIER_SupportedButNotConnected: Int { get }
var kINQUIRY_PERIPHERAL_QUALIFIER_NotSupported: Int { get }
var kINQUIRY_PERIPHERAL_QUALIFIER_Mask: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_DirectAccessSBCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_SequentialAccessSSCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_PrinterSSCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_ProcessorSPCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_WriteOnceSBCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_CDROM_MMCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_ScannerSCSI2Device: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_OpticalMemorySBCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_MediumChangerSMCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_CommunicationsSSCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_StorageArrayControllerSCC2Device: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_EnclosureServicesSESDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_SimplifiedDirectAccessRBCDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_OpticalCardReaderOCRWDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_ObjectBasedStorageDevice: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_AutomationDriveInterface: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_WellKnownLogicalUnit: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_UnknownOrNoDeviceType: Int { get }
var kINQUIRY_PERIPHERAL_TYPE_Mask: Int { get }
var kINQUIRY_PERIPHERAL_RMB_MediumFixed: Int { get }
var kINQUIRY_PERIPHERAL_RMB_MediumRemovable: Int { get }
var kINQUIRY_PERIPHERAL_RMB_BitMask: Int { get }
var kINQUIRY_ISO_IEC_VERSION_Mask: Int { get }
var kINQUIRY_ECMA_VERSION_Mask: Int { get }
var kINQUIRY_ANSI_VERSION_NoClaimedConformance: Int { get }
var kINQUIRY_ANSI_VERSION_SCSI_1_Compliant: Int { get }
var kINQUIRY_ANSI_VERSION_SCSI_2_Compliant: Int { get }
var kINQUIRY_ANSI_VERSION_SCSI_SPC_Compliant: Int { get }
var kINQUIRY_ANSI_VERSION_SCSI_SPC_2_Compliant: Int { get }
var kINQUIRY_ANSI_VERSION_SCSI_SPC_3_Compliant: Int { get }
var kINQUIRY_ANSI_VERSION_Mask: Int { get }
var kINQUIRY_Byte3_HISUP_Bit: Int { get }
var kINQUIRY_Byte3_NORMACA_Bit: Int { get }
var kINQUIRY_Byte3_AERC_Bit: Int { get }
var kINQUIRY_RESPONSE_DATA_FORMAT_Mask: Int { get }
var kINQUIRY_Byte3_HISUP_Mask: Int { get }
var kINQUIRY_Byte3_NORMACA_Mask: Int { get }
var kINQUIRY_Byte3_AERC_Mask: Int { get }
var kINQUIRY_Byte5_SCCS_Bit: Int { get }
var kINQUIRY_Byte5_ACC_Bit: Int { get }
var kINQUIRY_Byte5_ExplicitTPGS_Bit: Int { get }
var kINQUIRY_Byte5_ImplicitTPGS_Bit: Int { get }
var kINQUIRY_Byte5_3PC_Bit: Int { get }
var kINQUIRY_Byte5_PROTECT_Bit: Int { get }
var kINQUIRY_Byte5_SCCS_Mask: Int { get }
var kINQUIRY_Byte5_ACC_Mask: Int { get }
var kINQUIRY_Byte5_ExplicitTPGS_Mask: Int { get }
var kINQUIRY_Byte5_ImplicitTPGS_Mask: Int { get }
var kINQUIRY_Byte5_3PC_Mask: Int { get }
var kINQUIRY_Byte5_PROTECT_Mask: Int { get }
var kINQUIRY_Byte6_Offset: Int { get }
var kINQUIRY_Byte6_ADDR16_Bit: Int { get }
var kINQUIRY_Byte6_MCHNGR_Bit: Int { get }
var kINQUIRY_Byte6_MULTIP_Bit: Int { get }
var kINQUIRY_Byte6_VS_Bit: Int { get }
var kINQUIRY_Byte6_ENCSERV_Bit: Int { get }
var kINQUIRY_Byte6_BQUE_Bit: Int { get }
var kINQUIRY_Byte6_ADDR16_Mask: Int { get }
var kINQUIRY_Byte6_MCHNGR_Mask: Int { get }
var kINQUIRY_Byte6_MULTIP_Mask: Int { get }
var kINQUIRY_Byte6_VS_Mask: Int { get }
var kINQUIRY_Byte6_ENCSERV_Mask: Int { get }
var kINQUIRY_Byte6_BQUE_Mask: Int { get }
var kINQUIRY_Byte7_Offset: Int { get }
var kINQUIRY_Byte7_VS_Bit: Int { get }
var kINQUIRY_Byte7_CMDQUE_Bit: Int { get }
var kINQUIRY_Byte7_TRANDIS_Bit: Int { get }
var kINQUIRY_Byte7_LINKED_Bit: Int { get }
var kINQUIRY_Byte7_SYNC_Bit: Int { get }
var kINQUIRY_Byte7_WBUS16_Bit: Int { get }
var kINQUIRY_Byte7_RELADR_Bit: Int { get }
var kINQUIRY_Byte7_VS_Mask: Int { get }
var kINQUIRY_Byte7_CMDQUE_Mask: Int { get }
var kINQUIRY_Byte7_TRANDIS_Mask: Int { get }
var kINQUIRY_Byte7_LINKED_Mask: Int { get }
var kINQUIRY_Byte7_SYNC_Mask: Int { get }
var kINQUIRY_Byte7_WBUS16_Mask: Int { get }
var kINQUIRY_Byte7_RELADR_Mask: Int { get }
var kINQUIRY_Byte56_Offset: Int { get }
var kINQUIRY_Byte56_IUS_Bit: Int { get }
var kINQUIRY_Byte56_QAS_Bit: Int { get }
var kINQUIRY_Byte56_IUS_Mask: Int { get }
var kINQUIRY_Byte56_QAS_Mask: Int { get }
var kINQUIRY_Byte56_CLOCKING_Mask: Int { get }
var kINQUIRY_Byte56_CLOCKING_ONLY_ST: Int { get }
var kINQUIRY_Byte56_CLOCKING_ONLY_DT: Int { get }
var kINQUIRY_Byte56_CLOCKING_ST_AND_DT: Int { get }
var kINQUIRY_VERSION_DESCRIPTOR_MaxCount: Int32 { get }
var kINQUIRY_VERSION_DESCRIPTOR_SAT: Int { get }
var kINQUIRY_VERSION_DESCRIPTOR_NVME: Int { get }
var kIOPropertySCSIPeripheralDeviceType: String { get }
var kIOPropertySCSIPeripheralDeviceTypeSize: Int32 { get }
var kIOPropertyTPGSInfo: String { get }
var kIOPropertyHiSup: String { get }
var kIOPropertyTPGSInfoSize: Int32 { get }
var kIOPropertySCSIVendorIdentification: String { get }
var kIOPropertySCSIProductIdentification: String { get }
var kIOPropertySCSIProductRevisionLevel: String { get }
var kINQUIRY_Page00_PageCode: Int { get }
var kINQUIRY_Page80_PageCode: Int { get }
var kINQUIRY_Page83_PageCode: Int { get }
var kINQUIRY_Page89_PageCode: Int { get }
var kINQUIRY_PageB0_PageCode: Int { get }
var kINQUIRY_PageB1_PageCode: Int { get }
var kINQUIRY_PageB2_PageCode: Int { get }
var kINQUIRY_PageC0_PageCode: Int { get }
var kINQUIRY_PageC1_PageCode: Int { get }
struct SCSICmd_INQUIRY_Page00_Header {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var RESERVED: UInt8
  var PAGE_LENGTH: UInt8
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, RESERVED: UInt8, PAGE_LENGTH: UInt8)
}
struct SCSICmd_INQUIRY_Page00_Header_SPC_16 {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt16
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, PAGE_LENGTH: UInt16)
}
struct SCSICmd_INQUIRY_Page80_Header {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var RESERVED: UInt8
  var PAGE_LENGTH: UInt8
  var PRODUCT_SERIAL_NUMBER: UInt8
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, RESERVED: UInt8, PAGE_LENGTH: UInt8, PRODUCT_SERIAL_NUMBER: UInt8)
}
struct SCSICmd_INQUIRY_Page80_Header_SPC_16 {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt16
  var PRODUCT_SERIAL_NUMBER: UInt8
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, PAGE_LENGTH: UInt16, PRODUCT_SERIAL_NUMBER: UInt8)
}
var kIOPropertySCSIINQUIRYUnitSerialNumber: String { get }
struct SCSICmd_INQUIRY_Page83_Header {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var RESERVED: UInt8
  var PAGE_LENGTH: UInt8
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, RESERVED: UInt8, PAGE_LENGTH: UInt8)
}
struct SCSICmd_INQUIRY_Page83_Header_SPC_16 {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt16
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, PAGE_LENGTH: UInt16)
}
struct SCSICmd_INQUIRY_Page83_Identification_Descriptor {
  var CODE_SET: UInt8
  var IDENTIFIER_TYPE: UInt8
  var RESERVED: UInt8
  var IDENTIFIER_LENGTH: UInt8
  var IDENTIFIER: UInt8
  init()
  init(CODE_SET: UInt8, IDENTIFIER_TYPE: UInt8, RESERVED: UInt8, IDENTIFIER_LENGTH: UInt8, IDENTIFIER: UInt8)
}
var kINQUIRY_Page83_CodeSetReserved: Int { get }
var kINQUIRY_Page83_CodeSetBinaryData: Int { get }
var kINQUIRY_Page83_CodeSetASCIIData: Int { get }
var kINQUIRY_Page83_CodeSetUTF8Data: Int { get }
var kINQUIRY_Page83_CodeSetMask: Int { get }
var kINQUIRY_Page83_AssociationLogicalUnit: Int { get }
var kINQUIRY_Page83_AssociationDevice: Int { get }
var kINQUIRY_Page83_AssociationTargetPort: Int { get }
var kINQUIRY_Page83_AssociationTargetDevice: Int { get }
var kINQUIRY_Page83_AssociationMask: Int { get }
var kINQUIRY_Page83_AssociationShift: Int { get }
var kINQUIRY_Page83_IdentifierTypeVendorSpecific: Int { get }
var kINQUIRY_Page83_IdentifierTypeVendorID: Int { get }
var kINQUIRY_Page83_IdentifierTypeIEEE_EUI64: Int { get }
var kINQUIRY_Page83_IdentifierTypeNAAIdentifier: Int { get }
var kINQUIRY_Page83_IdentifierTypeRelativePortIdentifier: Int { get }
var kINQUIRY_Page83_IdentifierTypeTargetPortGroup: Int { get }
var kINQUIRY_Page83_IdentifierTypeLogicalUnitGroup: Int { get }
var kINQUIRY_Page83_IdentifierTypeMD5LogicalUnitIdentifier: Int { get }
var kINQUIRY_Page83_IdentifierTypeSCSINameString: Int { get }
var kINQUIRY_Page83_IdentifierTypeMask: Int { get }
var kINQUIRY_Page83_ProtocolIdentifierValidBit: Int { get }
var kINQUIRY_Page83_ProtocolIdentifierValidMask: Int { get }
var kSCSIProtocolIdentifier_FibreChannel: Int { get }
var kSCSIProtocolIdentifier_ParallelSCSI: Int { get }
var kSCSIProtocolIdentifier_SSA: Int { get }
var kSCSIProtocolIdentifier_FireWire: Int { get }
var kSCSIProtocolIdentifier_RDMA: Int { get }
var kSCSIProtocolIdentifier_iSCSI: Int { get }
var kSCSIProtocolIdentifier_SAS: Int { get }
var kSCSIProtocolIdentifier_ADT: Int { get }
var kSCSIProtocolIdentifier_ATAPI: Int { get }
var kSCSIProtocolIdentifier_None: Int { get }
var kIOPropertySCSIINQUIRYDeviceIdentification: String { get }
var kIOPropertySCSIINQUIRYDeviceIdCodeSet: String { get }
var kIOPropertySCSIINQUIRYDeviceIdType: String { get }
var kIOPropertySCSIINQUIRYDeviceIdAssociation: String { get }
var kIOPropertySCSIINQUIRYDeviceIdentifier: String { get }
struct SCSICmd_INQUIRY_Page83_RelativeTargetPort_Identifier {
  var OBSOLETE: UInt16
  var RELATIVE_TARGET_PORT_IDENTIFIER: UInt16
  init()
  init(OBSOLETE: UInt16, RELATIVE_TARGET_PORT_IDENTIFIER: UInt16)
}
struct SCSICmd_INQUIRY_Page83_TargetPortGroup_Identifier {
  var RESERVED: UInt16
  var TARGET_PORT_GROUP: UInt16
  init()
  init(RESERVED: UInt16, TARGET_PORT_GROUP: UInt16)
}
struct SCSICmd_INQUIRY_Page83_LogicalUnitGroup_Identifier {
  var RESERVED: UInt16
  var LOGICAL_UNIT_GROUP: UInt16
  init()
  init(RESERVED: UInt16, LOGICAL_UNIT_GROUP: UInt16)
}
struct SCSICmd_INQUIRY_Page89_Data {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt16
  var Reserved: UInt32
  var SAT_VENDOR_IDENTIFICATION: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var SAT_PRODUCT_IDENTIFICATION: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var SAT_PRODUCT_REVISION_LEVEL: (UInt8, UInt8, UInt8, UInt8)
  var ATA_DEVICE_SIGNATURE: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var COMMAND_CODE: UInt8
  var Reserved2: (UInt8, UInt8, UInt8)
  var IDENTIFY_DATA: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, PAGE_LENGTH: UInt16, Reserved: UInt32, SAT_VENDOR_IDENTIFICATION: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), SAT_PRODUCT_IDENTIFICATION: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), SAT_PRODUCT_REVISION_LEVEL: (UInt8, UInt8, UInt8, UInt8), ATA_DEVICE_SIGNATURE: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), COMMAND_CODE: UInt8, Reserved2: (UInt8, UInt8, UInt8), IDENTIFY_DATA: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
struct SCSICmd_INQUIRY_PageB0_Data {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt16
  var WSNZ: UInt8
  var MAXIMUM_COMPARE_AND_WRITE_LENGTH: UInt8
  var OPTIMAL_TRANSFER_LENGTH_GRANULARITY: UInt16
  var MAXIMUM_TRANSFER_LENGTH: UInt32
  var OPTIMAL_TRANSFER_LENGTH: UInt32
  var MAXIMUM_PREFETCH_LENGTH: UInt32
  var MAXIMUM_UNMAP_LBA_COUNT: UInt32
  var MAXIMUM_UNMAP_BLOCK_DESCRIPTOR_COUNT: UInt32
  var OPTIMAL_UNMAP_GRANULARITY: UInt32
  var UNMAP_GRANULARITY_ALIGNMENT: UInt32
  var MAXIMUM_WRITE_SAME_LENGTH: UInt64
  var MAXIMUM_ATOMIC_TRANSFER_LENGTH: UInt32
  var ATOMIC_ALIGNMENT: UInt32
  var ATOMIC_TRANSFER_LENGTH_GRANULARITY: UInt32
  var MAXIMUM_ATOMIC_TRANSFER_LENGTH_WITH_ATOMIC_BOUNDARY: UInt32
  var MAXIMUM_ATOMIC_BOUNDARY_SIZE: UInt32
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, PAGE_LENGTH: UInt16, WSNZ: UInt8, MAXIMUM_COMPARE_AND_WRITE_LENGTH: UInt8, OPTIMAL_TRANSFER_LENGTH_GRANULARITY: UInt16, MAXIMUM_TRANSFER_LENGTH: UInt32, OPTIMAL_TRANSFER_LENGTH: UInt32, MAXIMUM_PREFETCH_LENGTH: UInt32, MAXIMUM_UNMAP_LBA_COUNT: UInt32, MAXIMUM_UNMAP_BLOCK_DESCRIPTOR_COUNT: UInt32, OPTIMAL_UNMAP_GRANULARITY: UInt32, UNMAP_GRANULARITY_ALIGNMENT: UInt32, MAXIMUM_WRITE_SAME_LENGTH: UInt64, MAXIMUM_ATOMIC_TRANSFER_LENGTH: UInt32, ATOMIC_ALIGNMENT: UInt32, ATOMIC_TRANSFER_LENGTH_GRANULARITY: UInt32, MAXIMUM_ATOMIC_TRANSFER_LENGTH_WITH_ATOMIC_BOUNDARY: UInt32, MAXIMUM_ATOMIC_BOUNDARY_SIZE: UInt32)
}
struct SCSICmd_INQUIRY_PageB1_Data {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var Reserved: UInt8
  var PAGE_LENGTH: UInt8
  var MEDIUM_ROTATION_RATE: UInt16
  var Reserved2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, Reserved: UInt8, PAGE_LENGTH: UInt8, MEDIUM_ROTATION_RATE: UInt16, Reserved2: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
var kINQUIRY_PageB1_Page_Length: Int { get }
struct SCSICmd_INQUIRY_PageB2_Data {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt16
  var THRESHOLD_EXPONENT: UInt8
  var LBP_FLAGS: UInt8
  var MINIMUM_PERCENTAGE: UInt8
  var THRESHOLD_PERCENTAGE: UInt8
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, PAGE_LENGTH: UInt16, THRESHOLD_EXPONENT: UInt8, LBP_FLAGS: UInt8, MINIMUM_PERCENTAGE: UInt8, THRESHOLD_PERCENTAGE: UInt8)
}
struct SCSICmd_INQUIRY_PageB2_Provisioning_Group_Descriptor {
  var DESIGNATION_DESCRIPTOR: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var RESERVED: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(DESIGNATION_DESCRIPTOR: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), RESERVED: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
var kC0DataMaxStringLen: Int { get }
var kINQUIRY_PageC0_Features_HasSEP_LUN: Int { get }
struct SCSICmd_INQUIRY_PageCx_Header {
  var PERIPHERAL_DEVICE_TYPE: UInt8
  var PAGE_CODE: UInt8
  var RESERVED: UInt8
  var PAGE_LENGTH: UInt8
  init()
  init(PERIPHERAL_DEVICE_TYPE: UInt8, PAGE_CODE: UInt8, RESERVED: UInt8, PAGE_LENGTH: UInt8)
}
typealias SCSICmd_INQUIRY_PAGECx_Header = SCSICmd_INQUIRY_PageCx_Header
struct SCSICmd_INQUIRY_PageC0_Data {
  var fHeader: SCSICmd_INQUIRY_PAGECx_Header
  var fTdmPageVersion: UInt8
  var fTdmProtocolVersion: UInt8
  var fReserved1: UInt8
  var fReserved2: UInt8
  var fMacModelId: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var fSerialNumber: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  var fMaxReadSize: UInt32
  var fMaxWriteSize: UInt32
  var fNativeBlockSize: UInt32
  var fPreferredIOSize: UInt32
  var fFeatures: UInt64
  var fWorkArounds: UInt64
  var fEncryptionType: UInt16
  var fReserved3: (UInt8, UInt8)
  var fInstalledRAMSize: UInt64
  init()
  init(fHeader: SCSICmd_INQUIRY_PAGECx_Header, fTdmPageVersion: UInt8, fTdmProtocolVersion: UInt8, fReserved1: UInt8, fReserved2: UInt8, fMacModelId: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), fSerialNumber: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), fMaxReadSize: UInt32, fMaxWriteSize: UInt32, fNativeBlockSize: UInt32, fPreferredIOSize: UInt32, fFeatures: UInt64, fWorkArounds: UInt64, fEncryptionType: UInt16, fReserved3: (UInt8, UInt8), fInstalledRAMSize: UInt64)
}
struct SCSICmd_INQUIRY_PageC1_Data {
  var fHeader: SCSICmd_INQUIRY_PAGECx_Header
  var fTdmPowerRequirementsPageVersion: UInt8
  var fReserved1: UInt8
  var fReserved2: UInt16
  var fPowerRequired: UInt32
  init()
  init(fHeader: SCSICmd_INQUIRY_PAGECx_Header, fTdmPowerRequirementsPageVersion: UInt8, fReserved1: UInt8, fReserved2: UInt16, fPowerRequired: UInt32)
}
var kIOPropertySATVendorIdentification: String { get }
var kIOPropertySATProductIdentification: String { get }
var kIOPropertySATProductRevisonLevel: String { get }
typealias SCSICmdField1Bit = UInt8
typealias SCSICmdField2Bit = UInt8
typealias SCSICmdField3Bit = UInt8
typealias SCSICmdField4Bit = UInt8
typealias SCSICmdField5Bit = UInt8
typealias SCSICmdField6Bit = UInt8
typealias SCSICmdField7Bit = UInt8
typealias SCSICmdField1Byte = UInt8
typealias SCSICmdField9Bit = UInt16
typealias SCSICmdField10Bit = UInt16
typealias SCSICmdField11Bit = UInt16
typealias SCSICmdField12Bit = UInt16
typealias SCSICmdField13Bit = UInt16
typealias SCSICmdField14Bit = UInt16
typealias SCSICmdField15Bit = UInt16
typealias SCSICmdField2Byte = UInt16
typealias SCSICmdField17Bit = UInt32
typealias SCSICmdField18Bit = UInt32
typealias SCSICmdField19Bit = UInt32
typealias SCSICmdField20Bit = UInt32
typealias SCSICmdField21Bit = UInt32
typealias SCSICmdField22Bit = UInt32
typealias SCSICmdField23Bit = UInt32
typealias SCSICmdField3Byte = UInt32
typealias SCSICmdField25Bit = UInt32
typealias SCSICmdField26Bit = UInt32
typealias SCSICmdField27Bit = UInt32
typealias SCSICmdField28Bit = UInt32
typealias SCSICmdField29Bit = UInt32
typealias SCSICmdField30Bit = UInt32
typealias SCSICmdField31Bit = UInt32
typealias SCSICmdField4Byte = UInt32
typealias SCSICmdField33Bit = UInt64
typealias SCSICmdField34Bit = UInt64
typealias SCSICmdField35Bit = UInt64
typealias SCSICmdField36Bit = UInt64
typealias SCSICmdField37Bit = UInt64
typealias SCSICmdField38Bit = UInt64
typealias SCSICmdField39Bit = UInt64
typealias SCSICmdField5Byte = UInt64
typealias SCSICmdField41Bit = UInt64
typealias SCSICmdField42Bit = UInt64
typealias SCSICmdField43Bit = UInt64
typealias SCSICmdField44Bit = UInt64
typealias SCSICmdField45Bit = UInt64
typealias SCSICmdField46Bit = UInt64
typealias SCSICmdField47Bit = UInt64
typealias SCSICmdField6Byte = UInt64
typealias SCSICmdField49Bit = UInt64
typealias SCSICmdField50Bit = UInt64
typealias SCSICmdField51Bit = UInt64
typealias SCSICmdField52Bit = UInt64
typealias SCSICmdField53Bit = UInt64
typealias SCSICmdField54Bit = UInt64
typealias SCSICmdField55Bit = UInt64
typealias SCSICmdField7Byte = UInt64
typealias SCSICmdField57Bit = UInt64
typealias SCSICmdField58Bit = UInt64
typealias SCSICmdField59Bit = UInt64
typealias SCSICmdField60Bit = UInt64
typealias SCSICmdField61Bit = UInt64
typealias SCSICmdField62Bit = UInt64
typealias SCSICmdField63Bit = UInt64
typealias SCSICmdField8Byte = UInt64
var kSCSICmdFieldMask1Bit: Int32 { get }
var kSCSICmdFieldMask2Bit: Int32 { get }
var kSCSICmdFieldMask3Bit: Int32 { get }
var kSCSICmdFieldMask4Bit: Int32 { get }
var kSCSICmdFieldMask5Bit: Int32 { get }
var kSCSICmdFieldMask6Bit: Int32 { get }
var kSCSICmdFieldMask7Bit: Int32 { get }
var kSCSICmdFieldMask1Byte: Int32 { get }
var kSCSICmdFieldMask9Bit: Int32 { get }
var kSCSICmdFieldMask10Bit: Int32 { get }
var kSCSICmdFieldMask11Bit: Int32 { get }
var kSCSICmdFieldMask12Bit: Int32 { get }
var kSCSICmdFieldMask13Bit: Int32 { get }
var kSCSICmdFieldMask14Bit: Int32 { get }
var kSCSICmdFieldMask15Bit: Int32 { get }
var kSCSICmdFieldMask2Byte: Int32 { get }
var kSCSICmdFieldMask17Bit: Int32 { get }
var kSCSICmdFieldMask18Bit: Int32 { get }
var kSCSICmdFieldMask19Bit: Int32 { get }
var kSCSICmdFieldMask20Bit: Int32 { get }
var kSCSICmdFieldMask21Bit: Int32 { get }
var kSCSICmdFieldMask22Bit: Int32 { get }
var kSCSICmdFieldMask23Bit: Int32 { get }
var kSCSICmdFieldMask3Byte: Int32 { get }
var kSCSICmdFieldMask25Bit: UInt { get }
var kSCSICmdFieldMask26Bit: UInt { get }
var kSCSICmdFieldMask27Bit: UInt { get }
var kSCSICmdFieldMask28Bit: UInt { get }
var kSCSICmdFieldMask29Bit: UInt { get }
var kSCSICmdFieldMask30Bit: UInt { get }
var kSCSICmdFieldMask31Bit: UInt { get }
var kSCSICmdFieldMask4Byte: UInt { get }
var kSCSICmdFieldMask33Bit: UInt64 { get }
var kSCSICmdFieldMask34Bit: UInt64 { get }
var kSCSICmdFieldMask35Bit: UInt64 { get }
var kSCSICmdFieldMask36Bit: UInt64 { get }
var kSCSICmdFieldMask37Bit: UInt64 { get }
var kSCSICmdFieldMask38Bit: UInt64 { get }
var kSCSICmdFieldMask39Bit: UInt64 { get }
var kSCSICmdFieldMask5Byte: UInt64 { get }
var kSCSICmdFieldMask41Bit: UInt64 { get }
var kSCSICmdFieldMask42Bit: UInt64 { get }
var kSCSICmdFieldMask43Bit: UInt64 { get }
var kSCSICmdFieldMask44Bit: UInt64 { get }
var kSCSICmdFieldMask45Bit: UInt64 { get }
var kSCSICmdFieldMask46Bit: UInt64 { get }
var kSCSICmdFieldMask47Bit: UInt64 { get }
var kSCSICmdFieldMask6Byte: UInt64 { get }
var kSCSICmdFieldMask49Bit: UInt64 { get }
var kSCSICmdFieldMask50Bit: UInt64 { get }
var kSCSICmdFieldMask51Bit: UInt64 { get }
var kSCSICmdFieldMask52Bit: UInt64 { get }
var kSCSICmdFieldMask53Bit: UInt64 { get }
var kSCSICmdFieldMask54Bit: UInt64 { get }
var kSCSICmdFieldMask55Bit: UInt64 { get }
var kSCSICmdFieldMask7Byte: UInt64 { get }
var kSCSICmdFieldMask57Bit: UInt64 { get }
var kSCSICmdFieldMask58Bit: UInt64 { get }
var kSCSICmdFieldMask59Bit: UInt64 { get }
var kSCSICmdFieldMask60Bit: UInt64 { get }
var kSCSICmdFieldMask61Bit: UInt64 { get }
var kSCSICmdFieldMask62Bit: UInt64 { get }
var kSCSICmdFieldMask63Bit: UInt64 { get }
var kSCSICmdFieldMask8Byte: UInt64 { get }
struct SPCModeParameterHeader6 {
  var MODE_DATA_LENGTH: UInt8
  var MEDIUM_TYPE: UInt8
  var DEVICE_SPECIFIC_PARAMETER: UInt8
  var BLOCK_DESCRIPTOR_LENGTH: UInt8
  init()
  init(MODE_DATA_LENGTH: UInt8, MEDIUM_TYPE: UInt8, DEVICE_SPECIFIC_PARAMETER: UInt8, BLOCK_DESCRIPTOR_LENGTH: UInt8)
}
struct SPCModeParameterHeader10 {
  var MODE_DATA_LENGTH: UInt16
  var MEDIUM_TYPE: UInt8
  var DEVICE_SPECIFIC_PARAMETER: UInt8
  var LONGLBA: UInt8
  var RESERVED: UInt8
  var BLOCK_DESCRIPTOR_LENGTH: UInt16
  init()
  init(MODE_DATA_LENGTH: UInt16, MEDIUM_TYPE: UInt8, DEVICE_SPECIFIC_PARAMETER: UInt8, LONGLBA: UInt8, RESERVED: UInt8, BLOCK_DESCRIPTOR_LENGTH: UInt16)
}
var kModeSenseParameterHeader10_LongLBABit: Int { get }
var kModeSenseParameterHeader10_LongLBAMask: Int { get }
var kModeSenseSBCDeviceSpecific_DPOFUABit: Int { get }
var kModeSenseSBCDeviceSpecific_WriteProtectBit: Int { get }
var kModeSenseSBCDeviceSpecific_DPOFUAMask: Int { get }
var kModeSenseSBCDeviceSpecific_WriteProtectMask: Int { get }
struct ModeParameterBlockDescriptor {
  var DENSITY_CODE: UInt8
  var NUMBER_OF_BLOCKS: (UInt8, UInt8, UInt8)
  var RESERVED: UInt8
  var BLOCK_LENGTH: (UInt8, UInt8, UInt8)
  init()
  init(DENSITY_CODE: UInt8, NUMBER_OF_BLOCKS: (UInt8, UInt8, UInt8), RESERVED: UInt8, BLOCK_LENGTH: (UInt8, UInt8, UInt8))
}
struct DASDModeParameterBlockDescriptor {
  var NUMBER_OF_BLOCKS: UInt32
  var DENSITY_CODE: UInt8
  var BLOCK_LENGTH: (UInt8, UInt8, UInt8)
  init()
  init(NUMBER_OF_BLOCKS: UInt32, DENSITY_CODE: UInt8, BLOCK_LENGTH: (UInt8, UInt8, UInt8))
}
struct LongLBAModeParameterBlockDescriptor {
  var NUMBER_OF_BLOCKS: UInt64
  var DENSITY_CODE: UInt8
  var RESERVED: (UInt8, UInt8, UInt8)
  var BLOCK_LENGTH: UInt32
  init()
  init(NUMBER_OF_BLOCKS: UInt64, DENSITY_CODE: UInt8, RESERVED: (UInt8, UInt8, UInt8), BLOCK_LENGTH: UInt32)
}
struct ModePageFormatHeader {
  var PS_PAGE_CODE: UInt8
  var PAGE_LENGTH: UInt8
  init()
  init(PS_PAGE_CODE: UInt8, PAGE_LENGTH: UInt8)
}
var kModePageFormat_PS_Bit: Int { get }
var kModePageFormat_PAGE_CODE_Mask: Int { get }
var kModePageFormat_PS_Mask: Int { get }
var kSPCModePagePowerConditionCode: Int { get }
var kSPCModePageAllPagesCode: Int { get }
struct SPCModePagePowerCondition {
  var header: ModePageFormatHeader
  var RESERVED: UInt8
  var IDLE_STANDBY: UInt8
  var IDLE_CONDITION_TIMER: UInt32
  var STANDBY_CONDITION_TIMER: UInt32
  init()
  init(header: ModePageFormatHeader, RESERVED: UInt8, IDLE_STANDBY: UInt8, IDLE_CONDITION_TIMER: UInt32, STANDBY_CONDITION_TIMER: UInt32)
}
var kSBCModePageFormatDeviceCode: Int { get }
var kSBCModePageRigidDiskGeometryCode: Int { get }
var kSBCModePageFlexibleDiskCode: Int { get }
var kSBCModePageCachingCode: Int { get }
struct SBCModePageFormatDevice {
  var header: ModePageFormatHeader
  var TRACKS_PER_ZONE: UInt16
  var ALTERNATE_SECTORS_PER_ZONE: UInt16
  var ALTERNATE_TRACKS_PER_ZONE: UInt16
  var ALTERNATE_TRACKS_PER_LOGICAL_UNIT: UInt16
  var SECTORS_PER_TRACK: UInt16
  var DATA_BYTES_PER_PHYSICAL_SECTOR: UInt16
  var INTERLEAVE: UInt16
  var TRACK_SKEW_FACTOR: UInt16
  var CYLINDER_SKEW_FACTOR: UInt16
  var SSEC_HSEC_RMB_SURF: UInt8
  var RESERVED: (UInt8, UInt8, UInt8)
  init()
  init(header: ModePageFormatHeader, TRACKS_PER_ZONE: UInt16, ALTERNATE_SECTORS_PER_ZONE: UInt16, ALTERNATE_TRACKS_PER_ZONE: UInt16, ALTERNATE_TRACKS_PER_LOGICAL_UNIT: UInt16, SECTORS_PER_TRACK: UInt16, DATA_BYTES_PER_PHYSICAL_SECTOR: UInt16, INTERLEAVE: UInt16, TRACK_SKEW_FACTOR: UInt16, CYLINDER_SKEW_FACTOR: UInt16, SSEC_HSEC_RMB_SURF: UInt8, RESERVED: (UInt8, UInt8, UInt8))
}
struct SBCModePageRigidDiskGeometry {
  var header: ModePageFormatHeader
  var NUMBER_OF_CYLINDERS: (UInt8, UInt8, UInt8)
  var NUMBER_OF_HEADS: UInt8
  var STARTING_CYLINDER_WRITE_PRECOMPENSATION: (UInt8, UInt8, UInt8)
  var STARTING_CYLINDER_REDUCED_WRITE_CURRENT: (UInt8, UInt8, UInt8)
  var DEVICE_STEP_RATE: UInt16
  var LANDING_ZONE_CYLINDER: (UInt8, UInt8, UInt8)
  var RPL: UInt8
  var ROTATIONAL_OFFSET: UInt8
  var RESERVED: UInt8
  var MEDIUM_ROTATION_RATE: UInt16
  var RESERVED1: (UInt8, UInt8)
  init()
  init(header: ModePageFormatHeader, NUMBER_OF_CYLINDERS: (UInt8, UInt8, UInt8), NUMBER_OF_HEADS: UInt8, STARTING_CYLINDER_WRITE_PRECOMPENSATION: (UInt8, UInt8, UInt8), STARTING_CYLINDER_REDUCED_WRITE_CURRENT: (UInt8, UInt8, UInt8), DEVICE_STEP_RATE: UInt16, LANDING_ZONE_CYLINDER: (UInt8, UInt8, UInt8), RPL: UInt8, ROTATIONAL_OFFSET: UInt8, RESERVED: UInt8, MEDIUM_ROTATION_RATE: UInt16, RESERVED1: (UInt8, UInt8))
}
var kSBCModePageRigidDiskGeometry_RPL_Mask: Int { get }
struct SBCModePageFlexibleDisk {
  var header: ModePageFormatHeader
  var TRANSFER_RATE: UInt16
  var NUMBER_OF_HEADS: UInt8
  var SECTORS_PER_TRACK: UInt8
  var DATA_BYTES_PER_SECTOR: UInt16
  var NUMBER_OF_CYLINDERS: UInt16
  var STARTING_CYLINDER_WRITE_PRECOMPENSATION: UInt16
  var STARTING_CYLINDER_REDUCED_WRITE_CURRENT: UInt16
  var DEVICE_STEP_RATE: UInt16
  var DEVICE_STEP_PULSE_WIDTH: UInt8
  var HEAD_SETTLE_DELAY: UInt16
  var MOTOR_ON_DELAY: UInt8
  var MOTOR_OFF_DELAY: UInt8
  var TRDY_SSN_MO: UInt8
  var SPC: UInt8
  var WRITE_COMPENSATION: UInt8
  var HEAD_LOAD_DELAY: UInt8
  var HEAD_UNLOAD_DELAY: UInt8
  var PIN_34_PIN_2: UInt8
  var PIN_4_PIN_1: UInt8
  var MEDIUM_ROTATION_RATE: UInt16
  var RESERVED: (UInt8, UInt8)
  init()
  init(header: ModePageFormatHeader, TRANSFER_RATE: UInt16, NUMBER_OF_HEADS: UInt8, SECTORS_PER_TRACK: UInt8, DATA_BYTES_PER_SECTOR: UInt16, NUMBER_OF_CYLINDERS: UInt16, STARTING_CYLINDER_WRITE_PRECOMPENSATION: UInt16, STARTING_CYLINDER_REDUCED_WRITE_CURRENT: UInt16, DEVICE_STEP_RATE: UInt16, DEVICE_STEP_PULSE_WIDTH: UInt8, HEAD_SETTLE_DELAY: UInt16, MOTOR_ON_DELAY: UInt8, MOTOR_OFF_DELAY: UInt8, TRDY_SSN_MO: UInt8, SPC: UInt8, WRITE_COMPENSATION: UInt8, HEAD_LOAD_DELAY: UInt8, HEAD_UNLOAD_DELAY: UInt8, PIN_34_PIN_2: UInt8, PIN_4_PIN_1: UInt8, MEDIUM_ROTATION_RATE: UInt16, RESERVED: (UInt8, UInt8))
}
var kSBCModePageFlexibleDisk_MO_Bit: Int { get }
var kSBCModePageFlexibleDisk_SSN_Bit: Int { get }
var kSBCModePageFlexibleDisk_TRDY_Bit: Int { get }
var kSBCModePageFlexibleDisk_MO_Mask: Int { get }
var kSBCModePageFlexibleDisk_SSN_Mask: Int { get }
var kSBCModePageFlexibleDisk_TRDY_Mask: Int { get }
var kSBCModePageFlexibleDisk_SPC_Mask: Int { get }
var kSBCModePageFlexibleDisk_PIN_2_Mask: Int { get }
var kSBCModePageFlexibleDisk_PIN_34_Mask: Int { get }
var kSBCModePageFlexibleDisk_PIN_1_Mask: Int { get }
var kSBCModePageFlexibleDisk_PIN_4_Mask: Int { get }
struct SBCModePageCaching {
  var header: ModePageFormatHeader
  var flags: UInt8
  var DEMAND_READ_WRITE_RETENTION_PRIORITY: UInt8
  var DISABLE_PREFETCH_TRANSFER_LENGTH: UInt16
  var MINIMUM_PREFETCH: UInt16
  var MAXIMUM_PREFETCH: UInt16
  var MAXIMUM_PREFETCH_CEILING: UInt16
  var flags2: UInt8
  var NUMBER_OF_CACHE_SEGMENTS: UInt8
  var CACHE_SEGMENT_SIZE: UInt16
  var RESERVED: UInt8
  var NON_CACHE_SEGMENT_SIZE: (UInt8, UInt8, UInt8)
  init()
  init(header: ModePageFormatHeader, flags: UInt8, DEMAND_READ_WRITE_RETENTION_PRIORITY: UInt8, DISABLE_PREFETCH_TRANSFER_LENGTH: UInt16, MINIMUM_PREFETCH: UInt16, MAXIMUM_PREFETCH: UInt16, MAXIMUM_PREFETCH_CEILING: UInt16, flags2: UInt8, NUMBER_OF_CACHE_SEGMENTS: UInt8, CACHE_SEGMENT_SIZE: UInt16, RESERVED: UInt8, NON_CACHE_SEGMENT_SIZE: (UInt8, UInt8, UInt8))
}
var kSBCModePageCaching_RCD_Bit: Int { get }
var kSBCModePageCaching_MF_Bit: Int { get }
var kSBCModePageCaching_WCE_Bit: Int { get }
var kSBCModePageCaching_SIZE_Bit: Int { get }
var kSBCModePageCaching_DISC_Bit: Int { get }
var kSBCModePageCaching_CAP_Bit: Int { get }
var kSBCModePageCaching_ABPF_Bit: Int { get }
var kSBCModePageCaching_IC_Bit: Int { get }
var kSBCModePageCaching_RCD_Mask: Int { get }
var kSBCModePageCaching_MF_Mask: Int { get }
var kSBCModePageCaching_WCE_Mask: Int { get }
var kSBCModePageCaching_SIZE_Mask: Int { get }
var kSBCModePageCaching_DISC_Mask: Int { get }
var kSBCModePageCaching_CAP_Mask: Int { get }
var kSBCModePageCaching_ABPF_Mask: Int { get }
var kSBCModePageCaching_IC_Mask: Int { get }
var kSBCModePageCaching_DEMAND_WRITE_Mask: Int { get }
var kSBCModePageCaching_DEMAND_READ_Mask: Int { get }
var kSBCModePageCaching_VS1_Bit: Int { get }
var kSBCModePageCaching_VS2_Bit: Int { get }
var kSBCModePageCaching_DRA_Bit: Int { get }
var kSBCModePageCaching_LBCSS_Bit: Int { get }
var kSBCModePageCaching_FSW_Bit: Int { get }
var kSBCModePageCaching_VS1_Mask: Int { get }
var kSBCModePageCaching_VS2_Mask: Int { get }
var kSBCModePageCaching_DRA_Mask: Int { get }
var kSBCModePageCaching_LBCSS_Mask: Int { get }
var kSBCModePageCaching_FSW_Mask: Int { get }
var kSCSICmd_ACCESS_CONTROL_IN: Int { get }
var kSCSICmd_ACCESS_CONTROL_OUT: Int { get }
var kSCSICmd_BLANK: Int { get }
var kSCSICmd_CHANGE_DEFINITION: Int { get }
var kSCSICmd_CLOSE_TRACK_SESSION: Int { get }
var kSCSICmd_COMPARE: Int { get }
var kSCSICmd_COPY: Int { get }
var kSCSICmd_COPY_AND_VERIFY: Int { get }
var kSCSICmd_ERASE_10: Int { get }
var kSCSICmd_ERASE_12: Int { get }
var kSCSICmd_EXTENDED_COPY: Int { get }
var kSCSICmd_FORMAT_UNIT: Int { get }
var kSCSICmd_GET_CONFIGURATION: Int { get }
var kSCSICmd_GET_EVENT_STATUS_NOTIFICATION: Int { get }
var kSCSICmd_GET_PERFORMANCE: Int { get }
var kSCSICmd_INQUIRY: Int { get }
var kSCSICmd_LOAD_UNLOAD_MEDIUM: Int { get }
var kSCSICmd_LOCK_UNLOCK_CACHE: Int { get }
var kSCSICmd_LOCK_UNLOCK_CACHE_16: Int { get }
var kSCSICmd_LOG_SELECT: Int { get }
var kSCSICmd_LOG_SENSE: Int { get }
var kSCSICmd_MAINTENANCE_IN: Int { get }
var kSCSICmd_MAINTENANCE_OUT: Int { get }
var kSCSICmd_MECHANISM_STATUS: Int { get }
var kSCSICmd_MEDIUM_SCAN: Int { get }
var kSCSICmd_MODE_SELECT_6: Int { get }
var kSCSICmd_MODE_SELECT_10: Int { get }
var kSCSICmd_MODE_SENSE_6: Int { get }
var kSCSICmd_MODE_SENSE_10: Int { get }
var kSCSICmd_MOVE_MEDIUM_ATTACHED: Int { get }
var kSCSICmd_PAUSE_RESUME: Int { get }
var kSCSICmd_PERSISTENT_RESERVE_IN: Int { get }
var kSCSICmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSCSICmd_PLAY_AUDIO_10: Int { get }
var kSCSICmd_PLAY_AUDIO_12: Int { get }
var kSCSICmd_PLAY_AUDIO_MSF: Int { get }
var kSCSICmd_PLAY_AUDIO_TRACK_INDEX: Int { get }
var kSCSICmd_PLAY_CD: Int { get }
var kSCSICmd_PLAY_RELATIVE_10: Int { get }
var kSCSICmd_PLAY_RELATIVE_12: Int { get }
var kSCSICmd_PREFETCH: Int { get }
var kSCSICmd_PREFETCH_16: Int { get }
var kSCSICmd_PREVENT_ALLOW_MEDIUM_REMOVAL: Int { get }
var kSCSICmd_READ_6: Int { get }
var kSCSICmd_READ_10: Int { get }
var kSCSICmd_READ_12: Int { get }
var kSCSICmd_READ_16: Int { get }
var kSCSICmd_READ_ATTRIBUTE: Int { get }
var kSCSICmd_READ_BUFFER: Int { get }
var kSCSICmd_READ_BUFFER_CAPACITY: Int { get }
var kSCSICmd_READ_CAPACITY: Int { get }
var kSCSICmd_READ_CD: Int { get }
var kSCSICmd_READ_CD_MSF: Int { get }
var kSCSICmd_READ_DEFECT_DATA_10: Int { get }
var kSCSICmd_READ_DEFECT_DATA_12: Int { get }
var kSCSICmd_READ_DISC_INFORMATION: Int { get }
var kSCSICmd_READ_DVD_STRUCTURE: Int { get }
var kSCSICmd_READ_DISC_STRUCTURE: Int { get }
var kSCSICmd_READ_ELEMENT_STATUS_ATTACHED: Int { get }
var kSCSICmd_READ_FORMAT_CAPACITIES: Int { get }
var kSCSICmd_READ_GENERATION: Int { get }
var kSCSICmd_READ_HEADER: Int { get }
var kSCSICmd_READ_LONG: Int { get }
var kSCSICmd_READ_MASTER_CUE: Int { get }
var kSCSICmd_READ_SUB_CHANNEL: Int { get }
var kSCSICmd_READ_TOC_PMA_ATIP: Int { get }
var kSCSICmd_READ_TRACK_INFORMATION: Int { get }
var kSCSICmd_READ_UPDATED_BLOCK_10: Int { get }
var kSCSICmd_REASSIGN_BLOCKS: Int { get }
var kSCSICmd_REBUILD: Int { get }
var kSCSICmd_RECEIVE: Int { get }
var kSCSICmd_RECEIVE_COPY_RESULTS: Int { get }
var kSCSICmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSCSICmd_REDUNDANCY_GROUP_IN: Int { get }
var kSCSICmd_REDUNDANCY_GROUP_OUT: Int { get }
var kSCSICmd_REGENERATE: Int { get }
var kSCSICmd_RELEASE_6: Int { get }
var kSCSICmd_RELEASE_10: Int { get }
var kSCSICmd_REPAIR_TRACK: Int { get }
var kSCSICmd_REPORT_DEVICE_IDENTIFIER: Int { get }
var kSCSICmd_REPORT_KEY: Int { get }
var kSCSICmd_REPORT_LUNS: Int { get }
var kSCSICmd_REQUEST_SENSE: Int { get }
var kSCSICmd_RESERVE_6: Int { get }
var kSCSICmd_RESERVE_10: Int { get }
var kSCSICmd_RESERVE_TRACK: Int { get }
var kSCSICmd_REZERO_UNIT: Int { get }
var kSCSICmd_SCAN_MMC: Int { get }
var kSCSICmd_SEARCH_DATA_EQUAL_10: Int { get }
var kSCSICmd_SEARCH_DATA_EQUAL_12: Int { get }
var kSCSICmd_SEARCH_DATA_HIGH_10: Int { get }
var kSCSICmd_SEARCH_DATA_HIGH_12: Int { get }
var kSCSICmd_SEARCH_DATA_LOW_10: Int { get }
var kSCSICmd_SEARCH_DATA_LOW_12: Int { get }
var kSCSICmd_SEEK_6: Int { get }
var kSCSICmd_SEEK_10: Int { get }
var kSCSICmd_SEND: Int { get }
var kSCSICmd_SEND_CUE_SHEET: Int { get }
var kSCSICmd_SEND_DIAGNOSTICS: Int { get }
var kSCSICmd_SEND_DVD_STRUCTURE: Int { get }
var kSCSICmd_SEND_EVENT: Int { get }
var kSCSICmd_SEND_KEY: Int { get }
var kSCSICmd_SEND_OPC_INFORMATION: Int { get }
var kSCSICmd_SERVICE_ACTION_IN: Int { get }
var kSCSICmd_SERVICE_ACTION_OUT: Int { get }
var kSCSICmd_SET_CD_SPEED: Int { get }
var kSCSICmd_SET_DEVICE_IDENTIFIER: Int { get }
var kSCSICmd_SET_LIMITS_10: Int { get }
var kSCSICmd_SET_LIMITS_12: Int { get }
var kSCSICmd_SET_READ_AHEAD: Int { get }
var kSCSICmd_SET_STREAMING: Int { get }
var kSCSICmd_SPARE_IN: Int { get }
var kSCSICmd_SPARE_OUT: Int { get }
var kSCSICmd_START_STOP_UNIT: Int { get }
var kSCSICmd_STOP_PLAY_SCAN: Int { get }
var kSCSICmd_SYNCHRONIZE_CACHE: Int { get }
var kSCSICmd_SYNCHRONIZE_CACHE_16: Int { get }
var kSCSICmd_TEST_UNIT_READY: Int { get }
var kSCSICmd_UPDATE_BLOCK: Int { get }
var kSCSICmd_UNMAP: Int { get }
var kSCSICmd_VERIFY_10: Int { get }
var kSCSICmd_VERIFY_12: Int { get }
var kSCSICmd_VERIFY_16: Int { get }
var kSCSICmd_VOLUME_SET_IN: Int { get }
var kSCSICmd_VOLUME_SET_OUT: Int { get }
var kSCSICmd_WRITE_6: Int { get }
var kSCSICmd_WRITE_10: Int { get }
var kSCSICmd_WRITE_12: Int { get }
var kSCSICmd_WRITE_16: Int { get }
var kSCSICmd_WRITE_AND_VERIFY_10: Int { get }
var kSCSICmd_WRITE_AND_VERIFY_12: Int { get }
var kSCSICmd_WRITE_AND_VERIFY_16: Int { get }
var kSCSICmd_WRITE_ATTRIBUTE: Int { get }
var kSCSICmd_WRITE_BUFFER: Int { get }
var kSCSICmd_WRITE_LONG: Int { get }
var kSCSICmd_WRITE_SAME: Int { get }
var kSCSICmd_WRITE_SAME_16: Int { get }
var kSCSICmd_XDREAD: Int { get }
var kSCSICmd_XDWRITE: Int { get }
var kSCSICmd_XDWRITE_EXTENDED: Int { get }
var kSCSICmd_XDWRITEREAD_10: Int { get }
var kSCSICmd_XPWRITE: Int { get }
var kSCSICmdVariableLengthCDB: Int { get }
var kSCSIServiceAction_READ_32: Int { get }
var kSCSIServiceAction_VERIFY_32: Int { get }
var kSCSIServiceAction_WRITE_32: Int { get }
var kSCSIServiceAction_WRITE_AND_VERIFY_32: Int { get }
var kSCSIServiceAction_WRITE_SAME_32: Int { get }
var kSCSIServiceAction_XDREAD_32: Int { get }
var kSCSIServiceAction_XDWRITE_32: Int { get }
var kSCSIServiceAction_XDWRITEREAD_32: Int { get }
var kSCSIServiceAction_XPWRITE_32: Int { get }
var kSCSIServiceAction_REPORT_ALIASES: Int { get }
var kSCSIServiceAction_REPORT_DEVICE_IDENTIFIER: Int { get }
var kSCSIServiceAction_REPORT_PRIORITY: Int { get }
var kSCSIServiceAction_REPORT_PROVISIONING_INITIALIZATION_PATTERN: Int { get }
var kSCSIServiceAction_REPORT_SUPPORTED_OPERATION_CODES: Int { get }
var kSCSIServiceAction_REPORT_SUPPORTED_TASK_MANAGEMENT_FUNCTIONS: Int { get }
var kSCSIServiceAction_REPORT_TARGET_PORT_GROUPS: Int { get }
var kSCSIServiceAction_CHANGE_ALIASES: Int { get }
var kSCSIServiceAction_SET_DEVICE_IDENTIFIER: Int { get }
var kSCSIServiceAction_SET_PRIORITY: Int { get }
var kSCSIServiceAction_SET_TARGET_PORT_GROUPS: Int { get }
var kSCSIServiceAction_GET_LBA_STATUS: Int { get }
var kSCSIServiceAction_READ_CAPACITY_16: Int { get }
var kSCSIServiceAction_READ_LONG_16: Int { get }
var kSCSIServiceAction_WRITE_LONG_16: Int { get }
var kSPCCmd_CHANGE_DEFINITION: Int { get }
var kSPCCmd_COMPARE: Int { get }
var kSPCCmd_COPY: Int { get }
var kSPCCmd_COPY_AND_VERIFY: Int { get }
var kSPCCmd_EXTENDED_COPY: Int { get }
var kSPCCmd_INQUIRY: Int { get }
var kSPCCmd_LOG_SELECT: Int { get }
var kSPCCmd_LOG_SENSE: Int { get }
var kSPCCmd_MODE_SELECT_6: Int { get }
var kSPCCmd_MODE_SELECT_10: Int { get }
var kSPCCmd_MODE_SENSE_6: Int { get }
var kSPCCmd_MODE_SENSE_10: Int { get }
var kSPCCmd_MOVE_MEDIUM_ATTACHED: Int { get }
var kSPCCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSPCCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSPCCmd_PREVENT_ALLOW_MEDIUM_REMOVAL: Int { get }
var kSPCCmd_READ_BUFFER: Int { get }
var kSPCCmd_READ_ELEMENT_STATUS_ATTACHED: Int { get }
var kSPCCmd_RECEIVE_COPY_RESULTS: Int { get }
var kSPCCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSPCCmd_RELEASE_10: Int { get }
var kSPCCmd_RELEASE_6: Int { get }
var kSPCCmd_REPORT_DEVICE_IDENTIFIER: Int { get }
var kSPCCmd_REPORT_LUNS: Int { get }
var kSPCCmd_REQUEST_SENSE: Int { get }
var kSPCCmd_RESERVE_10: Int { get }
var kSPCCmd_RESERVE_6: Int { get }
var kSPCCmd_SEND_DIAGNOSTICS: Int { get }
var kSPCCmd_SET_DEVICE_IDENTIFIER: Int { get }
var kSPCCmd_TEST_UNIT_READY: Int { get }
var kSPCCmd_WRITE_BUFFER: Int { get }
var kSBCCmd_CHANGE_DEFINITION: Int { get }
var kSBCCmd_COMPARE: Int { get }
var kSBCCmd_COPY: Int { get }
var kSBCCmd_COPY_AND_VERIFY: Int { get }
var kSBCCmd_FORMAT_UNIT: Int { get }
var kSBCCmd_INQUIRY: Int { get }
var kSBCCmd_LOCK_UNLOCK_CACHE: Int { get }
var kSBCCmd_LOG_SELECT: Int { get }
var kSBCCmd_LOG_SENSE: Int { get }
var kSBCCmd_MODE_SELECT_6: Int { get }
var kSBCCmd_MODE_SELECT_10: Int { get }
var kSBCCmd_MODE_SENSE_6: Int { get }
var kSBCCmd_MODE_SENSE_10: Int { get }
var kSBCCmd_MOVE_MEDIUM_ATTACHED: Int { get }
var kSBCCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSBCCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSBCCmd_PREFETCH: Int { get }
var kSBCCmd_PREVENT_ALLOW_MEDIUM_REMOVAL: Int { get }
var kSBCCmd_READ_6: Int { get }
var kSBCCmd_READ_10: Int { get }
var kSBCCmd_READ_12: Int { get }
var kSBCCmd_READ_BUFFER: Int { get }
var kSBCCmd_READ_CAPACITY: Int { get }
var kSBCCmd_READ_DEFECT_DATA_10: Int { get }
var kSBCCmd_READ_DEFECT_DATA_12: Int { get }
var kSBCCmd_READ_ELEMENT_STATUS_ATTACHED: Int { get }
var kSBCCmd_READ_GENERATION: Int { get }
var kSBCCmd_READ_LONG: Int { get }
var kSBCCmd_READ_UPDATED_BLOCK_10: Int { get }
var kSBCCmd_REASSIGN_BLOCKS: Int { get }
var kSBCCmd_REBUILD: Int { get }
var kSBCCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSBCCmd_REGENERATE: Int { get }
var kSBCCmd_RELEASE_6: Int { get }
var kSBCCmd_RELEASE_10: Int { get }
var kSBCCmd_REPORT_LUNS: Int { get }
var kSBCCmd_REQUEST_SENSE: Int { get }
var kSBCCmd_RESERVE_6: Int { get }
var kSBCCmd_RESERVE_10: Int { get }
var kSBCCmd_REZERO_UNIT: Int { get }
var kSBCCmd_SEARCH_DATA_EQUAL_10: Int { get }
var kSBCCmd_SEARCH_DATA_HIGH_10: Int { get }
var kSBCCmd_SEARCH_DATA_LOW_10: Int { get }
var kSBCCmd_SEEK_6: Int { get }
var kSBCCmd_SEEK_10: Int { get }
var kSBCCmd_SEND_DIAGNOSTICS: Int { get }
var kSBCCmd_SET_LIMITS_10: Int { get }
var kSBCCmd_SET_LIMITS_12: Int { get }
var kSBCCmd_START_STOP_UNIT: Int { get }
var kSBCCmd_SYNCHRONIZE_CACHE: Int { get }
var kSBCCmd_TEST_UNIT_READY: Int { get }
var kSBCCmd_UPDATE_BLOCK: Int { get }
var kSBCCmd_VERIFY_10: Int { get }
var kSBCCmd_WRITE_6: Int { get }
var kSBCCmd_WRITE_10: Int { get }
var kSBCCmd_WRITE_12: Int { get }
var kSBCCmd_WRITE_AND_VERIFY_10: Int { get }
var kSBCCmd_WRITE_AND_VERIFY_12: Int { get }
var kSBCCmd_WRITE_BUFFER: Int { get }
var kSBCCmd_WRITE_LONG: Int { get }
var kSBCCmd_WRITE_SAME: Int { get }
var kSBCCmd_XDREAD: Int { get }
var kSBCCmd_XDWRITE: Int { get }
var kSBCCmd_XDWRITE_EXTENDED: Int { get }
var kSBCCmd_XPWRITE: Int { get }
var kSSCSeqCmd_CHANGE_DEFINITION: Int { get }
var kSSCSeqCmd_COMPARE: Int { get }
var kSSCSeqCmd_COPY: Int { get }
var kSSCSeqCmd_COPY_AND_VERIFY: Int { get }
var kSSCSeqCmd_ERASE: Int { get }
var kSSCSeqCmd_FORMAT_MEDIUM: Int { get }
var kSSCSeqCmd_INQUIRY: Int { get }
var kSSCSeqCmd_LOAD_UNLOAD: Int { get }
var kSSCSeqCmd_LOCATE: Int { get }
var kSSCSeqCmd_LOG_SELECT: Int { get }
var kSSCSeqCmd_LOG_SENSE: Int { get }
var kSSCSeqCmd_MODE_SELECT_6: Int { get }
var kSSCSeqCmd_MODE_SELECT_10: Int { get }
var kSSCSeqCmd_MODE_SENSE_6: Int { get }
var kSSCSeqCmd_MODE_SENSE_10: Int { get }
var kSSCSeqCmd_MOVE_MEDIUM: Int { get }
var kSSCSeqCmd_MOVE_MEDIUM_ATTACHED: Int { get }
var kSSCSeqCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSSCSeqCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSSCSeqCmd_PREVENT_ALLOW_MEDIUM_REMOVAL: Int { get }
var kSSCSeqCmd_READ_6: Int { get }
var kSSCSeqCmd_READ_BLOCK_LIMITS: Int { get }
var kSSCSeqCmd_READ_BUFFER: Int { get }
var kSSCSeqCmd_READ_ELEMENT_STATUS: Int { get }
var kSSCSeqCmd_READ_ELEMENT_STATUS_ATTACHED: Int { get }
var kSSCSeqCmd_READ_POSITION: Int { get }
var kSSCSeqCmd_READ_REVERSE: Int { get }
var kSSCSeqCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSSCSeqCmd_RECOVER_BUFFERED_DATA: Int { get }
var kSSCSeqCmd_RELEASE_6: Int { get }
var kSSCSeqCmd_RELEASE_10: Int { get }
var kSSCSeqCmd_REPORT_DENSITY_SUPPORT: Int { get }
var kSSCSeqCmd_REPORT_LUNS: Int { get }
var kSSCSeqCmd_REQUEST_SENSE: Int { get }
var kSSCSeqCmd_RESERVE_6: Int { get }
var kSSCSeqCmd_RESERVE_10: Int { get }
var kSSCSeqCmd_REWIND: Int { get }
var kSSCSeqCmd_SEND_DIAGNOSTICS: Int { get }
var kSSCSeqCmd_SPACE: Int { get }
var kSSCSeqCmd_TEST_UNIT_READY: Int { get }
var kSSCSeqCmd_VERIFY_6: Int { get }
var kSSCSeqCmd_WRITE_6: Int { get }
var kSSCSeqCmd_WRITE_BUFFER: Int { get }
var kSSCSeqCmd_WRITE_FILEMARKS: Int { get }
var kSSCPrinterCmd_CHANGE_DEFINITION: Int { get }
var kSSCPrinterCmd_COMPARE: Int { get }
var kSSCPrinterCmd_COPY: Int { get }
var kSSCPrinterCmd_COPY_AND_VERIFY: Int { get }
var kSSCPrinterCmd_FORMAT: Int { get }
var kSSCPrinterCmd_INQUIRY: Int { get }
var kSSCPrinterCmd_LOG_SELECT: Int { get }
var kSSCPrinterCmd_LOG_SENSE: Int { get }
var kSSCPrinterCmd_MODE_SELECT_6: Int { get }
var kSSCPrinterCmd_MODE_SELECT_10: Int { get }
var kSSCPrinterCmd_MODE_SENSE_6: Int { get }
var kSSCPrinterCmd_MODE_SENSE_10: Int { get }
var kSSCPrinterCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSSCPrinterCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSSCPrinterCmd_PRINT: Int { get }
var kSSCPrinterCmd_READ_BUFFER: Int { get }
var kSSCPrinterCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSSCPrinterCmd_RECOVER_BUFFERED_DATA: Int { get }
var kSSCPrinterCmd_RELEASE_6: Int { get }
var kSSCPrinterCmd_RELEASE_10: Int { get }
var kSSCPrinterCmd_REPORT_LUNS: Int { get }
var kSSCPrinterCmd_REQUEST_SENSE: Int { get }
var kSSCPrinterCmd_RESERVE_6: Int { get }
var kSSCPrinterCmd_RESERVE_10: Int { get }
var kSSCPrinterCmd_SEND_DIAGNOSTICS: Int { get }
var kSSCPrinterCmd_SLEW_AND_PRINT: Int { get }
var kSSCPrinterCmd_STOP_PRINT: Int { get }
var kSSCPrinterCmd_SYNCHRONIZE_BUFFER: Int { get }
var kSSCPrinterCmd_TEST_UNIT_READY: Int { get }
var kSSCPrinterCmd_WRITE_BUFFER: Int { get }
var kSPCProcCmd_CHANGE_DEFINITION: Int { get }
var kSPCProcCmd_COMPARE: Int { get }
var kSPCProcCmd_COPY: Int { get }
var kSPCProcCmd_COPY_AND_VERIFY: Int { get }
var kSPCProcCmd_EXTENDED_COPY: Int { get }
var kSPCProcCmd_INQUIRY: Int { get }
var kSPCProcCmd_LOG_SELECT: Int { get }
var kSPCProcCmd_LOG_SENSE: Int { get }
var kSPCProcCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSPCProcCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSPCProcCmd_READ_BUFFER: Int { get }
var kSPCProcCmd_RECEIVE: Int { get }
var kSPCProcCmd_RECEIVE_COPY_RESULTS: Int { get }
var kSPCProcCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSPCProcCmd_RELEASE_10: Int { get }
var kSPCProcCmd_RELEASE_6: Int { get }
var kSPCProcCmd_REPORT_LUNS: Int { get }
var kSPCProcCmd_REQUEST_SENSE: Int { get }
var kSPCProcCmd_RESERVE_10: Int { get }
var kSPCProcCmd_RESERVE_6: Int { get }
var kSPCProcCmd_SEND: Int { get }
var kSPCProcCmd_SEND_DIAGNOSTICS: Int { get }
var kSPCProcCmd_TEST_UNIT_READY: Int { get }
var kSPCProcCmd_WRITE_BUFFER: Int { get }
var kSBCWOCmd_CHANGE_DEFINITION: Int { get }
var kSBCWOCmd_COMPARE: Int { get }
var kSBCWOCmd_COPY: Int { get }
var kSBCWOCmd_COPY_AND_VERIFY: Int { get }
var kSBCWOCmd_INQUIRY: Int { get }
var kSBCWOCmd_LOCK_UNLOCK_CACHE: Int { get }
var kSBCWOCmd_LOG_SELECT: Int { get }
var kSBCWOCmd_LOG_SENSE: Int { get }
var kSBCWOCmd_MEDIUM_SCAN: Int { get }
var kSBCWOCmd_MODE_SELECT_6: Int { get }
var kSBCWOCmd_MODE_SELECT_10: Int { get }
var kSBCWOCmd_MODE_SENSE_6: Int { get }
var kSBCWOCmd_MODE_SENSE_10: Int { get }
var kSBCWOCmd_MOVE_MEDIUM: Int { get }
var kSBCWOCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSBCWOCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSBCWOCmd_PREFETCH: Int { get }
var kSBCWOCmd_PREVENT_ALLOW_MEDIUM_REMOVAL: Int { get }
var kSBCWOCmd_READ_6: Int { get }
var kSBCWOCmd_READ_10: Int { get }
var kSBCWOCmd_READ_12: Int { get }
var kSBCWOCmd_READ_BUFFER: Int { get }
var kSBCWOCmd_READ_CAPACITY: Int { get }
var kSBCWOCmd_READ_ELEMENT_STATUS: Int { get }
var kSBCWOCmd_READ_LONG: Int { get }
var kSBCWOCmd_REASSIGN_BLOCKS: Int { get }
var kSBCWOCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSBCWOCmd_RELEASE_6: Int { get }
var kSBCWOCmd_RELEASE_10: Int { get }
var kSBCWOCmd_REQUEST_SENSE: Int { get }
var kSBCWOCmd_RESERVE_6: Int { get }
var kSBCWOCmd_RESERVE_10: Int { get }
var kSBCWOCmd_REZERO_UNIT: Int { get }
var kSBCWOCmd_SEARCH_DATA_EQUAL_10: Int { get }
var kSBCWOCmd_SEARCH_DATA_EQUAL_12: Int { get }
var kSBCWOCmd_SEARCH_DATA_HIGH_10: Int { get }
var kSBCWOCmd_SEARCH_DATA_HIGH_12: Int { get }
var kSBCWOCmd_SEARCH_DATA_LOW_10: Int { get }
var kSBCWOCmd_SEARCH_DATA_LOW_12: Int { get }
var kSBCWOCmd_SEEK_6: Int { get }
var kSBCWOCmd_SEEK_10: Int { get }
var kSBCWOCmd_SEND_DIAGNOSTICS: Int { get }
var kSBCWOCmd_SET_LIMITS_10: Int { get }
var kSBCWOCmd_SET_LIMITS_12: Int { get }
var kSBCWOCmd_START_STOP_UNIT: Int { get }
var kSBCWOCmd_SYNCHRONIZE_CACHE: Int { get }
var kSBCWOCmd_TEST_UNIT_READY: Int { get }
var kSBCWOCmd_VERIFY_10: Int { get }
var kSBCWOCmd_VERIFY_12: Int { get }
var kSBCWOCmd_WRITE_6: Int { get }
var kSBCWOCmd_WRITE_10: Int { get }
var kSBCWOCmd_WRITE_12: Int { get }
var kSBCWOCmd_WRITE_AND_VERIFY_10: Int { get }
var kSBCWOCmd_WRITE_AND_VERIFY_12: Int { get }
var kSBCWOCmd_WRITE_BUFFER: Int { get }
var kSBCWOCmd_WRITE_LONG: Int { get }
var kMMCCmd_BLANK: Int { get }
var kMMCCmd_CHANGE_DEFINITION: Int { get }
var kMMCCmd_CLOSE_TRACK_SESSION: Int { get }
var kMMCCmd_COMPARE: Int { get }
var kMMCCmd_COPY: Int { get }
var kMMCCmd_COPY_AND_VERIFY: Int { get }
var kMMCCmd_ERASE: Int { get }
var kMMCCmd_FORMAT_UNIT: Int { get }
var kMMCCmd_GET_CONFIGURATION: Int { get }
var kMMCCmd_GET_EVENT_STATUS_NOTIFICATION: Int { get }
var kMMCCmd_GET_PERFORMANCE: Int { get }
var kMMCCmd_INQUIRY: Int { get }
var kMMCCmd_LOAD_UNLOAD_MEDIUM: Int { get }
var kMMCCmd_LOG_SELECT: Int { get }
var kMMCCmd_LOG_SENSE: Int { get }
var kMMCCmd_MECHANISM_STATUS: Int { get }
var kMMCCmd_MODE_SELECT_6: Int { get }
var kMMCCmd_MODE_SELECT_10: Int { get }
var kMMCCmd_MODE_SENSE_6: Int { get }
var kMMCCmd_MODE_SENSE_10: Int { get }
var kMMCCmd_PAUSE_RESUME: Int { get }
var kMMCCmd_PLAY_AUDIO_10: Int { get }
var kMMCCmd_PLAY_AUDIO_12: Int { get }
var kMMCCmd_PLAY_AUDIO_MSF: Int { get }
var kMMCCmd_PLAY_AUDIO_TRACK_INDEX: Int { get }
var kMMCCmd_PLAY_CD: Int { get }
var kMMCCmd_PLAY_RELATIVE_10: Int { get }
var kMMCCmd_PLAY_RELATIVE_12: Int { get }
var kMMCCmd_PREFETCH: Int { get }
var kMMCCmd_PREVENT_ALLOW_MEDIUM_REMOVAL: Int { get }
var kMMCCmd_READ_6: Int { get }
var kMMCCmd_READ_10: Int { get }
var kMMCCmd_READ_12: Int { get }
var kMMCCmd_READ_BUFFER: Int { get }
var kMMCCmd_READ_BUFFER_CAPACITY: Int { get }
var kMMCCmd_READ_CD: Int { get }
var kMMCCmd_READ_CD_MSF: Int { get }
var kMMCCmd_READ_CAPACITY: Int { get }
var kMMCCmd_READ_DISC_INFORMATION: Int { get }
var kMMCCmd_READ_DVD_STRUCTURE: Int { get }
var kMMCCmd_READ_DISC_STRUCTURE: Int { get }
var kMMCCmd_READ_FORMAT_CAPACITIES: Int { get }
var kMMCCmd_READ_HEADER: Int { get }
var kMMCCmd_READ_LONG: Int { get }
var kMMCCmd_READ_MASTER_CUE: Int { get }
var kMMCCmd_READ_SUB_CHANNEL: Int { get }
var kMMCCmd_READ_TOC_PMA_ATIP: Int { get }
var kMMCCmd_READ_TRACK_INFORMATION: Int { get }
var kMMCCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kMMCCmd_RELEASE_6: Int { get }
var kMMCCmd_RELEASE_10: Int { get }
var kMMCCmd_REPAIR_TRACK: Int { get }
var kMMCCmd_REPORT_KEY: Int { get }
var kMMCCmd_REQUEST_SENSE: Int { get }
var kMMCCmd_RESERVE_6: Int { get }
var kMMCCmd_RESERVE_10: Int { get }
var kMMCCmd_RESERVE_TRACK: Int { get }
var kMMCCmd_SCAN_MMC: Int { get }
var kMMCCmd_SEARCH_DATA_EQUAL_10: Int { get }
var kMMCCmd_SEARCH_DATA_EQUAL_12: Int { get }
var kMMCCmd_SEARCH_DATA_HIGH_10: Int { get }
var kMMCCmd_SEARCH_DATA_HIGH_12: Int { get }
var kMMCCmd_SEARCH_DATA_LOW_10: Int { get }
var kMMCCmd_SEARCH_DATA_LOW_12: Int { get }
var kMMCCmd_SEEK_6: Int { get }
var kMMCCmd_SEEK_10: Int { get }
var kMMCCmd_SEND_CUE_SHEET: Int { get }
var kMMCCmd_SEND_DIAGNOSTICS: Int { get }
var kMMCCmd_SEND_DVD_STRUCTURE: Int { get }
var kMMCCmd_SEND_EVENT: Int { get }
var kMMCCmd_SEND_KEY: Int { get }
var kMMCCmd_SEND_OPC_INFORMATION: Int { get }
var kMMCCmd_SET_CD_SPEED: Int { get }
var kMMCCmd_SET_LIMITS_10: Int { get }
var kMMCCmd_SET_LIMITS_12: Int { get }
var kMMCCmd_SET_READ_AHEAD: Int { get }
var kMMCCmd_SET_STREAMING: Int { get }
var kMMCCmd_START_STOP_UNIT: Int { get }
var kMMCCmd_STOP_PLAY_SCAN: Int { get }
var kMMCCmd_SYNCHRONIZE_CACHE: Int { get }
var kMMCCmd_TEST_UNIT_READY: Int { get }
var kMMCCmd_VERIFY_10: Int { get }
var kMMCCmd_VERIFY_12: Int { get }
var kMMCCmd_WRITE_10: Int { get }
var kMMCCmd_WRITE_12: Int { get }
var kMMCCmd_WRITE_AND_VERIFY_10: Int { get }
var kMMCCmd_WRITE_BUFFER: Int { get }
var kSGCCmd_CHANGE_DEFINITION: Int { get }
var kSGCCmd_COMPARE: Int { get }
var kSGCCmd_COPY: Int { get }
var kSGCCmd_COPY_AND_VERIFY: Int { get }
var kSGCCmd_GET_DATA_BUFFER_STATUS: Int { get }
var kSGCCmd_GET_WINDOW: Int { get }
var kSGCCmd_INQUIRY: Int { get }
var kSGCCmd_LOG_SELECT: Int { get }
var kSGCCmd_LOG_SENSE: Int { get }
var kSGCCmd_MODE_SELECT_6: Int { get }
var kSGCCmd_MODE_SELECT_10: Int { get }
var kSGCCmd_MODE_SENSE_6: Int { get }
var kSGCCmd_MODE_SENSE_10: Int { get }
var kSGCCmd_OBJECT_POSITION: Int { get }
var kSGCCmd_PORT_STATUS: Int { get }
var kSGCCmd_READ: Int { get }
var kSGCCmd_READ_BUFFER: Int { get }
var kSGCCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSGCCmd_RELEASE_6: Int { get }
var kSGCCmd_REQUEST_SENSE: Int { get }
var kSGCCmd_RESERVE_6: Int { get }
var kSGCCmd_SCAN: Int { get }
var kSGCCmd_SEND: Int { get }
var kSGCCmd_SEND_DIAGNOSTICS: Int { get }
var kSGCCmd_SET_WINDOW: Int { get }
var kSGCCmd_TEST_UNIT_READY: Int { get }
var kSGCCmd_WRITE_BUFFER: Int { get }
var kSMCCmd_EXCHANGE_MEDIUM: Int { get }
var kSMCCmd_INITIALIZE_ELEMENT_STATUS: Int { get }
var kSMCCmd_MODE_SELECT_6: Int { get }
var kSMCCmd_MODE_SELECT_10: Int { get }
var kSMCCmd_MODE_SENSE_6: Int { get }
var kSMCCmd_MODE_SENSE_10: Int { get }
var kSMCCmd_MOVE_MEDIUM: Int { get }
var kSMCCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSMCCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSMCCmd_POSITION_TO_ELEMENT: Int { get }
var kSMCCmd_READ_ELEMENT_STATUS: Int { get }
var kSMCCmd_RELEASE_ELEMENT_6: Int { get }
var kSMCCmd_RELEASE_ELEMENT_10: Int { get }
var kSMCCmd_REQUEST_VOLUME_ELEMENT_ADDRESS: Int { get }
var kSMCCmd_REQUEST_SENSE: Int { get }
var kSMCCmd_RESERVE_ELEMENT_6: Int { get }
var kSMCCmd_RESERVE_ELEMENT_10: Int { get }
var kSCCCmd_MAINTENANCE_IN: Int { get }
var kSCCCmd_MAINTENANCE_OUT: Int { get }
var kSCCCmd_MODE_SELECT_6: Int { get }
var kSCCCmd_MODE_SELECT_10: Int { get }
var kSCCCmd_MODE_SENSE_6: Int { get }
var kSCCCmd_MODE_SENSE_10: Int { get }
var kSCCCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSCCCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSCCCmd_PORT_STATUS: Int { get }
var kSCCCmd_REDUNDANCY_GROUP_IN: Int { get }
var kSCCCmd_REDUNDANCY_GROUP_OUT: Int { get }
var kSCCCmd_RELEASE_6: Int { get }
var kSCCCmd_RELEASE_10: Int { get }
var kSCCCmd_REPORT_LUNS: Int { get }
var kSCCCmd_REQUEST_SENSE: Int { get }
var kSCCCmd_RESERVE_6: Int { get }
var kSCCCmd_RESERVE_10: Int { get }
var kSCCCmd_SEND_DIAGNOSTICS: Int { get }
var kSCCCmd_SPARE_IN: Int { get }
var kSCCCmd_SPARE_OUT: Int { get }
var kSESCmd_MODE_SELECT_6: Int { get }
var kSESCmd_MODE_SELECT_10: Int { get }
var kSESCmd_MODE_SENSE_6: Int { get }
var kSESCmd_MODE_SENSE_10: Int { get }
var kSESCmd_PERSISTENT_RESERVE_IN: Int { get }
var kSESCmd_PERSISTENT_RESERVE_OUT: Int { get }
var kSESCmd_RECEIVE_DIAGNOSTICS_RESULTS: Int { get }
var kSESCmd_RELEASE_6: Int { get }
var kSESCmd_RELEASE_10: Int { get }
var kSESCmd_REQUEST_SENSE: Int { get }
var kSESCmd_RESERVE_6: Int { get }
var kSESCmd_RESERVE_10: Int { get }
var kSESCmd_SEND_DIAGNOSTICS: Int { get }
var kRBCCmd_FORMAT_UNIT: Int { get }
var kRBCCmd_READ_10: Int { get }
var kRBCCmd_READ_CAPACITY: Int { get }
var kRBCCmd_START_STOP_UNIT: Int { get }
var kRBCCmd_SYNCHRONIZE_CACHE: Int { get }
var kRBCCmd_VERIFY_10: Int { get }
var kRBCCmd_WRITE_10: Int { get }
var kRBCCmd_WRITE_BUFFER: Int { get }
var kREPORT_CAPACITY_DataSize: Int { get }
var kREPORT_CAPACITY_16_DataSize: Int { get }
var kREPORT_CAPACITY_MaximumLBA: UInt { get }
var kREPORT_CAPACITY_16_MaximumLBA: UInt64 { get }
struct SCSI_Capacity_Data {
  var RETURNED_LOGICAL_BLOCK_ADDRESS: UInt32
  var BLOCK_LENGTH_IN_BYTES: UInt32
  init()
  init(RETURNED_LOGICAL_BLOCK_ADDRESS: UInt32, BLOCK_LENGTH_IN_BYTES: UInt32)
}
struct SCSI_Capacity_Data_Long {
  var RETURNED_LOGICAL_BLOCK_ADDRESS: UInt64
  var BLOCK_LENGTH_IN_BYTES: UInt32
  var RTO_EN_PROT_EN: UInt8
  var Reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(RETURNED_LOGICAL_BLOCK_ADDRESS: UInt64, BLOCK_LENGTH_IN_BYTES: UInt32, RTO_EN_PROT_EN: UInt8, Reserved: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
}
var kREAD_CAPACITY_RTO_Enabled: Int { get }
var kREAD_CAPACITY_RTO_Disabled: Int { get }
var kREAD_CAPACITY_RTO_Mask: Int { get }
var kREAD_CAPACITY_PROT_Enabled: Int { get }
var kREAD_CAPACITY_PROT_Disabled: Int { get }
var kREAD_CAPACITY_PROT_Mask: Int { get }
typealias SCSIDeviceIdentifier = UInt64
typealias SCSITargetIdentifier = SCSIDeviceIdentifier
typealias SCSIInitiatorIdentifier = SCSIDeviceIdentifier
typealias SCSILogicalUnitBytes = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
typealias SCSILogicalUnitNumber = UInt64
typealias SCSITaggedTaskIdentifier = UInt64
var kSCSIUntaggedTaskIdentifier: Int { get }
struct SCSITaskAttribute : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSCSITask_SIMPLE: SCSITaskAttribute { get }
var kSCSITask_ORDERED: SCSITaskAttribute { get }
var kSCSITask_HEAD_OF_QUEUE: SCSITaskAttribute { get }
var kSCSITask_ACA: SCSITaskAttribute { get }
struct SCSITaskState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSCSITaskState_NEW_TASK: SCSITaskState { get }
var kSCSITaskState_ENABLED: SCSITaskState { get }
var kSCSITaskState_BLOCKED: SCSITaskState { get }
var kSCSITaskState_DORMANT: SCSITaskState { get }
var kSCSITaskState_ENDED: SCSITaskState { get }
struct SCSIServiceResponse : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSCSIServiceResponse_Request_In_Process: SCSIServiceResponse { get }
var kSCSIServiceResponse_SERVICE_DELIVERY_OR_TARGET_FAILURE: SCSIServiceResponse { get }
var kSCSIServiceResponse_TASK_COMPLETE: SCSIServiceResponse { get }
var kSCSIServiceResponse_LINK_COMMAND_COMPLETE: SCSIServiceResponse { get }
var kSCSIServiceResponse_FUNCTION_COMPLETE: SCSIServiceResponse { get }
var kSCSIServiceResponse_FUNCTION_REJECTED: SCSIServiceResponse { get }
struct SCSITaskStatus : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSCSITaskStatus_GOOD: SCSITaskStatus { get }
var kSCSITaskStatus_CHECK_CONDITION: SCSITaskStatus { get }
var kSCSITaskStatus_CONDITION_MET: SCSITaskStatus { get }
var kSCSITaskStatus_BUSY: SCSITaskStatus { get }
var kSCSITaskStatus_INTERMEDIATE: SCSITaskStatus { get }
var kSCSITaskStatus_INTERMEDIATE_CONDITION_MET: SCSITaskStatus { get }
var kSCSITaskStatus_RESERVATION_CONFLICT: SCSITaskStatus { get }
var kSCSITaskStatus_TASK_SET_FULL: SCSITaskStatus { get }
var kSCSITaskStatus_ACA_ACTIVE: SCSITaskStatus { get }
var kSCSITaskStatus_TaskTimeoutOccurred: SCSITaskStatus { get }
var kSCSITaskStatus_ProtocolTimeoutOccurred: SCSITaskStatus { get }
var kSCSITaskStatus_DeviceNotResponding: SCSITaskStatus { get }
var kSCSITaskStatus_DeviceNotPresent: SCSITaskStatus { get }
var kSCSITaskStatus_DeliveryFailure: SCSITaskStatus { get }
var kSCSITaskStatus_No_Status: SCSITaskStatus { get }
var kSCSICDBSize_Maximum: Int { get }
var kSCSICDBSize_6Byte: Int { get }
var kSCSICDBSize_10Byte: Int { get }
var kSCSICDBSize_12Byte: Int { get }
var kSCSICDBSize_16Byte: Int { get }
typealias SCSICommandDescriptorBlock = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
var kSCSIDataTransfer_NoDataTransfer: Int { get }
var kSCSIDataTransfer_FromInitiatorToTarget: Int { get }
var kSCSIDataTransfer_FromTargetToInitiator: Int { get }
struct SCSICmd_REPORT_LUNS_LUN_ENTRY {
  var FIRST_LEVEL_ADDRESSING: UInt16
  var SECOND_LEVEL_ADDRESSING: UInt16
  var THIRD_LEVEL_ADDRESSING: UInt16
  var FOURTH_LEVEL_ADDRESSING: UInt16
  init()
  init(FIRST_LEVEL_ADDRESSING: UInt16, SECOND_LEVEL_ADDRESSING: UInt16, THIRD_LEVEL_ADDRESSING: UInt16, FOURTH_LEVEL_ADDRESSING: UInt16)
}
var kREPORT_LUNS_HeaderSize: Int32 { get }
var kREPORT_LUNS_ADDRESS_METHOD_PERIPHERAL_DEVICE: Int { get }
var kREPORT_LUNS_ADDRESS_METHOD_FLAT_SPACE: Int { get }
var kREPORT_LUNS_ADDRESS_DEVICE_TYPE_SPECIFIC: Int { get }
var kREPORT_LUNS_ADDRESS_METHOD_LOGICAL_UNIT: Int { get }
var kREPORT_LUNS_ADDRESS_METHOD_OFFSET: Int { get }
struct REPORT_LUNS_LOGICAL_UNIT_ADDRESSING {
  var LUN: UInt16
  var BUS_NUMBER: UInt16
  var TARGET: UInt16
  var reserved2: UInt16
  var reserved: UInt16
  init()
  init(LUN: UInt16, BUS_NUMBER: UInt16, TARGET: UInt16, reserved2: UInt16, reserved: UInt16)
}
struct REPORT_LUNS_PERIPHERAL_DEVICE_ADDRESSING {
  var TARGET_LUN: UInt16
  var BUS_IDENTIFIER: UInt16
  var reserved2: UInt16
  var reserved: UInt16
  init()
  init(TARGET_LUN: UInt16, BUS_IDENTIFIER: UInt16, reserved2: UInt16, reserved: UInt16)
}
struct SCSICmd_REPORT_LUNS_Header {
  var LUN_LIST_LENGTH: UInt32
  var RESERVED: UInt32
  var LUN: (SCSICmd_REPORT_LUNS_LUN_ENTRY)
  init()
  init(LUN_LIST_LENGTH: UInt32, RESERVED: UInt32, LUN: (SCSICmd_REPORT_LUNS_LUN_ENTRY))
}
var OLD_UUIDS: Int32 { get }
var kIOPropertySCSITaskUserClientInstanceGUID: String { get }
var kIOPropertySCSITaskDeviceCategory: String { get }
var kIOPropertySCSITaskUserClientDevice: String { get }
var kIOPropertySCSITaskAuthoringDevice: String { get }
var kMMCDeviceTrayClosed: Int { get }
var kMMCDeviceTrayOpen: Int { get }
var kMMCDeviceTrayMask: Int { get }
typealias SCSITaskSGElement = IOAddressRange
typealias SCSITaskCallbackFunction = @convention(c) (SCSIServiceResponse, SCSITaskStatus, UInt64, UnsafeMutableRawPointer?) -> Void
struct SCSITaskInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var IsTaskActive: (@convention(c) (UnsafeMutableRawPointer?) -> DarwinBoolean)!
  var SetTaskAttribute: (@convention(c) (UnsafeMutableRawPointer?, SCSITaskAttribute) -> IOReturn)!
  var GetTaskAttribute: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskAttribute>?) -> IOReturn)!
  var SetCommandDescriptorBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, UInt8) -> IOReturn)!
  var GetCommandDescriptorBlockSize: (@convention(c) (UnsafeMutableRawPointer?) -> UInt8)!
  var GetCommandDescriptorBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?) -> IOReturn)!
  var SetScatterGatherEntries: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskSGElement>?, UInt8, UInt64, UInt8) -> IOReturn)!
  var SetTimeoutDuration: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var GetTimeoutDuration: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  var SetTaskCompletionCallback: (@convention(c) (UnsafeMutableRawPointer?, SCSITaskCallbackFunction?, UnsafeMutableRawPointer?) -> IOReturn)!
  var ExecuteTaskAsync: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var ExecuteTaskSync: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSI_Sense_Data>?, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  var AbortTask: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var GetSCSIServiceResponse: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSIServiceResponse>?) -> IOReturn)!
  var GetTaskState: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskState>?) -> IOReturn)!
  var GetTaskStatus: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskStatus>?) -> IOReturn)!
  var GetRealizedDataTransferCount: (@convention(c) (UnsafeMutableRawPointer?) -> UInt64)!
  var GetAutoSenseData: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var SetAutoSenseDataBuffer: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSI_Sense_Data>?, UInt8) -> IOReturn)!
  var ResetForNewTask: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, IsTaskActive: (@convention(c) (UnsafeMutableRawPointer?) -> DarwinBoolean)!, SetTaskAttribute: (@convention(c) (UnsafeMutableRawPointer?, SCSITaskAttribute) -> IOReturn)!, GetTaskAttribute: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskAttribute>?) -> IOReturn)!, SetCommandDescriptorBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, UInt8) -> IOReturn)!, GetCommandDescriptorBlockSize: (@convention(c) (UnsafeMutableRawPointer?) -> UInt8)!, GetCommandDescriptorBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?) -> IOReturn)!, SetScatterGatherEntries: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskSGElement>?, UInt8, UInt64, UInt8) -> IOReturn)!, SetTimeoutDuration: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, GetTimeoutDuration: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!, SetTaskCompletionCallback: (@convention(c) (UnsafeMutableRawPointer?, SCSITaskCallbackFunction?, UnsafeMutableRawPointer?) -> IOReturn)!, ExecuteTaskAsync: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, ExecuteTaskSync: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSI_Sense_Data>?, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!, AbortTask: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, GetSCSIServiceResponse: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSIServiceResponse>?) -> IOReturn)!, GetTaskState: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskState>?) -> IOReturn)!, GetTaskStatus: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskStatus>?) -> IOReturn)!, GetRealizedDataTransferCount: (@convention(c) (UnsafeMutableRawPointer?) -> UInt64)!, GetAutoSenseData: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, SetAutoSenseDataBuffer: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSI_Sense_Data>?, UInt8) -> IOReturn)!, ResetForNewTask: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!)
}
struct SCSITaskDeviceInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var IsExclusiveAccessAvailable: (@convention(c) (UnsafeMutableRawPointer?) -> DarwinBoolean)!
  var AddCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!
  var RemoveCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  var ObtainExclusiveAccess: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var ReleaseExclusiveAccess: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var CreateSCSITask: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<SCSITaskInterface>?>?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, IsExclusiveAccessAvailable: (@convention(c) (UnsafeMutableRawPointer?) -> DarwinBoolean)!, AddCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!, RemoveCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, ObtainExclusiveAccess: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, ReleaseExclusiveAccess: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, CreateSCSITask: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<SCSITaskInterface>?>?)!)
}
struct MMCDeviceInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var Inquiry: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSICmd_INQUIRY_StandardData>?, UInt32, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var TestUnitReady: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var GetPerformance: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField2Bit, SCSICmdField1Bit, SCSICmdField2Bit, SCSICmdField4Byte, SCSICmdField2Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var GetConfiguration: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Byte, SCSICmdField2Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ModeSense10: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Bit, SCSICmdField1Bit, SCSICmdField2Bit, SCSICmdField6Bit, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var SetWriteParametersModePage: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, SCSICmdField1Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var GetTrayState: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?) -> IOReturn)!
  var SetTrayState: (@convention(c) (UnsafeMutableRawPointer?, UInt8) -> IOReturn)!
  var ReadTableOfContents: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Bit, SCSICmdField4Bit, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadDiscInformation: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadTrackInformation: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField2Bit, SCSICmdField4Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadDVDStructure: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField4Byte, SCSICmdField1Byte, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var GetSCSITaskDeviceInterface: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<SCSITaskDeviceInterface>?>?)!
  var GetPerformanceV2: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField5Bit, SCSICmdField4Byte, SCSICmdField2Byte, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var SetCDSpeed: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField2Byte, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadFormatCapacities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadDiscStructure: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField4Bit, SCSICmdField4Byte, SCSICmdField1Byte, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadDiscInformationV2: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField3Bit, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var ReadTrackInformationV2: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Bit, SCSICmdField2Bit, SCSICmdField4Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  var SetStreaming: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, Inquiry: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSICmd_INQUIRY_StandardData>?, UInt32, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, TestUnitReady: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, GetPerformance: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField2Bit, SCSICmdField1Bit, SCSICmdField2Bit, SCSICmdField4Byte, SCSICmdField2Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, GetConfiguration: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Byte, SCSICmdField2Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ModeSense10: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Bit, SCSICmdField1Bit, SCSICmdField2Bit, SCSICmdField6Bit, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, SetWriteParametersModePage: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, SCSICmdField1Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, GetTrayState: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?) -> IOReturn)!, SetTrayState: (@convention(c) (UnsafeMutableRawPointer?, UInt8) -> IOReturn)!, ReadTableOfContents: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Bit, SCSICmdField4Bit, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadDiscInformation: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadTrackInformation: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField2Bit, SCSICmdField4Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadDVDStructure: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField4Byte, SCSICmdField1Byte, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, GetSCSITaskDeviceInterface: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<SCSITaskDeviceInterface>?>?)!, GetPerformanceV2: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField5Bit, SCSICmdField4Byte, SCSICmdField2Byte, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, SetCDSpeed: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField2Byte, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadFormatCapacities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadDiscStructure: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField4Bit, SCSICmdField4Byte, SCSICmdField1Byte, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadDiscInformationV2: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField3Bit, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, ReadTrackInformationV2: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Bit, SCSICmdField2Bit, SCSICmdField4Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!, SetStreaming: (@convention(c) (UnsafeMutableRawPointer?, SCSICmdField1Byte, UnsafeMutableRawPointer?, SCSICmdField2Byte, UnsafeMutablePointer<SCSITaskStatus>?, UnsafeMutablePointer<SCSI_Sense_Data>?) -> IOReturn)!)
}
