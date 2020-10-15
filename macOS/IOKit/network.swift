
var kIONetworkControllerClass: String { get }
var kIOVendor: String { get }
var kIOModel: String { get }
var kIORevision: String { get }
var kIOFeatures: String { get }
var kIOMediumDictionary: String { get }
var kIODefaultMedium: String { get }
var kIOSelectedMedium: String { get }
var kIOActiveMedium: String { get }
var kIOLinkSpeed: String { get }
var kIOLinkStatus: String { get }
var kIOLinkData: String { get }
var kIOPacketFilters: String { get }
var kIOMACAddress: String { get }
var kIOMaxPacketSize: String { get }
var kIOMinPacketSize: String { get }
var kIONetworkFilterGroup: String { get }
var kIOPacketFilterUnicast: Int { get }
var kIOPacketFilterBroadcast: Int { get }
var kIOPacketFilterMulticast: Int { get }
var kIOPacketFilterMulticastAll: Int { get }
var kIOPacketFilterPromiscuous: Int { get }
var kIOPacketFilterPromiscuousAll: Int { get }
var kIONetworkFeatureNoBSDWait: Int { get }
var kIONetworkFeatureHardwareVlan: Int { get }
var kIONetworkFeatureSoftwareVlan: Int { get }
var kIONetworkFeatureMultiPages: Int { get }
var kIONetworkFeatureTSOIPv4: Int { get }
var kIONetworkFeatureTSOIPv6: Int { get }
var kIONetworkFeatureTransmitCompletionStatus: Int { get }
var kIONetworkFeatureHWTimeStamp: Int { get }
var kIONetworkFeatureSWTimeStamp: Int { get }
var kIOEthernetControllerClass: String { get }
var kIOEthernetAddressSize: Int32 { get }
var kIOEthernetMaxPacketSize: Int32 { get }
var kIOEthernetMinPacketSize: Int32 { get }
var kIOEthernetCRCSize: Int32 { get }
var kIOEthernetWakeOnLANFilterGroup: String { get }
var kIOEthernetDisabledWakeOnLANFilterGroup: String { get }
var kIOEthernetWakeOnMagicPacket: Int { get }
var kIOEthernetWakeOnPacketAddressMatch: Int { get }
var kIONetworkDataAccessTypeRead: Int { get }
var kIONetworkDataAccessTypeWrite: Int { get }
var kIONetworkDataAccessTypeReset: Int { get }
var kIONetworkDataAccessTypeSerialize: Int { get }
var kIONetworkDataAccessTypeMask: Int { get }
var kIONetworkDataBufferTypeInternal: Int { get }
var kIONetworkDataBufferTypeExternal: Int { get }
var kIONetworkDataBufferTypeNone: Int { get }
var kIONetworkDataBytes: String { get }
var kIONetworkDataAccessTypes: String { get }
var kIONetworkDataSize: String { get }
var kIONetworkStackUserCommandKey: String { get }
var kIONetworkStackUserCommand: String { get }
var kIONetworkStackRegisterInterfaceWithUnit: Int { get }
var kIONetworkStackRegisterInterfaceWithLowestUnit: Int { get }
var kIONetworkStackRegisterInterfaceAll: Int { get }
var kIOEthernetInterfaceClass: String { get }
var kIOActivePacketFilters: String { get }
var kIORequiredPacketFilters: String { get }
var kIOMulticastAddressList: String { get }
var kIOMulticastFilterData: String { get }
var kIONetworkInterfaceClass: String { get }
var kIONetworkData: String { get }
var kIOInterfaceType: String { get }
var kIOMaxTransferUnit: String { get }
var kIOMediaAddressLength: String { get }
var kIOMediaHeaderLength: String { get }
var kIOInterfaceFlags: String { get }
var kIOInterfaceExtraFlags: String { get }
var kIOInterfaceUnit: String { get }
var kIOInterfaceState: String { get }
var kIOInterfaceNamePrefix: String { get }
var kIOPrimaryInterface: String { get }
var kIOBuiltin: String { get }
var kIOLocation: String { get }
var kIONetworkNoBSDAttachKey: String { get }
var kIONetworkInterfaceRegisteredState: Int { get }
var kIONetworkInterfaceOpenedState: Int { get }
var kIONetworkInterfaceDisabledState: Int { get }
struct IONetworkStats {
  var inputPackets: UInt32
  var inputErrors: UInt32
  var outputPackets: UInt32
  var outputErrors: UInt32
  var collisions: UInt32
  init()
  init(inputPackets: UInt32, inputErrors: UInt32, outputPackets: UInt32, outputErrors: UInt32, collisions: UInt32)
}
var kIONetworkStatsKey: String { get }
struct IOOutputQueueStats {
  var capacity: UInt32
  var size: UInt32
  var peakSize: UInt32
  var dropCount: UInt32
  var outputCount: UInt32
  var retryCount: UInt32
  var stallCount: UInt32
  var reserved: (UInt32, UInt32, UInt32, UInt32)
  init()
  init(capacity: UInt32, size: UInt32, peakSize: UInt32, dropCount: UInt32, outputCount: UInt32, retryCount: UInt32, stallCount: UInt32, reserved: (UInt32, UInt32, UInt32, UInt32))
}
var kIOOutputQueueStatsKey: String { get }
struct IODot3StatsEntry {
  var alignmentErrors: UInt32
  var fcsErrors: UInt32
  var singleCollisionFrames: UInt32
  var multipleCollisionFrames: UInt32
  var sqeTestErrors: UInt32
  var deferredTransmissions: UInt32
  var lateCollisions: UInt32
  var excessiveCollisions: UInt32
  var internalMacTransmitErrors: UInt32
  var carrierSenseErrors: UInt32
  var frameTooLongs: UInt32
  var internalMacReceiveErrors: UInt32
  var etherChipSet: UInt32
  var missedFrames: UInt32
  init()
  init(alignmentErrors: UInt32, fcsErrors: UInt32, singleCollisionFrames: UInt32, multipleCollisionFrames: UInt32, sqeTestErrors: UInt32, deferredTransmissions: UInt32, lateCollisions: UInt32, excessiveCollisions: UInt32, internalMacTransmitErrors: UInt32, carrierSenseErrors: UInt32, frameTooLongs: UInt32, internalMacReceiveErrors: UInt32, etherChipSet: UInt32, missedFrames: UInt32)
}
struct IODot3CollEntry {
  var collFrequencies: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(collFrequencies: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
struct IODot3RxExtraEntry {
  var overruns: UInt32
  var watchdogTimeouts: UInt32
  var frameTooShorts: UInt32
  var collisionErrors: UInt32
  var phyErrors: UInt32
  var timeouts: UInt32
  var interrupts: UInt32
  var resets: UInt32
  var resourceErrors: UInt32
  var reserved: (UInt32, UInt32, UInt32, UInt32)
  init()
  init(overruns: UInt32, watchdogTimeouts: UInt32, frameTooShorts: UInt32, collisionErrors: UInt32, phyErrors: UInt32, timeouts: UInt32, interrupts: UInt32, resets: UInt32, resourceErrors: UInt32, reserved: (UInt32, UInt32, UInt32, UInt32))
}
struct IODot3TxExtraEntry {
  var underruns: UInt32
  var jabbers: UInt32
  var phyErrors: UInt32
  var timeouts: UInt32
  var interrupts: UInt32
  var resets: UInt32
  var resourceErrors: UInt32
  var reserved: (UInt32, UInt32, UInt32, UInt32)
  init()
  init(underruns: UInt32, jabbers: UInt32, phyErrors: UInt32, timeouts: UInt32, interrupts: UInt32, resets: UInt32, resourceErrors: UInt32, reserved: (UInt32, UInt32, UInt32, UInt32))
}
struct IOEthernetStats {
  var dot3StatsEntry: IODot3StatsEntry
  var dot3CollEntry: IODot3CollEntry
  var dot3RxExtraEntry: IODot3RxExtraEntry
  var dot3TxExtraEntry: IODot3TxExtraEntry
  init()
  init(dot3StatsEntry: IODot3StatsEntry, dot3CollEntry: IODot3CollEntry, dot3RxExtraEntry: IODot3RxExtraEntry, dot3TxExtraEntry: IODot3TxExtraEntry)
}
var kIOEthernetStatsKey: String { get }
typealias IOMediumType = UInt32
var kIOMediumType: String { get }
var kIOMediumFlags: String { get }
var kIOMediumSpeed: String { get }
var kIOMediumIndex: String { get }
var kIOMediumEthernet: Int { get }
var kIOMediumEthernetAuto: Int { get }
var kIOMediumEthernetManual: Int { get }
var kIOMediumEthernetNone: Int { get }
var kIOMediumEthernet10BaseT: Int { get }
var kIOMediumEthernet10Base2: Int { get }
var kIOMediumEthernet10Base5: Int { get }
var kIOMediumEthernet100BaseTX: Int { get }
var kIOMediumEthernet100BaseFX: Int { get }
var kIOMediumEthernet100BaseT4: Int { get }
var kIOMediumEthernet100BaseVG: Int { get }
var kIOMediumEthernet100BaseT2: Int { get }
var kIOMediumEthernet1000BaseSX: Int { get }
var kIOMediumEthernet10BaseSTP: Int { get }
var kIOMediumEthernet10BaseFL: Int { get }
var kIOMediumEthernet1000BaseLX: Int { get }
var kIOMediumEthernet1000BaseCX: Int { get }
var kIOMediumEthernet1000BaseTX: Int { get }
var kIOMediumEthernet1000BaseT: Int { get }
var kIOMediumEthernetHomePNA1: Int { get }
var kIOMediumEthernet10GBaseSR: Int { get }
var kIOMediumEthernet10GBaseLR: Int { get }
var kIOMediumEthernet10GBaseCX4: Int { get }
var kIOMediumEthernet10GBaseT: Int { get }
var kIOMediumEthernet2500BaseT: Int { get }
var kIOMediumEthernet5000BaseT: Int { get }
var kIOMediumIEEE80211: Int { get }
var kIOMediumIEEE80211Auto: Int { get }
var kIOMediumIEEE80211Manual: Int { get }
var kIOMediumIEEE80211None: Int { get }
var kIOMediumIEEE80211FH1: Int { get }
var kIOMediumIEEE80211FH2: Int { get }
var kIOMediumIEEE80211DS2: Int { get }
var kIOMediumIEEE80211DS5: Int { get }
var kIOMediumIEEE80211DS11: Int { get }
var kIOMediumIEEE80211DS1: Int { get }
var kIOMediumIEEE80211OptionAdhoc: Int { get }
var kIOMediumOptionFullDuplex: Int { get }
var kIOMediumOptionHalfDuplex: Int { get }
var kIOMediumOptionFlowControl: Int { get }
var kIOMediumOptionEEE: Int { get }
var kIOMediumOptionFlag0: Int { get }
var kIOMediumOptionFlag1: Int { get }
var kIOMediumOptionFlag2: Int { get }
var kIOMediumOptionLoopback: Int { get }
var kIOMediumSubTypeMask: Int32 { get }
var kIOMediumNetworkTypeMask: Int32 { get }
var kIOMediumOptionsMask: Int32 { get }
var kIOMediumCommonOptionsMask: Int32 { get }
var kIOMediumInstanceShift: Int32 { get }
var kIOMediumInstanceMask: UInt32 { get }
var kIONetworkLinkValid: Int { get }
var kIONetworkLinkActive: Int { get }
var kIONetworkLinkNoNetworkChange: Int { get }
var kIONetworkUserClientTypeID: UInt32 { get }
var kIONUCType: UInt32 { get }
var kIONUCResetNetworkDataIndex: Int { get }
var kIONUCWriteNetworkDataIndex: Int { get }
var kIONUCReadNetworkDataIndex: Int { get }
var kIONUCGetNetworkDataCapacityIndex: Int { get }
var kIONUCGetNetworkDataHandleIndex: Int { get }
var kIONUCLastIndex: Int { get }
typealias IONDHandle = UInt32
func IONetworkOpen(_ obj: io_object_t, _ con: UnsafeMutablePointer<io_connect_t>!) -> IOReturn
func IONetworkClose(_ con: io_connect_t) -> IOReturn
func IONetworkWriteData(_ conObj: io_connect_t, _ dataHandle: IONDHandle, _ srcBuf: UnsafeMutablePointer<UInt8>!, _ inSize: UInt32) -> IOReturn
func IONetworkReadData(_ conObj: io_connect_t, _ dataHandle: IONDHandle, _ destBuf: UnsafeMutablePointer<UInt8>!, _ inOutSizeP: UnsafeMutablePointer<UInt32>!) -> IOReturn
func IONetworkResetData(_ conObject: io_connect_t, _ dataHandle: IONDHandle) -> IOReturn
func IONetworkGetDataCapacity(_ conObject: io_connect_t, _ dataHandle: IONDHandle, _ capacityP: UnsafeMutablePointer<UInt32>!) -> IOReturn
func IONetworkGetDataHandle(_ conObject: io_connect_t, _ dataName: UnsafePointer<CChar>!, _ dataHandleP: UnsafeMutablePointer<IONDHandle>!) -> IOReturn
func IONetworkSetPacketFiltersMask(_ connect: io_connect_t, _ filterGroup: UnsafePointer<CChar>!, _ filtersMask: UInt32, _ options: IOOptionBits) -> IOReturn
var kIONetworkSupportedPacketFilters: Int { get }
func IONetworkGetPacketFiltersMask(_ connect: io_connect_t, _ filterGroup: UnsafePointer<CChar>!, _ filtersMask: UnsafeMutablePointer<UInt32>!, _ options: IOOptionBits) -> IOReturn
