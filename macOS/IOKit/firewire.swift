
var kFWResponseComplete: Int { get }
var kFWResponseConflictError: Int { get }
var kFWResponseDataError: Int { get }
var kFWResponseTypeError: Int { get }
var kFWResponseAddressError: Int { get }
var kFWResponseBusResetError: Int { get }
var kFWResponsePending: Int { get }
var kFWAckTimeout: Int { get }
var kFWAckComplete: Int { get }
var kFWAckPending: Int { get }
var kFWAckBusyX: Int { get }
var kFWAckBusyA: Int { get }
var kFWAckBusyB: Int { get }
var kFWAckDataError: Int { get }
var kFWAckTypeError: Int { get }
struct IOFWSpeed : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWSpeed100MBit: IOFWSpeed { get }
var kFWSpeed200MBit: IOFWSpeed { get }
var kFWSpeed400MBit: IOFWSpeed { get }
var kFWSpeed800MBit: IOFWSpeed { get }
var kFWSpeedReserved: IOFWSpeed { get }
var kFWSpeedReserved1: IOFWSpeed { get }
var kFWSpeedUnknownMask: IOFWSpeed { get }
var kFWSpeedMaximum: IOFWSpeed { get }
var kFWSpeedInvalid: IOFWSpeed { get }
struct FWAddressStruct {
  var nodeID: UInt16
  var addressHi: UInt16
  var addressLo: UInt32
  init()
  init(nodeID: UInt16, addressHi: UInt16, addressLo: UInt32)
}
typealias FWAddress = FWAddressStruct
typealias FWAddressPtr = UnsafeMutablePointer<FWAddressStruct>
struct IOConfigKeyType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kConfigImmediateKeyType: IOConfigKeyType { get }
var kConfigOffsetKeyType: IOConfigKeyType { get }
var kConfigLeafKeyType: IOConfigKeyType { get }
var kConfigDirectoryKeyType: IOConfigKeyType { get }
var kInvalidConfigROMEntryType: IOConfigKeyType { get }
var kConfigTextualDescriptorKey: Int { get }
var kConfigBusDependentInfoKey: Int { get }
var kConfigModuleVendorIdKey: Int { get }
var kConfigModuleHwVersionKey: Int { get }
var kConfigModuleSpecIdKey: Int { get }
var kConfigModuleSwVersionKey: Int { get }
var kConfigModuleDependentInfoKey: Int { get }
var kConfigNodeVendorIdKey: Int { get }
var kConfigNodeHwVersionKey: Int { get }
var kConfigNodeSpecIdKey: Int { get }
var kConfigNodeSwVersionKey: Int { get }
var kConfigNodeCapabilitiesKey: Int { get }
var kConfigNodeUniqueIdKey: Int { get }
var kConfigNodeUnitsExtentKey: Int { get }
var kConfigNodeMemoryExtentKey: Int { get }
var kConfigNodeDependentInfoKey: Int { get }
var kConfigUnitDirectoryKey: Int { get }
var kConfigUnitSpecIdKey: Int { get }
var kConfigUnitSwVersionKey: Int { get }
var kConfigUnitDependentInfoKey: Int { get }
var kConfigUnitLocationKey: Int { get }
var kConfigUnitPollMaskKey: Int { get }
var kConfigModelIdKey: Int { get }
var kConfigGenerationKey: Int { get }
var kConfigRootDirectoryKey: Int { get }
var kConfigSBP2LUN: Int { get }
var kConfigSBP2Revision: Int { get }
var kConfigSBP2MAO: Int { get }
var kCSRStateUnitDepend: UInt32 { get }
var kCSRStateUnitDependPhase: UInt32 { get }
var kCSRStateBusDepend: UInt32 { get }
var kCSRStateBusDependPhase: UInt32 { get }
var kCSRStateLost: UInt32 { get }
var kCSRStateDReq: UInt32 { get }
var kCSRStateELog: UInt32 { get }
var kCSRStateAtn: UInt32 { get }
var kCSRStateOff: UInt32 { get }
var kCSRStateState: UInt32 { get }
var kCSRStateStatePhase: UInt32 { get }
var kCSRStateStateRunning: UInt32 { get }
var kCSRStateStateInitializing: UInt32 { get }
var kCSRStateStateTesting: UInt32 { get }
var kCSRStateStateDead: UInt32 { get }
var kConfigBusInfoBlockLength: UInt32 { get }
var kConfigBusInfoBlockLengthPhase: UInt32 { get }
var kConfigROMCRCLength: UInt32 { get }
var kConfigROMCRCLengthPhase: UInt32 { get }
var kConfigROMCRCValue: UInt32 { get }
var kConfigROMCRCValuePhase: UInt32 { get }
var kConfigEntryKeyType: UInt32 { get }
var kConfigEntryKeyTypePhase: UInt32 { get }
var kConfigEntryKeyValue: UInt32 { get }
var kConfigEntryKeyValuePhase: UInt32 { get }
var kConfigEntryValue: UInt32 { get }
var kConfigEntryValuePhase: UInt32 { get }
var kConfigLeafDirLength: UInt32 { get }
var kConfigLeafDirLengthPhase: UInt32 { get }
var kConfigLeafDirCRC: UInt32 { get }
var kConfigLeafDirCRCPhase: UInt32 { get }
struct IOCSRKeyType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kCSRImmediateKeyType: IOCSRKeyType { get }
var kCSROffsetKeyType: IOCSRKeyType { get }
var kCSRLeafKeyType: IOCSRKeyType { get }
var kCSRDirectoryKeyType: IOCSRKeyType { get }
var kInvalidCSRROMEntryType: IOCSRKeyType { get }
var kCSRNodeID: UInt32 { get }
var kCSRNodeIDPhase: UInt32 { get }
var kCSRInitialMemorySpaceBaseAddressHi: UInt32 { get }
var kCSRInitialMemorySpaceBaseAddressLo: UInt32 { get }
var kCSRPrivateSpaceBaseAddressHi: UInt32 { get }
var kCSRPrivateSpaceBaseAddressLo: UInt32 { get }
var kCSRRegisterSpaceBaseAddressHi: UInt32 { get }
var kCSRRegisterSpaceBaseAddressLo: UInt32 { get }
var kCSRCoreRegistersBaseAddress: UInt32 { get }
var kCSRStateClearAddress: UInt32 { get }
var kCSRStateSetAddress: UInt32 { get }
var kCSRNodeIDsAddress: UInt32 { get }
var kCSRResetStartAddress: UInt32 { get }
var kCSRIndirectAddressAddress: UInt32 { get }
var kCSRIndirectDataAddress: UInt32 { get }
var kCSRSplitTimeoutHiAddress: UInt32 { get }
var kCSRSplitTimeoutLoAddress: UInt32 { get }
var kCSRArgumentHiAddress: UInt32 { get }
var kCSRArgumentLoAddress: UInt32 { get }
var kCSRTestStartAddress: UInt32 { get }
var kCSRTestStatusAddress: UInt32 { get }
var kCSRUnitsBaseHiAddress: UInt32 { get }
var kCSRUnitsBaseLoAddress: UInt32 { get }
var kCSRUnitsBoundHiAddress: UInt32 { get }
var kCSRUnitsBoundLoAddress: UInt32 { get }
var kCSRMemoryBaseHiAddress: UInt32 { get }
var kCSRMemoryBaseLoAddress: UInt32 { get }
var kCSRMemoryBoundHiAddress: UInt32 { get }
var kCSRMemoryBoundLoAddress: UInt32 { get }
var kCSRInterruptTargetAddress: UInt32 { get }
var kCSRInterruptMaskAddress: UInt32 { get }
var kCSRClockValueHiAddress: UInt32 { get }
var kCSRClockValueMidAddress: UInt32 { get }
var kCSRClockTickPeriodMidAddress: UInt32 { get }
var kCSRClockTickPeriodLoAddress: UInt32 { get }
var kCSRClockStrobeArrivedHiAddress: UInt32 { get }
var kCSRClockStrobeArrivedMidAddress: UInt32 { get }
var kCSRClockInfo0Address: UInt32 { get }
var kCSRClockInfo1Address: UInt32 { get }
var kCSRClockInfo2Address: UInt32 { get }
var kCSRClockInfo3Address: UInt32 { get }
var kCSRMessageRequestAddress: UInt32 { get }
var kCSRMessageResponseAddress: UInt32 { get }
var kCSRErrorLogBufferAddress: UInt32 { get }
var kCSRBusDependentRegistersBaseAddress: UInt32 { get }
var kCSRBusyTimeout: UInt32 { get }
var kCSRBusManagerID: UInt32 { get }
var kCSRBandwidthAvailable: UInt32 { get }
var kCSRChannelsAvailable31_0: UInt32 { get }
var kCSRChannelsAvailable63_32: UInt32 { get }
var kCSRBroadcastChannel: UInt32 { get }
var kConfigROMBaseAddress: UInt32 { get }
var kConfigBIBHeaderAddress: UInt32 { get }
var kConfigBIBBusNameAddress: UInt32 { get }
var kPCRBaseAddress: UInt32 { get }
var kFCPCommandAddress: UInt32 { get }
var kFCPResponseAddress: UInt32 { get }
var kBroadcastChannelInitialValues: UInt32 { get }
var kBroadcastChannelValidMask: Int32 { get }
typealias CSRNodeUniqueID = UInt64
var kFWCSRStateGone: Int { get }
var kFWCSRStateLinkOff: Int { get }
var kFWCSRStateCMstr: Int { get }
var kFWAddressBusID: Int { get }
var kFWAddressBusIDPhase: Int { get }
var kFWAddressNodeID: Int { get }
var kFWAddressNodeIDPhase: Int { get }
var kFWLocalBusID: Int { get }
var kFWBroadcastNodeID: Int { get }
var kFWBadNodeID: Int { get }
var kFWLocalBusAddress: Int { get }
var kFWBroadcastAddress: Int { get }
var kFWBIBHeaderAddress: Int { get }
var kFWBIBBusNameAddress: Int { get }
var kFWBIBNodeCapabilitiesAddress: Int { get }
var kFWBIBNodeUniqueIDHiAddress: Int { get }
var kFWBIBNodeUniqueIDLoAddress: Int { get }
var kFWBIBBusName: Int { get }
var kFWBIBIrmc: Int { get }
var kFWBIBCmc: Int { get }
var kFWBIBIsc: Int { get }
var kFWBIBBmc: Int { get }
var kFWBIBCycClkAcc: Int { get }
var kFWBIBCycClkAccPhase: Int { get }
var kFWBIBMaxRec: Int { get }
var kFWBIBMaxRecPhase: Int { get }
var kFWBIBMaxROM: Int { get }
var kFWBIBMaxROMPhase: Int { get }
var kFWBIBGeneration: Int { get }
var kFWBIBGenerationPhase: Int { get }
var kFWBIBLinkSpeed: Int { get }
var kFWBIBLinkSpeedPhase: Int { get }
var kConfigUnitSpecAppleA27: Int { get }
var kConfigUnitSpec1394TA1: Int { get }
var kConfigUnitSWVersMacintosh10: Int { get }
var kConfigUnitSWVersIIDC100: Int { get }
var kConfigUnitSWVersIIDC101: Int { get }
var kConfigUnitSWVersIIDC102: Int { get }
var kFWIsochDataLength: UInt32 { get }
var kFWIsochDataLengthPhase: UInt32 { get }
var kFWIsochTag: UInt32 { get }
var kFWIsochTagPhase: UInt32 { get }
var kFWIsochChanNum: UInt32 { get }
var kFWIsochChanNumPhase: UInt32 { get }
var kFWIsochTCode: UInt32 { get }
var kFWIsochTCodePhase: UInt32 { get }
var kFWIsochSy: UInt32 { get }
var kFWIsochSyPhase: UInt32 { get }
struct IOFWIsochResourceFlags : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWNeverMultiMode: IOFWIsochResourceFlags { get }
var kFWAllowMultiMode: IOFWIsochResourceFlags { get }
var kFWSuggestMultiMode: IOFWIsochResourceFlags { get }
var kFWAlwaysMultiMode: IOFWIsochResourceFlags { get }
var kFWDefaultIsochResourceFlags: IOFWIsochResourceFlags { get }
var kFWIsochChannelDefaultFlags: Int { get }
var kFWIsochChannelDoNotResumeOnWake: Int { get }
struct IOFWIsochPortOptions : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWIsochPortDefaultOptions: IOFWIsochPortOptions { get }
var kFWIsochPortUseSeparateKernelThread: IOFWIsochPortOptions { get }
var kFWIsochEnableRobustness: IOFWIsochPortOptions { get }
var kFWIsochBigEndianUpdates: IOFWIsochPortOptions { get }
var kFWIsochRequireLastContext: IOFWIsochPortOptions { get }
var kFWDCLImmediateEvent: Int { get }
var kFWDCLCycleEvent: Int { get }
var kFWDCLSyBitsEvent: Int { get }
struct IOFWDCLNotificationType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWDCLInvalidNotification: IOFWDCLNotificationType { get }
var kFWDCLUpdateNotification: IOFWDCLNotificationType { get }
var kFWDCLModifyNotification: IOFWDCLNotificationType { get }
var kFWNuDCLModifyNotification: IOFWDCLNotificationType { get }
var kFWNuDCLModifyJumpNotification: IOFWDCLNotificationType { get }
var kFWNuDCLUpdateNotification: IOFWDCLNotificationType { get }
var kFWDCLOpDynamicFlag: UInt32 { get }
var kFWDCLOpVendorDefinedFlag: UInt32 { get }
var kFWDCLOpFlagMask: UInt32 { get }
var kFWDCLOpFlagPhase: UInt32 { get }
var kDCLInvalidOp: Int { get }
var kDCLSendPacketStartOp: Int { get }
var kDCLSendPacketOp: Int { get }
var kDCLSendBufferOp: Int { get }
var kDCLReceivePacketStartOp: Int { get }
var kDCLReceivePacketOp: Int { get }
var kDCLReceiveBufferOp: Int { get }
var kDCLCallProcOp: Int { get }
var kDCLLabelOp: Int { get }
var kDCLJumpOp: Int { get }
var kDCLSetTagSyncBitsOp: Int { get }
var kDCLUpdateDCLListOp: Int { get }
var kDCLTimeStampOp: Int { get }
var kDCLPtrTimeStampOp: Int { get }
var kDCLSkipCycleOp: Int { get }
var kDCLNuDCLLeaderOp: Int { get }
typealias DCLCallProcDataType = UnsafeMutableRawPointer
typealias DCLCompilerDataType = UInt32
struct DCLCommandStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommandStruct>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var operands: (UInt32)
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommandStruct>!, compilerData: DCLCompilerDataType, opcode: UInt32, operands: (UInt32))
}
typealias DCLCommand = DCLCommandStruct
typealias DCLCallCommandProc = ((UnsafeMutablePointer<DCLCommand>?) -> Void)
struct DCLTransferPacketStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var buffer: UnsafeMutableRawPointer!
  var size: UInt32
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, buffer: UnsafeMutableRawPointer!, size: UInt32)
}
typealias DCLTransferPacket = DCLTransferPacketStruct
struct DCLTransferBufferStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var buffer: UnsafeMutableRawPointer!
  var size: UInt32
  var packetSize: UInt16
  var reserved: UInt16
  var bufferOffset: UInt32
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, buffer: UnsafeMutableRawPointer!, size: UInt32, packetSize: UInt16, reserved: UInt16, bufferOffset: UInt32)
}
typealias DCLTransferBuffer = DCLTransferBufferStruct
struct DCLCallProcStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var proc: (@convention(c) (UnsafeMutablePointer<DCLCommand>?) -> Void)!
  var procData: DCLCallProcDataType!
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, proc: (@convention(c) (UnsafeMutablePointer<DCLCommand>?) -> Void)!, procData: DCLCallProcDataType!)
}
typealias DCLCallProc = DCLCallProcStruct
struct DCLLabelStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32)
}
typealias DCLLabel = DCLLabelStruct
struct DCLJumpStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var pJumpDCLLabel: UnsafeMutablePointer<DCLLabel>!
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, pJumpDCLLabel: UnsafeMutablePointer<DCLLabel>!)
}
typealias DCLJump = DCLJumpStruct
struct DCLSetTagSyncBitsStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var tagBits: UInt16
  var syncBits: UInt16
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, tagBits: UInt16, syncBits: UInt16)
}
typealias DCLSetTagSyncBits = DCLSetTagSyncBitsStruct
struct DCLUpdateDCLListStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var dclCommandList: UnsafeMutablePointer<UnsafeMutablePointer<DCLCommand>?>!
  var numDCLCommands: UInt32
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, dclCommandList: UnsafeMutablePointer<UnsafeMutablePointer<DCLCommand>?>!, numDCLCommands: UInt32)
}
typealias DCLUpdateDCLList = DCLUpdateDCLListStruct
struct DCLTimeStampStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var timeStamp: UInt32
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, timeStamp: UInt32)
}
typealias DCLTimeStamp = DCLTimeStampStruct
struct DCLPtrTimeStampStruct {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var timeStampPtr: UnsafeMutablePointer<UInt32>!
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, timeStampPtr: UnsafeMutablePointer<UInt32>!)
}
typealias DCLPtrTimeStamp = DCLPtrTimeStampStruct
struct DCLNuDCLLeader {
  var pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!
  var compilerData: DCLCompilerDataType
  var opcode: UInt32
  var program: UnsafeMutableRawPointer!
  init()
  init(pNextDCLCommand: UnsafeMutablePointer<DCLCommand>!, compilerData: DCLCompilerDataType, opcode: UInt32, program: UnsafeMutableRawPointer!)
}
typealias DCLCommandPtr = UnsafeMutablePointer<DCLCommand>
typealias DCLTransferBufferPtr = UnsafeMutablePointer<DCLTransferBuffer>
typealias DCLTransferPacketPtr = UnsafeMutablePointer<DCLTransferPacket>
typealias DCLCallProcPtr = UnsafeMutablePointer<DCLCallProc>
typealias DCLLabelPtr = UnsafeMutablePointer<DCLLabel>
typealias DCLJumpPtr = UnsafeMutablePointer<DCLJump>
typealias DCLSetTagSyncBitsPtr = UnsafeMutablePointer<DCLSetTagSyncBits>
typealias DCLUpdateDCLListPtr = UnsafeMutablePointer<DCLUpdateDCLList>
typealias DCLTimeStampPtr = UnsafeMutablePointer<DCLTimeStamp>
typealias DCLPtrTimeStampPtr = UnsafeMutablePointer<DCLPtrTimeStamp>
typealias DCLCallCommandProcPtr = @convention(c) (UnsafeMutablePointer<DCLCommand>?) -> Void
struct UserExportDCLCommandStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var operands: (UInt32)
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, operands: (UInt32))
}
typealias UserExportDCLCommand = UserExportDCLCommandStruct
typealias UserExportDCLCallCommandProc = ((UnsafeMutablePointer<UserExportDCLCommand>?) -> Void)
struct UserExportDCLTransferPacketStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var buffer: mach_vm_address_t
  var size: UInt32
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, buffer: mach_vm_address_t, size: UInt32)
}
typealias UserExportDCLTransferPacket = UserExportDCLTransferPacketStruct
struct UserExportDCLTransferBufferStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var buffer: mach_vm_address_t
  var size: UInt32
  var packetSize: UInt16
  var reserved: UInt16
  var bufferOffset: UInt32
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, buffer: mach_vm_address_t, size: UInt32, packetSize: UInt16, reserved: UInt16, bufferOffset: UInt32)
}
typealias UserExportDCLTransferBuffer = UserExportDCLTransferBufferStruct
struct UserExportDCLCallProcStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var proc: mach_vm_address_t
  var procData: UInt64
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, proc: mach_vm_address_t, procData: UInt64)
}
typealias UserExportDCLCallProc = UserExportDCLCallProcStruct
struct UserExportDCLLabelStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32)
}
typealias UserExportDCLLabel = UserExportDCLLabelStruct
struct UserExportDCLJumpStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var pJumpDCLLabel: mach_vm_address_t
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, pJumpDCLLabel: mach_vm_address_t)
}
typealias UserExportDCLJump = UserExportDCLJumpStruct
struct UserExportDCLSetTagSyncBitsStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var tagBits: UInt16
  var syncBits: UInt16
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, tagBits: UInt16, syncBits: UInt16)
}
typealias UserExportDCLSetTagSyncBits = UserExportDCLSetTagSyncBitsStruct
struct UserExportDCLUpdateDCLListStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var dclCommandList: mach_vm_address_t
  var numDCLCommands: UInt32
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, dclCommandList: mach_vm_address_t, numDCLCommands: UInt32)
}
typealias UserExportDCLUpdateDCLList = UserExportDCLUpdateDCLListStruct
struct UserExportDCLTimeStampStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var timeStamp: UInt32
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, timeStamp: UInt32)
}
typealias UserExportDCLTimeStamp = UserExportDCLTimeStampStruct
struct UserExportDCLPtrTimeStampStruct {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var timeStampPtr: mach_vm_address_t
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, timeStampPtr: mach_vm_address_t)
}
typealias UserExportDCLPtrTimeStamp = UserExportDCLPtrTimeStampStruct
struct UserExportDCLNuDCLLeader {
  var pClientDCLStruct: mach_vm_address_t
  var pNextDCLCommand: mach_vm_address_t
  var compilerData: UInt64
  var opcode: UInt32
  var program: mach_vm_address_t
  init()
  init(pClientDCLStruct: mach_vm_address_t, pNextDCLCommand: mach_vm_address_t, compilerData: UInt64, opcode: UInt32, program: mach_vm_address_t)
}
typealias NuDCLRef = OpaquePointer
typealias NuDCLSendPacketRef = NuDCLRef
typealias NuDCLSkipCycleRef = NuDCLRef
typealias NuDCLReceivePacketRef = NuDCLRef
typealias NuDCLCallback = @convention(c) (UnsafeMutableRawPointer?, NuDCLRef?) -> Void
struct NuDCLFlags : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kNuDCLDynamic: NuDCLFlags { get }
var kNuDCLUpdateBeforeCallback: NuDCLFlags { get }
typealias FWClientCommandID = UnsafeMutableRawPointer
typealias IOFireWireSessionRef = OpaquePointer
var kFWBusManagerArbitrationTimeoutDuration: Int { get }
var kFWMaxBusses: Int { get }
var kFWMaxNodesPerBus: Int { get }
var kFWMaxNodeHops: Int { get }
var kIOFWDisablePhysicalAccess: Int { get }
var kIOFWDisableAllPhysicalAccess: Int { get }
var kIOFWEnableRetryOnAckD: Int { get }
var kIOFWLimitAsyncPacketSize: Int { get }
var kIOFWDisablePhyOnSleep: Int { get }
var kIOFWMustBeRoot: Int { get }
var kIOFWMustNotBeRoot: Int { get }
var kIOFWMustHaveGap63: Int { get }
struct IOFWWriteFlags : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOFWWriteFlagsNone: IOFWWriteFlags { get }
var kIOFWWriteFlagsDeferredNotify: IOFWWriteFlags { get }
var kIOFWWriteFastRetryOnBusy: IOFWWriteFlags { get }
var kIOFWWriteBlockRequest: IOFWWriteFlags { get }
struct IOFWReadFlags : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOFWReadFlagsNone: IOFWReadFlags { get }
var kIOFWReadBlockRequest: IOFWReadFlags { get }
var kIOFWReadPingTime: IOFWReadFlags { get }
struct IOFWSecurityMode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOFWSecurityModeNormal: IOFWSecurityMode { get }
var kIOFWSecurityModeSecure: IOFWSecurityMode { get }
var kIOFWSecurityModeSecurePermanent: IOFWSecurityMode { get }
struct IOFWPhysicalAccessMode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOFWPhysicalAccessEnabled: IOFWPhysicalAccessMode { get }
var kIOFWPhysicalAccessDisabled: IOFWPhysicalAccessMode { get }
var kIOFWPhysicalAccessDisabledForGeneration: IOFWPhysicalAccessMode { get }
var kIOFWSpecID_AAPL: Int { get }
var kIOFWSWVers_KPF: Int { get }
typealias IOFireWireLibDeviceRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireDeviceInterface_t>?>
typealias IOFireWireLibUnitRef = IOFireWireLibDeviceRef
typealias IOFireWireLibNubRef = IOFireWireLibDeviceRef
typealias IOFireWireLibPseudoAddressSpaceRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWirePseudoAddressSpaceInterface_t>?>
typealias IOFireWireLibPhysicalAddressSpaceRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWirePhysicalAddressSpaceInterface_t>?>
typealias IOFireWireLibLocalUnitDirectoryRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireLocalUnitDirectoryInterface_t>?>
typealias IOFireWireLibConfigDirectoryRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireConfigDirectoryInterface_t>?>
typealias IOFireWireLibCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireCommandInterface_t>?>
typealias IOFireWireLibReadCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireReadCommandInterface_t>?>
typealias IOFireWireLibReadQuadletCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireReadQuadletCommandInterface_t>?>
typealias IOFireWireLibWriteCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireWriteCommandInterface_t>?>
typealias IOFireWireLibWriteQuadletCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireWriteQuadletCommandInterface_t>?>
typealias IOFireWireLibCompareSwapCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireCompareSwapCommandInterface_t>?>
typealias IOFireWireLibVectorCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireLibVectorCommandInterface_t>?>
typealias IOFireWireLibPHYCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWirePHYCommandInterface_t>?>
typealias IOFireWireLibAsyncStreamCommandRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireAsyncStreamCommandInterface_t>?>
typealias IOFireWireLibCompareSwapCommandV3Ref = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireCompareSwapCommandInterface_v3_t>?>
typealias IOFireWireLibIRMAllocationRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireLibIRMAllocationInterface_t>?>
typealias IOFireWireLibIsochChannelRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireIsochChannelInterface_t>?>
typealias IOFireWireLibIsochPortRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireIsochPortInterface_t>?>
typealias IOFireWireLibRemoteIsochPortRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireRemoteIsochPortInterface_t>?>
typealias IOFireWireLibLocalIsochPortRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireLocalIsochPortInterface_t>?>
typealias IOFireWireLibDCLCommandPoolRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireDCLCommandPoolInterface_t>?>
typealias IOFireWireLibNuDCLPoolRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireNuDCLPoolInterface_t>?>
typealias IOFWAsyncStreamListenerInterfaceRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFWAsyncStreamListenerInterface_t>?>
typealias IOFireWireLibPHYPacketListenerRef = UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireLibPHYPacketListenerInterface_t>?>
typealias IOFireWirePseudoAddressSpaceReadHandler = @convention(c) (IOFireWireLibPseudoAddressSpaceRef?, FWClientCommandID?, UInt32, UInt32, UInt16, UInt32, UInt32, UnsafeMutableRawPointer?) -> UInt32
typealias IOFireWirePseudoAddressSpaceSkippedPacketHandler = @convention(c) (IOFireWireLibPseudoAddressSpaceRef?, FWClientCommandID?, UInt32) -> Void
typealias IOFireWirePseudoAddressSpaceWriteHandler = @convention(c) (IOFireWireLibPseudoAddressSpaceRef?, FWClientCommandID?, UInt32, UnsafeMutableRawPointer?, UInt16, UInt32, UInt32, UnsafeMutableRawPointer?) -> UInt32
typealias IOFireWireBusResetHandler = @convention(c) (IOFireWireLibDeviceRef?, FWClientCommandID?) -> Void
typealias IOFireWireBusResetDoneHandler = @convention(c) (IOFireWireLibDeviceRef?, FWClientCommandID?) -> Void
typealias IOFireWireLibCommandCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn) -> Void
typealias IOFireWireLibPHYPacketCallback = @convention(c) (IOFireWireLibPHYPacketListenerRef?, FWClientCommandID?, UInt32, UInt32, UnsafeMutableRawPointer?) -> Void
typealias IOFireWireLibPHYPacketSkippedCallback = @convention(c) (IOFireWireLibPHYPacketListenerRef?, FWClientCommandID?, UInt32, UnsafeMutableRawPointer?) -> Void
typealias IOFireWireLibIRMAllocationLostNotificationProc = @convention(c) (IOFireWireLibIRMAllocationRef?, UnsafeMutableRawPointer?) -> Void
typealias IOFWAsyncStreamListenerHandler = @convention(c) (IOFWAsyncStreamListenerInterfaceRef?, FWClientCommandID?, UInt32, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> UInt32
typealias IOFWAsyncStreamListenerSkippedPacketHandler = @convention(c) (IOFWAsyncStreamListenerInterfaceRef?, FWClientCommandID?, UInt32) -> Void
struct IOFireWireDeviceInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var InterfaceIsInited: (@convention(c) (IOFireWireLibDeviceRef?) -> DarwinBoolean)!
  var GetDevice: (@convention(c) (IOFireWireLibDeviceRef?) -> io_object_t)!
  var Open: (@convention(c) (IOFireWireLibDeviceRef?) -> IOReturn)!
  var OpenWithSessionRef: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireSessionRef?) -> IOReturn)!
  var Close: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!
  var NotificationIsOn: (@convention(c) (IOFireWireLibDeviceRef?) -> DarwinBoolean)!
  var AddCallbackDispatcherToRunLoop: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?) -> IOReturn)!
  var RemoveCallbackDispatcherFromRunLoop: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!
  var TurnOnNotification: (@convention(c) (IOFireWireLibDeviceRef?) -> DarwinBoolean)!
  var TurnOffNotification: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!
  var SetBusResetHandler: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireBusResetHandler?) -> IOFireWireBusResetHandler?)!
  var SetBusResetDoneHandler: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireBusResetDoneHandler?) -> IOFireWireBusResetDoneHandler?)!
  var ClientCommandIsComplete: (@convention(c) (IOFireWireLibDeviceRef?, FWClientCommandID?, IOReturn) -> Void)!
  var Read: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, DarwinBoolean, UInt32) -> IOReturn)!
  var ReadQuadlet: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, DarwinBoolean, UInt32) -> IOReturn)!
  var Write: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>?, DarwinBoolean, UInt32) -> IOReturn)!
  var WriteQuadlet: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt32, DarwinBoolean, UInt32) -> IOReturn)!
  var CompareSwap: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt32, UInt32, DarwinBoolean, UInt32) -> IOReturn)!
  var CreateReadCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutableRawPointer?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var CreateReadQuadletCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var CreateWriteCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutableRawPointer?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var CreateWriteQuadletCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var CreateCompareSwapCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt32, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var BusReset: (@convention(c) (IOFireWireLibDeviceRef?) -> IOReturn)!
  var GetCycleTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetGenerationAndNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt16>?) -> IOReturn)!
  var GetLocalNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt16>?) -> IOReturn)!
  var GetResetTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<AbsoluteTime>?) -> IOReturn)!
  var CreateLocalUnitDirectory: (@convention(c) (IOFireWireLibDeviceRef?, REFIID) -> IOFireWireLibLocalUnitDirectoryRef?)!
  var GetConfigDirectory: (@convention(c) (IOFireWireLibDeviceRef?, REFIID) -> IOFireWireLibConfigDirectoryRef?)!
  var CreateConfigDirectoryWithIOObject: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, REFIID) -> IOFireWireLibConfigDirectoryRef?)!
  var CreatePseudoAddressSpace: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutableRawPointer?, UInt32, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFireWireLibPseudoAddressSpaceRef?)!
  var CreatePhysicalAddressSpace: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFireWireLibPhysicalAddressSpaceRef?)!
  var FireBugMsg: (@convention(c) (IOFireWireLibDeviceRef?, UnsafePointer<CChar>?) -> IOReturn)!
  var AddIsochCallbackDispatcherToRunLoop: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?) -> IOReturn)!
  var CreateRemoteIsochPort: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, REFIID) -> IOFireWireLibRemoteIsochPortRef?)!
  var CreateLocalIsochPort: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, UnsafeMutablePointer<DCLCommand>?, UInt32, UInt32, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, REFIID) -> IOFireWireLibLocalIsochPortRef?)!
  var CreateIsochChannel: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, UInt32, IOFWSpeed, REFIID) -> IOFireWireLibIsochChannelRef?)!
  var CreateDCLCommandPool: (@convention(c) (IOFireWireLibDeviceRef?, IOByteCount, REFIID) -> IOFireWireLibDCLCommandPoolRef?)!
  var GetRefCon: (@convention(c) (IOFireWireLibDeviceRef?) -> UnsafeMutableRawPointer?)!
  var SetRefCon: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeRawPointer?) -> Void)!
  var GetDebugProperty: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutableRawPointer?, CFString?, UnsafeMutablePointer<CFTypeID>?) -> Unmanaged<CFTypeRef>?)!
  var PrintDCLProgram: (@convention(c) (IOFireWireLibDeviceRef?, UnsafePointer<DCLCommand>?, UInt32) -> Void)!
  var CreateInitialUnitsPseudoAddressSpace: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32, UnsafeMutableRawPointer?, UInt32, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFireWireLibPseudoAddressSpaceRef?)!
  var AddCallbackDispatcherToRunLoopForMode: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?, CFString?) -> IOReturn)!
  var AddIsochCallbackDispatcherToRunLoopForMode: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?, CFString?) -> IOReturn)!
  var RemoveIsochCallbackDispatcherFromRunLoop: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!
  var Seize: OpaquePointer!
  var FireLog: OpaquePointer!
  var GetBusCycleTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var CreateCompareSwapCommand64: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt64, UInt64, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var CompareSwap64: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, IOByteCount, DarwinBoolean, UInt32) -> IOReturn)!
  var GetBusGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetLocalNodeIDWithGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<UInt16>?) -> IOReturn)!
  var GetRemoteNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<UInt16>?) -> IOReturn)!
  var GetSpeedToNode: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<IOFWSpeed>?) -> IOReturn)!
  var GetSpeedBetweenNodes: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt16, UInt16, UnsafeMutablePointer<IOFWSpeed>?) -> IOReturn)!
  var GetIRMNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<UInt16>?) -> IOReturn)!
  var ClipMaxRec2K: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean) -> IOReturn)!
  var CreateNuDCLPool: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, REFIID) -> IOFireWireLibNuDCLPoolRef?)!
  var GetSessionRef: (@convention(c) (IOFireWireLibDeviceRef?) -> IOFireWireSessionRef?)!
  var CreateLocalIsochPortWithOptions: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, UnsafeMutablePointer<DCLCommand>?, UInt32, UInt32, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, IOFWIsochPortOptions, REFIID) -> IOFireWireLibLocalIsochPortRef?)!
  var CreateVectorCommand: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireLibCommandCallback?, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibVectorCommandRef?)!
  var AllocateIRMBandwidthInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32) -> IOReturn)!
  var ReleaseIRMBandwidthInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32) -> IOReturn)!
  var AllocateIRMChannelInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt8, UInt32) -> IOReturn)!
  var ReleaseIRMChannelInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt8, UInt32) -> IOReturn)!
  var CreateIRMAllocation: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, IOFireWireLibIRMAllocationLostNotificationProc?, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibIRMAllocationRef?)!
  var CreateAsyncStreamListener: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, IOFWAsyncStreamListenerHandler?, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFWAsyncStreamListenerInterfaceRef?)!
  var GetIsochAsyncPort: (@convention(c) (IOFireWireLibDeviceRef?) -> mach_port_t)!
  var CreatePHYCommand: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var CreatePHYPacketListener: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, REFIID) -> IOFireWireLibPHYPacketListenerRef?)!
  var CreateAsyncStreamCommand: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32, UInt32, UnsafeMutableRawPointer?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!
  var GetCycleTimeAndUpTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, InterfaceIsInited: (@convention(c) (IOFireWireLibDeviceRef?) -> DarwinBoolean)!, GetDevice: (@convention(c) (IOFireWireLibDeviceRef?) -> io_object_t)!, Open: (@convention(c) (IOFireWireLibDeviceRef?) -> IOReturn)!, OpenWithSessionRef: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireSessionRef?) -> IOReturn)!, Close: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!, NotificationIsOn: (@convention(c) (IOFireWireLibDeviceRef?) -> DarwinBoolean)!, AddCallbackDispatcherToRunLoop: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?) -> IOReturn)!, RemoveCallbackDispatcherFromRunLoop: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!, TurnOnNotification: (@convention(c) (IOFireWireLibDeviceRef?) -> DarwinBoolean)!, TurnOffNotification: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!, SetBusResetHandler: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireBusResetHandler?) -> IOFireWireBusResetHandler?)!, SetBusResetDoneHandler: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireBusResetDoneHandler?) -> IOFireWireBusResetDoneHandler?)!, ClientCommandIsComplete: (@convention(c) (IOFireWireLibDeviceRef?, FWClientCommandID?, IOReturn) -> Void)!, Read: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, DarwinBoolean, UInt32) -> IOReturn)!, ReadQuadlet: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, DarwinBoolean, UInt32) -> IOReturn)!, Write: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>?, DarwinBoolean, UInt32) -> IOReturn)!, WriteQuadlet: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt32, DarwinBoolean, UInt32) -> IOReturn)!, CompareSwap: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt32, UInt32, DarwinBoolean, UInt32) -> IOReturn)!, CreateReadCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutableRawPointer?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, CreateReadQuadletCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, CreateWriteCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutableRawPointer?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, CreateWriteQuadletCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, CreateCompareSwapCommand: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt32, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, BusReset: (@convention(c) (IOFireWireLibDeviceRef?) -> IOReturn)!, GetCycleTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetGenerationAndNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt16>?) -> IOReturn)!, GetLocalNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt16>?) -> IOReturn)!, GetResetTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<AbsoluteTime>?) -> IOReturn)!, CreateLocalUnitDirectory: (@convention(c) (IOFireWireLibDeviceRef?, REFIID) -> IOFireWireLibLocalUnitDirectoryRef?)!, GetConfigDirectory: (@convention(c) (IOFireWireLibDeviceRef?, REFIID) -> IOFireWireLibConfigDirectoryRef?)!, CreateConfigDirectoryWithIOObject: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, REFIID) -> IOFireWireLibConfigDirectoryRef?)!, CreatePseudoAddressSpace: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutableRawPointer?, UInt32, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFireWireLibPseudoAddressSpaceRef?)!, CreatePhysicalAddressSpace: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFireWireLibPhysicalAddressSpaceRef?)!, FireBugMsg: (@convention(c) (IOFireWireLibDeviceRef?, UnsafePointer<CChar>?) -> IOReturn)!, AddIsochCallbackDispatcherToRunLoop: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?) -> IOReturn)!, CreateRemoteIsochPort: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, REFIID) -> IOFireWireLibRemoteIsochPortRef?)!, CreateLocalIsochPort: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, UnsafeMutablePointer<DCLCommand>?, UInt32, UInt32, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, REFIID) -> IOFireWireLibLocalIsochPortRef?)!, CreateIsochChannel: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, UInt32, IOFWSpeed, REFIID) -> IOFireWireLibIsochChannelRef?)!, CreateDCLCommandPool: (@convention(c) (IOFireWireLibDeviceRef?, IOByteCount, REFIID) -> IOFireWireLibDCLCommandPoolRef?)!, GetRefCon: (@convention(c) (IOFireWireLibDeviceRef?) -> UnsafeMutableRawPointer?)!, SetRefCon: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeRawPointer?) -> Void)!, GetDebugProperty: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutableRawPointer?, CFString?, UnsafeMutablePointer<CFTypeID>?) -> Unmanaged<CFTypeRef>?)!, PrintDCLProgram: (@convention(c) (IOFireWireLibDeviceRef?, UnsafePointer<DCLCommand>?, UInt32) -> Void)!, CreateInitialUnitsPseudoAddressSpace: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32, UnsafeMutableRawPointer?, UInt32, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFireWireLibPseudoAddressSpaceRef?)!, AddCallbackDispatcherToRunLoopForMode: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?, CFString?) -> IOReturn)!, AddIsochCallbackDispatcherToRunLoopForMode: (@convention(c) (IOFireWireLibDeviceRef?, CFRunLoop?, CFString?) -> IOReturn)!, RemoveIsochCallbackDispatcherFromRunLoop: (@convention(c) (IOFireWireLibDeviceRef?) -> Void)!, Seize: OpaquePointer!, FireLog: OpaquePointer!, GetBusCycleTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, CreateCompareSwapCommand64: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UInt64, UInt64, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, CompareSwap64: (@convention(c) (IOFireWireLibDeviceRef?, io_object_t, UnsafePointer<FWAddress>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, IOByteCount, DarwinBoolean, UInt32) -> IOReturn)!, GetBusGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetLocalNodeIDWithGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<UInt16>?) -> IOReturn)!, GetRemoteNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<UInt16>?) -> IOReturn)!, GetSpeedToNode: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<IOFWSpeed>?) -> IOReturn)!, GetSpeedBetweenNodes: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt16, UInt16, UnsafeMutablePointer<IOFWSpeed>?) -> IOReturn)!, GetIRMNodeID: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UnsafeMutablePointer<UInt16>?) -> IOReturn)!, ClipMaxRec2K: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean) -> IOReturn)!, CreateNuDCLPool: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, REFIID) -> IOFireWireLibNuDCLPoolRef?)!, GetSessionRef: (@convention(c) (IOFireWireLibDeviceRef?) -> IOFireWireSessionRef?)!, CreateLocalIsochPortWithOptions: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, UnsafeMutablePointer<DCLCommand>?, UInt32, UInt32, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, UnsafeMutablePointer<IOVirtualRange>?, UInt32, IOFWIsochPortOptions, REFIID) -> IOFireWireLibLocalIsochPortRef?)!, CreateVectorCommand: (@convention(c) (IOFireWireLibDeviceRef?, IOFireWireLibCommandCallback?, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibVectorCommandRef?)!, AllocateIRMBandwidthInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32) -> IOReturn)!, ReleaseIRMBandwidthInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32) -> IOReturn)!, AllocateIRMChannelInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt8, UInt32) -> IOReturn)!, ReleaseIRMChannelInGeneration: (@convention(c) (IOFireWireLibDeviceRef?, UInt8, UInt32) -> IOReturn)!, CreateIRMAllocation: (@convention(c) (IOFireWireLibDeviceRef?, DarwinBoolean, IOFireWireLibIRMAllocationLostNotificationProc?, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibIRMAllocationRef?)!, CreateAsyncStreamListener: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, IOFWAsyncStreamListenerHandler?, UnsafeMutableRawPointer?, UInt32, REFIID) -> IOFWAsyncStreamListenerInterfaceRef?)!, GetIsochAsyncPort: (@convention(c) (IOFireWireLibDeviceRef?) -> mach_port_t)!, CreatePHYCommand: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, CreatePHYPacketListener: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, REFIID) -> IOFireWireLibPHYPacketListenerRef?)!, CreateAsyncStreamCommand: (@convention(c) (IOFireWireLibDeviceRef?, UInt32, UInt32, UInt32, UnsafeMutableRawPointer?, UInt32, IOFireWireLibCommandCallback?, DarwinBoolean, UInt32, UnsafeMutableRawPointer?, REFIID) -> IOFireWireLibCommandRef?)!, GetCycleTimeAndUpTime: (@convention(c) (IOFireWireLibDeviceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!)
}
typealias IOFireWireDeviceInterface = IOFireWireDeviceInterface_t
typealias IOFireWireUnitInterface = IOFireWireDeviceInterface_t
typealias IOFireWireNubInterface = IOFireWireDeviceInterface_t
struct FWAddressSpaceFlags : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kFWAddressSpaceNoFlags: FWAddressSpaceFlags { get }
var kFWAddressSpaceNoWriteAccess: FWAddressSpaceFlags { get }
var kFWAddressSpaceNoReadAccess: FWAddressSpaceFlags { get }
var kFWAddressSpaceAutoWriteReply: FWAddressSpaceFlags { get }
var kFWAddressSpaceAutoReadReply: FWAddressSpaceFlags { get }
var kFWAddressSpaceAutoCopyOnWrite: FWAddressSpaceFlags { get }
var kFWAddressSpaceShareIfExists: FWAddressSpaceFlags { get }
var kFWAddressSpaceExclusive: FWAddressSpaceFlags { get }
struct IOFireWirePseudoAddressSpaceInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var SetWriteHandler: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, IOFireWirePseudoAddressSpaceWriteHandler?) -> IOFireWirePseudoAddressSpaceWriteHandler?)!
  var SetReadHandler: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, IOFireWirePseudoAddressSpaceReadHandler?) -> IOFireWirePseudoAddressSpaceReadHandler?)!
  var SetSkippedPacketHandler: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, IOFireWirePseudoAddressSpaceSkippedPacketHandler?) -> IOFireWirePseudoAddressSpaceSkippedPacketHandler?)!
  var NotificationIsOn: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> DarwinBoolean)!
  var TurnOnNotification: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> DarwinBoolean)!
  var TurnOffNotification: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> Void)!
  var ClientCommandIsComplete: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, FWClientCommandID?, IOReturn) -> Void)!
  var GetFWAddress: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> UnsafeMutableRawPointer?)!
  var GetBufferSize: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> UInt32)!
  var GetRefCon: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> UnsafeMutableRawPointer?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, SetWriteHandler: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, IOFireWirePseudoAddressSpaceWriteHandler?) -> IOFireWirePseudoAddressSpaceWriteHandler?)!, SetReadHandler: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, IOFireWirePseudoAddressSpaceReadHandler?) -> IOFireWirePseudoAddressSpaceReadHandler?)!, SetSkippedPacketHandler: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, IOFireWirePseudoAddressSpaceSkippedPacketHandler?) -> IOFireWirePseudoAddressSpaceSkippedPacketHandler?)!, NotificationIsOn: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> DarwinBoolean)!, TurnOnNotification: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> DarwinBoolean)!, TurnOffNotification: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> Void)!, ClientCommandIsComplete: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, FWClientCommandID?, IOReturn) -> Void)!, GetFWAddress: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> UnsafeMutableRawPointer?)!, GetBufferSize: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> UInt32)!, GetRefCon: (@convention(c) (IOFireWireLibPseudoAddressSpaceRef?) -> UnsafeMutableRawPointer?)!)
}
typealias IOFireWirePseudoAddressSpaceInterface = IOFireWirePseudoAddressSpaceInterface_t
struct IOFireWireLibIRMAllocationInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var setReleaseIRMResourcesOnFree: (@convention(c) (IOFireWireLibIRMAllocationRef?, DarwinBoolean) -> Void)!
  var allocateIsochResources: (@convention(c) (IOFireWireLibIRMAllocationRef?, UInt8, UInt32) -> IOReturn)!
  var deallocateIsochResources: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> IOReturn)!
  var areIsochResourcesAllocated: (@convention(c) (IOFireWireLibIRMAllocationRef?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> DarwinBoolean)!
  var NotificationIsOn: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> DarwinBoolean)!
  var TurnOnNotification: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> DarwinBoolean)!
  var TurnOffNotification: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibIRMAllocationRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> UnsafeMutableRawPointer?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, setReleaseIRMResourcesOnFree: (@convention(c) (IOFireWireLibIRMAllocationRef?, DarwinBoolean) -> Void)!, allocateIsochResources: (@convention(c) (IOFireWireLibIRMAllocationRef?, UInt8, UInt32) -> IOReturn)!, deallocateIsochResources: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> IOReturn)!, areIsochResourcesAllocated: (@convention(c) (IOFireWireLibIRMAllocationRef?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> DarwinBoolean)!, NotificationIsOn: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> DarwinBoolean)!, TurnOnNotification: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> DarwinBoolean)!, TurnOffNotification: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibIRMAllocationRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibIRMAllocationRef?) -> UnsafeMutableRawPointer?)!)
}
typealias IOFireWireLibIRMAllocationInterface = IOFireWireLibIRMAllocationInterface_t
struct IOFireWireLocalUnitDirectoryInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var AddEntry_Ptr: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?, Int32, UnsafeMutableRawPointer?, Int, CFString?) -> IOReturn)!
  var AddEntry_UInt32: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?, Int32, UInt32, CFString?) -> IOReturn)!
  var AddEntry_FWAddress: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?, Int32, UnsafePointer<FWAddress>?, CFString?) -> IOReturn)!
  var Publish: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?) -> IOReturn)!
  var Unpublish: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, AddEntry_Ptr: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?, Int32, UnsafeMutableRawPointer?, Int, CFString?) -> IOReturn)!, AddEntry_UInt32: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?, Int32, UInt32, CFString?) -> IOReturn)!, AddEntry_FWAddress: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?, Int32, UnsafePointer<FWAddress>?, CFString?) -> IOReturn)!, Publish: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?) -> IOReturn)!, Unpublish: (@convention(c) (IOFireWireLibLocalUnitDirectoryRef?) -> IOReturn)!)
}
typealias IOFireWireLocalUnitDirectoryInterface = IOFireWireLocalUnitDirectoryInterface_t
struct IOFireWirePhysicalAddressSpaceInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetPhysicalSegments: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<IOByteCount>?, UnsafeMutablePointer<IOPhysicalAddress>?) -> Void)!
  var GetPhysicalSegment: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?, IOByteCount, UnsafeMutablePointer<IOByteCount>?) -> IOPhysicalAddress)!
  var GetPhysicalAddress: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?) -> IOPhysicalAddress)!
  var GetFWAddress: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?) -> UnsafeMutableRawPointer?)!
  var GetBufferSize: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?) -> UInt32)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetPhysicalSegments: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<IOByteCount>?, UnsafeMutablePointer<IOPhysicalAddress>?) -> Void)!, GetPhysicalSegment: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?, IOByteCount, UnsafeMutablePointer<IOByteCount>?) -> IOPhysicalAddress)!, GetPhysicalAddress: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?) -> IOPhysicalAddress)!, GetFWAddress: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?) -> UnsafeMutableRawPointer?)!, GetBufferSize: (@convention(c) (IOFireWireLibPhysicalAddressSpaceRef?) -> UInt32)!)
}
typealias IOFireWirePhysicalAddressSpaceInterface = IOFireWirePhysicalAddressSpaceInterface_t
var kFireWireCommandUserFlagsMask: Int32 { get }
var kFWUserCommandSubmitWithCopyMaxBufferBytes: Int32 { get }
var kFWCommandNoFlags: Int { get }
var kFWCommandInterfaceForceNoCopy: Int { get }
var kFWCommandInterfaceForceCopyAlways: Int { get }
var kFWCommandInterfaceSyncExecute: Int { get }
var kFWCommandInterfaceAbsolute: Int { get }
var kFWVectorCommandInterfaceOrdered: Int { get }
var kFWCommandInterfaceForceBlockRequest: Int { get }
var kFWDontFailOnReset: Int { get }
var kFWFailOnReset: Int { get }
var kFireWireCommandUseCopy: Int { get }
var kFireWireCommandAbsolute: Int { get }
struct IOFireWireCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!
  var SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!, SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!)
}
typealias IOFireWireCommandInterface = IOFireWireCommandInterface_t
struct IOFireWireReadCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!
  var SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!, SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!)
}
typealias IOFireWireReadCommandInterface = IOFireWireReadCommandInterface_t
struct IOFireWireWriteCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!
  var SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!, SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!)
}
typealias IOFireWireWriteCommandInterface = IOFireWireWriteCommandInterface_t
struct IOFireWireCompareSwapCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetValues: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UInt32, UInt32) -> Void)!
  var SetValues64: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UInt64, UInt64) -> Void)!
  var DidLock: (@convention(c) (IOFireWireLibCompareSwapCommandRef?) -> DarwinBoolean)!
  var Locked: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var Locked64: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UInt32) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetValues: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UInt32, UInt32) -> Void)!, SetValues64: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UInt64, UInt64) -> Void)!, DidLock: (@convention(c) (IOFireWireLibCompareSwapCommandRef?) -> DarwinBoolean)!, Locked: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, Locked64: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCompareSwapCommandRef?, UInt32) -> Void)!)
}
typealias IOFireWireCompareSwapCommandInterface = IOFireWireCompareSwapCommandInterface_t
struct IOFireWireCompareSwapCommandInterface_v3_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!
  var SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!
  var SetValues: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UInt32, UInt32) -> Void)!
  var SetValues64: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UInt64, UInt64) -> Void)!
  var DidLock: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?) -> DarwinBoolean)!
  var Locked: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var Locked64: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!, SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!, SetValues: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UInt32, UInt32) -> Void)!, SetValues64: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UInt64, UInt64) -> Void)!, DidLock: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?) -> DarwinBoolean)!, Locked: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, Locked64: (@convention(c) (IOFireWireLibCompareSwapCommandV3Ref?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!)
}
typealias IOFireWireCompareSwapCommandInterface_v3 = IOFireWireCompareSwapCommandInterface_v3_t
struct IOFireWirePHYCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!
  var SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!
  var SetDataQuads: (@convention(c) (IOFireWireLibPHYCommandRef?, UInt32, UInt32) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!, SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!, SetDataQuads: (@convention(c) (IOFireWireLibPHYCommandRef?, UInt32, UInt32) -> Void)!)
}
typealias IOFireWirePHYCommandInterface = IOFireWirePHYCommandInterface_t
struct IOFireWireAsyncStreamCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!
  var GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!
  var SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!
  var SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!
  var SetChannel: (@convention(c) (IOFireWireLibAsyncStreamCommandRef?, UInt32) -> Void)!
  var SetSyncBits: (@convention(c) (IOFireWireLibAsyncStreamCommandRef?, UInt16) -> Void)!
  var SetTagBits: (@convention(c) (IOFireWireLibAsyncStreamCommandRef?, UInt16) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UInt32, UnsafeMutableRawPointer?) -> Void)!, GetBuffer: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> Void)!, SetMaxPacket: (@convention(c) (IOFireWireLibCommandRef?, IOByteCount) -> IOReturn)!, SetFlags: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetTimeoutDuration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetMaxRetryCount: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, GetAckCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetResponseCode: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, SetMaxPacketSpeed: (@convention(c) (IOFireWireLibCommandRef?, IOFWSpeed) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibCommandRef?) -> UnsafeMutableRawPointer?)!, SetChannel: (@convention(c) (IOFireWireLibAsyncStreamCommandRef?, UInt32) -> Void)!, SetSyncBits: (@convention(c) (IOFireWireLibAsyncStreamCommandRef?, UInt16) -> Void)!, SetTagBits: (@convention(c) (IOFireWireLibAsyncStreamCommandRef?, UInt16) -> Void)!)
}
typealias IOFireWireAsyncStreamCommandInterface = IOFireWireAsyncStreamCommandInterface_t
struct IOFireWireReadQuadletCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetQuads: (@convention(c) (IOFireWireLibReadQuadletCommandRef?, UnsafeMutablePointer<UInt32>?, UInt32) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetQuads: (@convention(c) (IOFireWireLibReadQuadletCommandRef?, UnsafeMutablePointer<UInt32>?, UInt32) -> Void)!)
}
typealias IOFireWireReadQuadletCommandInterface = IOFireWireReadQuadletCommandInterface_t
struct IOFireWireWriteQuadletCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!
  var GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!
  var SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!
  var SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!
  var SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!
  var Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!
  var SetQuads: (@convention(c) (IOFireWireLibWriteQuadletCommandRef?, UnsafeMutablePointer<UInt32>?, UInt32) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, GetStatus: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, GetTransferredBytes: (@convention(c) (IOFireWireLibCommandRef?) -> UInt32)!, GetTargetAddress: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutablePointer<FWAddress>?) -> Void)!, SetTarget: (@convention(c) (IOFireWireLibCommandRef?, UnsafePointer<FWAddress>?) -> Void)!, SetGeneration: (@convention(c) (IOFireWireLibCommandRef?, UInt32) -> Void)!, SetCallback: (@convention(c) (IOFireWireLibCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?) -> Void)!, IsExecuting: (@convention(c) (IOFireWireLibCommandRef?) -> DarwinBoolean)!, Submit: (@convention(c) (IOFireWireLibCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, Cancel: (@convention(c) (IOFireWireLibCommandRef?, IOReturn) -> IOReturn)!, SetQuads: (@convention(c) (IOFireWireLibWriteQuadletCommandRef?, UnsafeMutablePointer<UInt32>?, UInt32) -> Void)!)
}
typealias IOFireWireWriteQuadletCommandInterface = IOFireWireWriteQuadletCommandInterface_t
struct IOFireWireConfigDirectoryInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var Update: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UInt32) -> IOReturn)!
  var GetKeyType: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOConfigKeyType>?) -> IOReturn)!
  var GetKeyValue_UInt32: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!
  var GetKeyValue_Data: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Unmanaged<CFData>?>?, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!
  var GetKeyValue_ConfigDirectory: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOFireWireLibConfigDirectoryRef?>?, REFIID, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!
  var GetKeyOffset_FWAddress: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<FWAddress>?, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!
  var GetIndexType: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOConfigKeyType>?) -> IOReturn)!
  var GetIndexKey: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Int32>?) -> IOReturn)!
  var GetIndexValue_UInt32: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetIndexValue_Data: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Unmanaged<CFData>?>?) -> IOReturn)!
  var GetIndexValue_String: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!
  var GetIndexValue_ConfigDirectory: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOFireWireLibConfigDirectoryRef?>?, REFIID) -> IOReturn)!
  var GetIndexOffset_FWAddress: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<FWAddress>?) -> IOReturn)!
  var GetIndexOffset_UInt32: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetIndexEntry: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetSubdirectories: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UnsafeMutablePointer<io_iterator_t>?) -> IOReturn)!
  var GetKeySubdirectories: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<io_iterator_t>?) -> IOReturn)!
  var GetType: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UnsafeMutablePointer<Int32>?) -> IOReturn)!
  var GetNumEntries: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UnsafeMutablePointer<Int32>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, Update: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UInt32) -> IOReturn)!, GetKeyType: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOConfigKeyType>?) -> IOReturn)!, GetKeyValue_UInt32: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!, GetKeyValue_Data: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Unmanaged<CFData>?>?, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!, GetKeyValue_ConfigDirectory: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOFireWireLibConfigDirectoryRef?>?, REFIID, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!, GetKeyOffset_FWAddress: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<FWAddress>?, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!, GetIndexType: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOConfigKeyType>?) -> IOReturn)!, GetIndexKey: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Int32>?) -> IOReturn)!, GetIndexValue_UInt32: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetIndexValue_Data: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Unmanaged<CFData>?>?) -> IOReturn)!, GetIndexValue_String: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<Unmanaged<CFString>?>?) -> IOReturn)!, GetIndexValue_ConfigDirectory: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<IOFireWireLibConfigDirectoryRef?>?, REFIID) -> IOReturn)!, GetIndexOffset_FWAddress: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<FWAddress>?) -> IOReturn)!, GetIndexOffset_UInt32: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetIndexEntry: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetSubdirectories: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UnsafeMutablePointer<io_iterator_t>?) -> IOReturn)!, GetKeySubdirectories: (@convention(c) (IOFireWireLibConfigDirectoryRef?, Int32, UnsafeMutablePointer<io_iterator_t>?) -> IOReturn)!, GetType: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UnsafeMutablePointer<Int32>?) -> IOReturn)!, GetNumEntries: (@convention(c) (IOFireWireLibConfigDirectoryRef?, UnsafeMutablePointer<Int32>?) -> IOReturn)!)
}
typealias IOFireWireConfigDirectoryInterface = IOFireWireConfigDirectoryInterface_t
func IOVirtualRangeMake(_ address: IOVirtualAddress, _ length: IOByteCount) -> IOVirtualRange
struct IOFireWireLibVectorCommandInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt32
  var revision: UInt32
  var Submit: (@convention(c) (IOFireWireLibVectorCommandRef?) -> IOReturn)!
  var SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibVectorCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!
  var IsExecuting: (@convention(c) (IOFireWireLibVectorCommandRef?) -> DarwinBoolean)!
  var SetCallback: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandCallback?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibVectorCommandRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibVectorCommandRef?) -> UnsafeMutableRawPointer?)!
  var SetFlags: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> Void)!
  var GetFlags: (@convention(c) (IOFireWireLibVectorCommandRef?) -> UInt32)!
  var EnsureCapacity: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> IOReturn)!
  var AddCommand: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?) -> Void)!
  var RemoveCommand: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?) -> Void)!
  var InsertCommandAtIndex: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?, UInt32) -> Void)!
  var GetCommandAtIndex: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> IOFireWireLibCommandRef?)!
  var GetIndexOfCommand: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?) -> UInt32)!
  var RemoveCommandAtIndex: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> Void)!
  var RemoveAllCommands: (@convention(c) (IOFireWireLibVectorCommandRef?) -> Void)!
  var GetCommandCount: (@convention(c) (IOFireWireLibVectorCommandRef?) -> UInt32)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt32, revision: UInt32, Submit: (@convention(c) (IOFireWireLibVectorCommandRef?) -> IOReturn)!, SubmitWithRefconAndCallback: (@convention(c) (IOFireWireLibVectorCommandRef?, UnsafeMutableRawPointer?, IOFireWireLibCommandCallback?) -> IOReturn)!, IsExecuting: (@convention(c) (IOFireWireLibVectorCommandRef?) -> DarwinBoolean)!, SetCallback: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandCallback?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibVectorCommandRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibVectorCommandRef?) -> UnsafeMutableRawPointer?)!, SetFlags: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> Void)!, GetFlags: (@convention(c) (IOFireWireLibVectorCommandRef?) -> UInt32)!, EnsureCapacity: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> IOReturn)!, AddCommand: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?) -> Void)!, RemoveCommand: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?) -> Void)!, InsertCommandAtIndex: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?, UInt32) -> Void)!, GetCommandAtIndex: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> IOFireWireLibCommandRef?)!, GetIndexOfCommand: (@convention(c) (IOFireWireLibVectorCommandRef?, IOFireWireLibCommandRef?) -> UInt32)!, RemoveCommandAtIndex: (@convention(c) (IOFireWireLibVectorCommandRef?, UInt32) -> Void)!, RemoveAllCommands: (@convention(c) (IOFireWireLibVectorCommandRef?) -> Void)!, GetCommandCount: (@convention(c) (IOFireWireLibVectorCommandRef?) -> UInt32)!)
}
typealias IOFireWireLibVectorCommandInterface = IOFireWireLibVectorCommandInterface_t
struct IOFireWireLibPHYPacketListenerInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var SetListenerCallback: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, IOFireWireLibPHYPacketCallback?) -> Void)!
  var SetSkippedPacketCallback: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, IOFireWireLibPHYPacketSkippedCallback?) -> Void)!
  var NotificationIsOn: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> DarwinBoolean)!
  var TurnOnNotification: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> IOReturn)!
  var TurnOffNotification: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> Void)!
  var ClientCommandIsComplete: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, FWClientCommandID?) -> Void)!
  var SetRefCon: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> UnsafeMutableRawPointer?)!
  var SetFlags: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, UInt32) -> Void)!
  var GetFlags: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> UInt32)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, SetListenerCallback: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, IOFireWireLibPHYPacketCallback?) -> Void)!, SetSkippedPacketCallback: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, IOFireWireLibPHYPacketSkippedCallback?) -> Void)!, NotificationIsOn: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> DarwinBoolean)!, TurnOnNotification: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> IOReturn)!, TurnOffNotification: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> Void)!, ClientCommandIsComplete: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, FWClientCommandID?) -> Void)!, SetRefCon: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> UnsafeMutableRawPointer?)!, SetFlags: (@convention(c) (IOFireWireLibPHYPacketListenerRef?, UInt32) -> Void)!, GetFlags: (@convention(c) (IOFireWireLibPHYPacketListenerRef?) -> UInt32)!)
}
typealias IOFireWireLibPHYPacketListenerInterface = IOFireWireLibPHYPacketListenerInterface_t
typealias IOFireWireIsochChannelForceStopHandler = @convention(c) (IOFireWireLibIsochChannelRef?, UInt32) -> Void
typealias IOFireWireLibIsochPortCallback = @convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn
typealias IOFireWireLibIsochPortAllocateCallback = @convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn
typealias IOFireWireLibIsochPortGetSupportedCallback = @convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn
typealias IOFireWireLibIsochPortFinalizeCallback = @convention(c) (UnsafeMutableRawPointer?) -> IOReturn
struct IOFireWireIsochPortInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var revision: UInt32
  var version: UInt32
  var GetSupported: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  var AllocatePort: (@convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn)!
  var ReleasePort: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var Start: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var Stop: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var SetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?) -> UnsafeMutableRawPointer?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, revision: UInt32, version: UInt32, GetSupported: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!, AllocatePort: (@convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn)!, ReleasePort: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, Start: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, Stop: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, SetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?) -> UnsafeMutableRawPointer?)!)
}
typealias IOFireWireIsochPortInterface = IOFireWireIsochPortInterface_t
struct IOFireWireRemoteIsochPortInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var revision: UInt32
  var version: UInt32
  var GetSupported: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  var AllocatePort: (@convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn)!
  var ReleasePort: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var Start: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var Stop: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var SetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?) -> UnsafeMutableRawPointer?)!
  var SetGetSupportedHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortGetSupportedCallback?) -> IOFireWireLibIsochPortGetSupportedCallback?)!
  var SetAllocatePortHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortAllocateCallback?) -> IOFireWireLibIsochPortAllocateCallback?)!
  var SetReleasePortHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortCallback?) -> IOFireWireLibIsochPortCallback?)!
  var SetStartHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortCallback?) -> IOFireWireLibIsochPortCallback?)!
  var SetStopHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortCallback?) -> IOFireWireLibIsochPortCallback?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, revision: UInt32, version: UInt32, GetSupported: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!, AllocatePort: (@convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn)!, ReleasePort: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, Start: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, Stop: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, SetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?) -> UnsafeMutableRawPointer?)!, SetGetSupportedHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortGetSupportedCallback?) -> IOFireWireLibIsochPortGetSupportedCallback?)!, SetAllocatePortHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortAllocateCallback?) -> IOFireWireLibIsochPortAllocateCallback?)!, SetReleasePortHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortCallback?) -> IOFireWireLibIsochPortCallback?)!, SetStartHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortCallback?) -> IOFireWireLibIsochPortCallback?)!, SetStopHandler: (@convention(c) (IOFireWireLibRemoteIsochPortRef?, IOFireWireLibIsochPortCallback?) -> IOFireWireLibIsochPortCallback?)!)
}
typealias IOFireWireRemoteIsochPortInterface = IOFireWireRemoteIsochPortInterface_t
struct IOFireWireLocalIsochPortInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var revision: UInt32
  var version: UInt32
  var GetSupported: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!
  var AllocatePort: (@convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn)!
  var ReleasePort: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var Start: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var Stop: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!
  var SetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?) -> UnsafeMutableRawPointer?)!
  var ModifyJumpDCL: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLJump>?, UnsafeMutablePointer<DCLLabel>?) -> IOReturn)!
  var PrintDCLProgram: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafePointer<DCLCommand>?, UInt32) -> Void)!
  var ModifyTransferPacketDCLSize: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLTransferPacket>?, IOByteCount) -> IOReturn)!
  var ModifyTransferPacketDCLBuffer: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLTransferPacket>?, UnsafeMutableRawPointer?) -> IOReturn)!
  var ModifyTransferPacketDCL: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLTransferPacket>?, UnsafeMutableRawPointer?, IOByteCount) -> IOReturn)!
  var SetFinalizeCallback: (@convention(c) (IOFireWireLibLocalIsochPortRef?, IOFireWireLibIsochPortFinalizeCallback?) -> IOReturn)!
  var SetResourceUsageFlags: (@convention(c) (IOFireWireLibLocalIsochPortRef?, IOFWIsochResourceFlags) -> IOReturn)!
  var Notify: (@convention(c) (IOFireWireLibLocalIsochPortRef?, IOFWDCLNotificationType, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UInt32) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, revision: UInt32, version: UInt32, GetSupported: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutablePointer<IOFWSpeed>?, UnsafeMutablePointer<UInt64>?) -> IOReturn)!, AllocatePort: (@convention(c) (IOFireWireLibIsochPortRef?, IOFWSpeed, UInt32) -> IOReturn)!, ReleasePort: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, Start: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, Stop: (@convention(c) (IOFireWireLibIsochPortRef?) -> IOReturn)!, SetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibIsochPortRef?) -> UnsafeMutableRawPointer?)!, ModifyJumpDCL: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLJump>?, UnsafeMutablePointer<DCLLabel>?) -> IOReturn)!, PrintDCLProgram: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafePointer<DCLCommand>?, UInt32) -> Void)!, ModifyTransferPacketDCLSize: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLTransferPacket>?, IOByteCount) -> IOReturn)!, ModifyTransferPacketDCLBuffer: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLTransferPacket>?, UnsafeMutableRawPointer?) -> IOReturn)!, ModifyTransferPacketDCL: (@convention(c) (IOFireWireLibLocalIsochPortRef?, UnsafeMutablePointer<DCLTransferPacket>?, UnsafeMutableRawPointer?, IOByteCount) -> IOReturn)!, SetFinalizeCallback: (@convention(c) (IOFireWireLibLocalIsochPortRef?, IOFireWireLibIsochPortFinalizeCallback?) -> IOReturn)!, SetResourceUsageFlags: (@convention(c) (IOFireWireLibLocalIsochPortRef?, IOFWIsochResourceFlags) -> IOReturn)!, Notify: (@convention(c) (IOFireWireLibLocalIsochPortRef?, IOFWDCLNotificationType, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UInt32) -> IOReturn)!)
}
typealias IOFireWireLocalIsochPortInterface = IOFireWireLocalIsochPortInterface_t
struct IOFireWireIsochChannelInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var revision: UInt32
  var version: UInt32
  var SetTalker: (@convention(c) (IOFireWireLibIsochChannelRef?, IOFireWireLibIsochPortRef?) -> IOReturn)!
  var AddListener: (@convention(c) (IOFireWireLibIsochChannelRef?, IOFireWireLibIsochPortRef?) -> IOReturn)!
  var AllocateChannel: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!
  var ReleaseChannel: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!
  var Start: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!
  var Stop: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!
  var SetChannelForceStopHandler: (@convention(c) (IOFireWireLibIsochChannelRef?, IOFireWireIsochChannelForceStopHandler?) -> IOFireWireIsochChannelForceStopHandler?)!
  var SetRefCon: (@convention(c) (IOFireWireLibIsochChannelRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetRefCon: (@convention(c) (IOFireWireLibIsochChannelRef?) -> UnsafeMutableRawPointer?)!
  var NotificationIsOn: (@convention(c) (IOFireWireLibIsochChannelRef?) -> DarwinBoolean)!
  var TurnOnNotification: (@convention(c) (IOFireWireLibIsochChannelRef?) -> DarwinBoolean)!
  var TurnOffNotification: (@convention(c) (IOFireWireLibIsochChannelRef?) -> Void)!
  var ClientCommandIsComplete: (@convention(c) (IOFireWireLibIsochChannelRef?, FWClientCommandID?, IOReturn) -> Void)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, revision: UInt32, version: UInt32, SetTalker: (@convention(c) (IOFireWireLibIsochChannelRef?, IOFireWireLibIsochPortRef?) -> IOReturn)!, AddListener: (@convention(c) (IOFireWireLibIsochChannelRef?, IOFireWireLibIsochPortRef?) -> IOReturn)!, AllocateChannel: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!, ReleaseChannel: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!, Start: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!, Stop: (@convention(c) (IOFireWireLibIsochChannelRef?) -> IOReturn)!, SetChannelForceStopHandler: (@convention(c) (IOFireWireLibIsochChannelRef?, IOFireWireIsochChannelForceStopHandler?) -> IOFireWireIsochChannelForceStopHandler?)!, SetRefCon: (@convention(c) (IOFireWireLibIsochChannelRef?, UnsafeMutableRawPointer?) -> Void)!, GetRefCon: (@convention(c) (IOFireWireLibIsochChannelRef?) -> UnsafeMutableRawPointer?)!, NotificationIsOn: (@convention(c) (IOFireWireLibIsochChannelRef?) -> DarwinBoolean)!, TurnOnNotification: (@convention(c) (IOFireWireLibIsochChannelRef?) -> DarwinBoolean)!, TurnOffNotification: (@convention(c) (IOFireWireLibIsochChannelRef?) -> Void)!, ClientCommandIsComplete: (@convention(c) (IOFireWireLibIsochChannelRef?, FWClientCommandID?, IOReturn) -> Void)!)
}
typealias IOFireWireIsochChannelInterface = IOFireWireIsochChannelInterface_t
struct IOFireWireDCLCommandPoolInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var revision: UInt32
  var version: UInt32
  var Allocate: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateWithOpcode: OpaquePointer!
  var AllocateTransferPacketDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UInt32, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateTransferBufferDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UInt32, UnsafeMutableRawPointer?, IOByteCount, IOByteCount, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateSendPacketStartDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateSendPacketWithHeaderStartDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateSendBufferDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount, IOByteCount, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateSendPacketDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateReceivePacketStartDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateReceivePacketDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateReceiveBufferDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount, IOByteCount, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateCallProcDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, (@convention(c) (UnsafeMutablePointer<DCLCommand>?) -> Void)?, DCLCallProcDataType?) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateLabelDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateJumpDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutablePointer<DCLLabel>?) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateSetTagSyncBitsDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UInt16, UInt16) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocateUpdateDCLListDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutablePointer<UnsafeMutablePointer<DCLCommand>?>?, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!
  var AllocatePtrTimeStampDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutablePointer<UInt32>?) -> UnsafeMutablePointer<DCLCommand>?)!
  var Free: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?) -> Void)!
  var GetSize: (@convention(c) (IOFireWireLibDCLCommandPoolRef?) -> IOByteCount)!
  var SetSize: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, IOByteCount) -> DarwinBoolean)!
  var GetBytesRemaining: (@convention(c) (IOFireWireLibDCLCommandPoolRef?) -> IOByteCount)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, revision: UInt32, version: UInt32, Allocate: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateWithOpcode: OpaquePointer!, AllocateTransferPacketDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UInt32, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateTransferBufferDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UInt32, UnsafeMutableRawPointer?, IOByteCount, IOByteCount, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateSendPacketStartDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateSendPacketWithHeaderStartDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateSendBufferDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount, IOByteCount, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateSendPacketDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateReceivePacketStartDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateReceivePacketDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateReceiveBufferDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutableRawPointer?, IOByteCount, IOByteCount, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateCallProcDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, (@convention(c) (UnsafeMutablePointer<DCLCommand>?) -> Void)?, DCLCallProcDataType?) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateLabelDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateJumpDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutablePointer<DCLLabel>?) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateSetTagSyncBitsDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UInt16, UInt16) -> UnsafeMutablePointer<DCLCommand>?)!, AllocateUpdateDCLListDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutablePointer<UnsafeMutablePointer<DCLCommand>?>?, UInt32) -> UnsafeMutablePointer<DCLCommand>?)!, AllocatePtrTimeStampDCL: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?, UnsafeMutablePointer<UInt32>?) -> UnsafeMutablePointer<DCLCommand>?)!, Free: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, UnsafeMutablePointer<DCLCommand>?) -> Void)!, GetSize: (@convention(c) (IOFireWireLibDCLCommandPoolRef?) -> IOByteCount)!, SetSize: (@convention(c) (IOFireWireLibDCLCommandPoolRef?, IOByteCount) -> DarwinBoolean)!, GetBytesRemaining: (@convention(c) (IOFireWireLibDCLCommandPoolRef?) -> IOByteCount)!)
}
typealias IOFireWireDCLCommandPoolInterface = IOFireWireDCLCommandPoolInterface_t
struct IOFireWireNuDCLPoolInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var revision: UInt32
  var version: UInt32
  var GetProgram: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> UnsafeMutablePointer<DCLCommand>?)!
  var GetDCLs: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> Unmanaged<CFArray>?)!
  var PrintProgram: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> Void)!
  var PrintDCL: (@convention(c) (NuDCLRef?) -> Void)!
  var SetCurrentTagAndSync: (@convention(c) (IOFireWireLibNuDCLPoolRef?, UInt8, UInt8) -> Void)!
  var AllocateSendPacket: (@convention(c) (IOFireWireLibNuDCLPoolRef?, CFMutableSet?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> NuDCLSendPacketRef?)!
  var AllocateSendPacket_v: OpaquePointer!
  var AllocateSkipCycle: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> NuDCLSkipCycleRef?)!
  var AllocateReceivePacket: (@convention(c) (IOFireWireLibNuDCLPoolRef?, CFMutableSet?, UInt8, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> NuDCLReceivePacketRef?)!
  var AllocateReceivePacket_v: OpaquePointer!
  var FindDCLNextDCL: (@convention(c) (IOFireWireLibNuDCLPoolRef?, NuDCLRef?) -> NuDCLRef?)!
  var SetDCLBranch: (@convention(c) (NuDCLRef?, NuDCLRef?) -> IOReturn)!
  var GetDCLBranch: (@convention(c) (NuDCLRef?) -> NuDCLRef?)!
  var SetDCLTimeStampPtr: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetDCLTimeStampPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!
  var SetDCLStatusPtr: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetDCLStatusPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!
  var AppendDCLRanges: (@convention(c) (NuDCLRef?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> IOReturn)!
  var SetDCLRanges: (@convention(c) (NuDCLRef?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> IOReturn)!
  var SetDCLRanges_v: OpaquePointer!
  var GetDCLRanges: (@convention(c) (NuDCLRef?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> UInt32)!
  var CountDCLRanges: (@convention(c) (NuDCLRef?) -> UInt32)!
  var GetDCLSpan: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<IOVirtualRange>?) -> IOReturn)!
  var GetDCLSize: (@convention(c) (NuDCLRef?) -> IOByteCount)!
  var SetDCLCallback: (@convention(c) (NuDCLRef?, NuDCLCallback?) -> IOReturn)!
  var GetDCLCallback: (@convention(c) (NuDCLRef?) -> NuDCLCallback?)!
  var SetDCLUserHeaderPtr: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var GetDCLUserHeaderPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!
  var GetUserHeaderMaskPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!
  var SetDCLRefcon: (@convention(c) (NuDCLRef?, UnsafeMutableRawPointer?) -> Void)!
  var GetDCLRefcon: (@convention(c) (NuDCLRef?) -> UnsafeMutableRawPointer?)!
  var AppendDCLUpdateList: (@convention(c) (NuDCLRef?, NuDCLRef?) -> IOReturn)!
  var SetDCLUpdateList: (@convention(c) (NuDCLRef?, CFSet?) -> IOReturn)!
  var CopyDCLUpdateList: (@convention(c) (NuDCLRef?) -> Unmanaged<CFSet>?)!
  var RemoveDCLUpdateList: (@convention(c) (NuDCLRef?) -> IOReturn)!
  var SetDCLWaitControl: (@convention(c) (NuDCLRef?, DarwinBoolean) -> IOReturn)!
  var SetDCLFlags: (@convention(c) (NuDCLRef?, UInt32) -> Void)!
  var GetDCLFlags: (@convention(c) (NuDCLRef?) -> UInt32)!
  var SetDCLSkipBranch: (@convention(c) (NuDCLRef?, NuDCLRef?) -> IOReturn)!
  var GetDCLSkipBranch: (@convention(c) (NuDCLRef?) -> NuDCLRef?)!
  var SetDCLSkipCallback: (@convention(c) (NuDCLRef?, NuDCLCallback?) -> IOReturn)!
  var GetDCLSkipCallback: (@convention(c) (NuDCLRef?) -> NuDCLCallback?)!
  var SetDCLSkipRefcon: (@convention(c) (NuDCLRef?, UnsafeMutableRawPointer?) -> IOReturn)!
  var GetDCLSkipRefcon: (@convention(c) (NuDCLRef?) -> UnsafeMutableRawPointer?)!
  var SetDCLSyncBits: (@convention(c) (NuDCLRef?, UInt8) -> IOReturn)!
  var GetDCLSyncBits: (@convention(c) (NuDCLRef?) -> UInt8)!
  var SetDCLTagBits: (@convention(c) (NuDCLRef?, UInt8) -> IOReturn)!
  var GetDCLTagBits: (@convention(c) (NuDCLRef?) -> UInt8)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, revision: UInt32, version: UInt32, GetProgram: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> UnsafeMutablePointer<DCLCommand>?)!, GetDCLs: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> Unmanaged<CFArray>?)!, PrintProgram: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> Void)!, PrintDCL: (@convention(c) (NuDCLRef?) -> Void)!, SetCurrentTagAndSync: (@convention(c) (IOFireWireLibNuDCLPoolRef?, UInt8, UInt8) -> Void)!, AllocateSendPacket: (@convention(c) (IOFireWireLibNuDCLPoolRef?, CFMutableSet?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> NuDCLSendPacketRef?)!, AllocateSendPacket_v: OpaquePointer!, AllocateSkipCycle: (@convention(c) (IOFireWireLibNuDCLPoolRef?) -> NuDCLSkipCycleRef?)!, AllocateReceivePacket: (@convention(c) (IOFireWireLibNuDCLPoolRef?, CFMutableSet?, UInt8, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> NuDCLReceivePacketRef?)!, AllocateReceivePacket_v: OpaquePointer!, FindDCLNextDCL: (@convention(c) (IOFireWireLibNuDCLPoolRef?, NuDCLRef?) -> NuDCLRef?)!, SetDCLBranch: (@convention(c) (NuDCLRef?, NuDCLRef?) -> IOReturn)!, GetDCLBranch: (@convention(c) (NuDCLRef?) -> NuDCLRef?)!, SetDCLTimeStampPtr: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetDCLTimeStampPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!, SetDCLStatusPtr: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetDCLStatusPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!, AppendDCLRanges: (@convention(c) (NuDCLRef?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> IOReturn)!, SetDCLRanges: (@convention(c) (NuDCLRef?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> IOReturn)!, SetDCLRanges_v: OpaquePointer!, GetDCLRanges: (@convention(c) (NuDCLRef?, UInt32, UnsafeMutablePointer<IOVirtualRange>?) -> UInt32)!, CountDCLRanges: (@convention(c) (NuDCLRef?) -> UInt32)!, GetDCLSpan: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<IOVirtualRange>?) -> IOReturn)!, GetDCLSize: (@convention(c) (NuDCLRef?) -> IOByteCount)!, SetDCLCallback: (@convention(c) (NuDCLRef?, NuDCLCallback?) -> IOReturn)!, GetDCLCallback: (@convention(c) (NuDCLRef?) -> NuDCLCallback?)!, SetDCLUserHeaderPtr: (@convention(c) (NuDCLRef?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, GetDCLUserHeaderPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!, GetUserHeaderMaskPtr: (@convention(c) (NuDCLRef?) -> UnsafeMutablePointer<UInt32>?)!, SetDCLRefcon: (@convention(c) (NuDCLRef?, UnsafeMutableRawPointer?) -> Void)!, GetDCLRefcon: (@convention(c) (NuDCLRef?) -> UnsafeMutableRawPointer?)!, AppendDCLUpdateList: (@convention(c) (NuDCLRef?, NuDCLRef?) -> IOReturn)!, SetDCLUpdateList: (@convention(c) (NuDCLRef?, CFSet?) -> IOReturn)!, CopyDCLUpdateList: (@convention(c) (NuDCLRef?) -> Unmanaged<CFSet>?)!, RemoveDCLUpdateList: (@convention(c) (NuDCLRef?) -> IOReturn)!, SetDCLWaitControl: (@convention(c) (NuDCLRef?, DarwinBoolean) -> IOReturn)!, SetDCLFlags: (@convention(c) (NuDCLRef?, UInt32) -> Void)!, GetDCLFlags: (@convention(c) (NuDCLRef?) -> UInt32)!, SetDCLSkipBranch: (@convention(c) (NuDCLRef?, NuDCLRef?) -> IOReturn)!, GetDCLSkipBranch: (@convention(c) (NuDCLRef?) -> NuDCLRef?)!, SetDCLSkipCallback: (@convention(c) (NuDCLRef?, NuDCLCallback?) -> IOReturn)!, GetDCLSkipCallback: (@convention(c) (NuDCLRef?) -> NuDCLCallback?)!, SetDCLSkipRefcon: (@convention(c) (NuDCLRef?, UnsafeMutableRawPointer?) -> IOReturn)!, GetDCLSkipRefcon: (@convention(c) (NuDCLRef?) -> UnsafeMutableRawPointer?)!, SetDCLSyncBits: (@convention(c) (NuDCLRef?, UInt8) -> IOReturn)!, GetDCLSyncBits: (@convention(c) (NuDCLRef?) -> UInt8)!, SetDCLTagBits: (@convention(c) (NuDCLRef?, UInt8) -> IOReturn)!, GetDCLTagBits: (@convention(c) (NuDCLRef?) -> UInt8)!)
}
typealias IOFireWireNuDCLPoolInterface = IOFireWireNuDCLPoolInterface_t
struct IOFWAsyncStreamListenerInterface_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var SetListenerHandler: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, IOFWAsyncStreamListenerHandler?) -> IOFWAsyncStreamListenerHandler?)!
  var SetSkippedPacketHandler: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, IOFWAsyncStreamListenerSkippedPacketHandler?) -> IOFWAsyncStreamListenerSkippedPacketHandler?)!
  var NotificationIsOn: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> DarwinBoolean)!
  var TurnOnNotification: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> DarwinBoolean)!
  var TurnOffNotification: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> Void)!
  var ClientCommandIsComplete: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, FWClientCommandID?, IOReturn) -> Void)!
  var GetRefCon: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> UnsafeMutableRawPointer?)!
  var SetFlags: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, UInt32) -> Void)!
  var GetFlags: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> UInt32)!
  var GetOverrunCounter: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> UInt32)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, SetListenerHandler: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, IOFWAsyncStreamListenerHandler?) -> IOFWAsyncStreamListenerHandler?)!, SetSkippedPacketHandler: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, IOFWAsyncStreamListenerSkippedPacketHandler?) -> IOFWAsyncStreamListenerSkippedPacketHandler?)!, NotificationIsOn: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> DarwinBoolean)!, TurnOnNotification: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> DarwinBoolean)!, TurnOffNotification: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> Void)!, ClientCommandIsComplete: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, FWClientCommandID?, IOReturn) -> Void)!, GetRefCon: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> UnsafeMutableRawPointer?)!, SetFlags: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?, UInt32) -> Void)!, GetFlags: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> UInt32)!, GetOverrunCounter: (@convention(c) (IOFWAsyncStreamListenerInterfaceRef?) -> UInt32)!)
}
typealias IOFWAsyncStreamListenerInterface = IOFWAsyncStreamListenerInterface_t
