
class DRDevice : NSObject {
  class func devices() -> [Any]!
  /*not inherited*/ init!(forBSDName bsdName: String!)
  /*not inherited*/ init!(forIORegistryEntryPath path: String!)
  func isValid() -> Bool
  func info() -> [AnyHashable : Any]!
  func status() -> [AnyHashable : Any]!
  func openTray() -> Bool
  func closeTray() -> Bool
  func ejectMedia() -> Bool
  func acquireExclusiveAccess() -> Bool
  func releaseExclusiveAccess()
  func acquireMediaReservation()
  func releaseMediaReservation()
  func isEqual(to otherDevice: DRDevice!) -> Bool
}
extension DRDevice {
  func writesCD() -> Bool
  func writesDVD() -> Bool
  func displayName() -> String!
  func ioRegistryEntryPath() -> String!
}
extension DRDevice {
  func mediaIsPresent() -> Bool
  func mediaIsTransitioning() -> Bool
  func mediaIsBusy() -> Bool
  func mediaType() -> String!
  func mediaIsBlank() -> Bool
  func mediaIsAppendable() -> Bool
  func mediaIsOverwritable() -> Bool
  func mediaIsErasable() -> Bool
  func mediaIsReserved() -> Bool
  func mediaSpaceOverwritable() -> DRMSF!
  func mediaSpaceUsed() -> DRMSF!
  func mediaSpaceFree() -> DRMSF!
  func trayIsOpen() -> Bool
  func bsdName() -> String!
}
@available(macOS 10.2, *)
let DRDeviceBurnSpeedCD1x: Float
@available(macOS 10.2, *)
let DRDeviceBurnSpeedDVD1x: Float
@available(macOS 10.5, *)
let DRDeviceBurnSpeedBD1x: Float
@available(macOS 10.5, *)
let DRDeviceBurnSpeedHDDVD1x: Float
@available(macOS 10.2, *)
let DRDeviceBurnSpeedMax: Float
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let DRDeviceAppeared: NSNotification.Name
  @available(macOS 10.2, *)
  static let DRDeviceDisappeared: NSNotification.Name
  @available(macOS 10.2, *)
  static let DRDeviceStatusChanged: NSNotification.Name
}
@available(macOS 10.2, *)
let DRDeviceSupportLevelKey: String
@available(macOS 10.2, *)
let DRDeviceIORegistryEntryPathKey: String
@available(macOS 10.2, *)
let DRDeviceWriteCapabilitiesKey: String
@available(macOS 10.2, *)
let DRDeviceVendorNameKey: String
@available(macOS 10.2, *)
let DRDeviceProductNameKey: String
@available(macOS 10.2, *)
let DRDeviceFirmwareRevisionKey: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectKey: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectLocationKey: String
@available(macOS 10.3, *)
let DRDeviceLoadingMechanismCanEjectKey: String
@available(macOS 10.3, *)
let DRDeviceLoadingMechanismCanInjectKey: String
@available(macOS 10.3, *)
let DRDeviceLoadingMechanismCanOpenKey: String
@available(macOS 10.3, *)
let DRDeviceWriteBufferSizeKey: String
@available(macOS 10.2, *)
let DRDeviceSupportLevelNone: String
@available(macOS 10.3, *)
let DRDeviceSupportLevelUnsupported: String
@available(macOS 10.2, *)
let DRDeviceSupportLevelVendorSupported: String
@available(macOS 10.2, *)
let DRDeviceSupportLevelAppleSupported: String
@available(macOS 10.2, *)
let DRDeviceSupportLevelAppleShipping: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectATAPI: String
@available(macOS 10.3, *)
let DRDevicePhysicalInterconnectFibreChannel: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectFireWire: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectSCSI: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectUSB: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectLocationInternal: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectLocationExternal: String
@available(macOS 10.2, *)
let DRDevicePhysicalInterconnectLocationUnknown: String
@available(macOS 10.2, *)
let DRDeviceCanWriteKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteCDKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteCDRKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteCDRWKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteDVDKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteDVDRKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteDVDRDualLayerKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteDVDRWKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteDVDRWDualLayerKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteDVDRAMKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteDVDPlusRKey: String
@available(macOS 10.4, *)
let DRDeviceCanWriteDVDPlusRDoubleLayerKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteDVDPlusRWKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteDVDPlusRWDoubleLayerKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteBDKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteBDRKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteBDREKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteHDDVDKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteHDDVDRKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteHDDVDRDualLayerKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteHDDVDRAMKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteHDDVDRWKey: String
@available(macOS 10.5, *)
let DRDeviceCanWriteHDDVDRWDualLayerKey: String
@available(macOS 10.2, *)
let DRDeviceCanWriteCDTextKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteIndexPointsKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteISRCKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteCDTAOKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteCDSAOKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteCDRawKey: String
@available(macOS 10.3, *)
let DRDeviceCanWriteDVDDAOKey: String
@available(macOS 10.2, *)
let DRDeviceCanTestWriteCDKey: String
@available(macOS 10.2, *)
let DRDeviceCanTestWriteDVDKey: String
@available(macOS 10.2, *)
let DRDeviceCanUnderrunProtectCDKey: String
@available(macOS 10.2, *)
let DRDeviceCanUnderrunProtectDVDKey: String
@available(macOS 10.2, *)
let DRDeviceIsBusyKey: String
@available(macOS 10.2, *)
let DRDeviceIsTrayOpenKey: String
@available(macOS 10.2, *)
let DRDeviceMaximumWriteSpeedKey: String
@available(macOS 10.2, *)
let DRDeviceCurrentWriteSpeedKey: String
@available(macOS 10.2, *)
let DRDeviceMediaStateKey: String
@available(macOS 10.2, *)
let DRDeviceMediaInfoKey: String
@available(macOS 10.2, *)
let DRDeviceBurnSpeedsKey: String
@available(macOS 10.3, *)
let DRDeviceTrackRefsKey: String
@available(macOS 10.3, *)
let DRDeviceTrackInfoKey: String
@available(macOS 10.2, *)
let DRDeviceMediaStateMediaPresent: String
@available(macOS 10.2, *)
let DRDeviceMediaStateInTransition: String
@available(macOS 10.2, *)
let DRDeviceMediaStateNone: String
@available(macOS 10.2, *)
let DRDeviceMediaBSDNameKey: String
@available(macOS 10.2, *)
let DRDeviceMediaIsBlankKey: String
@available(macOS 10.2, *)
let DRDeviceMediaIsAppendableKey: String
@available(macOS 10.3, *)
let DRDeviceMediaIsOverwritableKey: String
@available(macOS 10.2, *)
let DRDeviceMediaIsErasableKey: String
@available(macOS 10.2, *)
let DRDeviceMediaIsReservedKey: String
@available(macOS 10.3, *)
let DRDeviceMediaOverwritableSpaceKey: String
@available(macOS 10.2, *)
let DRDeviceMediaFreeSpaceKey: String
@available(macOS 10.2, *)
let DRDeviceMediaUsedSpaceKey: String
@available(macOS 10.3, *)
let DRDeviceMediaBlocksOverwritableKey: String
@available(macOS 10.2, *)
let DRDeviceMediaBlocksFreeKey: String
@available(macOS 10.2, *)
let DRDeviceMediaBlocksUsedKey: String
@available(macOS 10.4, *)
let DRDeviceMediaDoubleLayerL0DataZoneBlocksKey: String
@available(macOS 10.2, *)
let DRDeviceMediaTrackCountKey: String
@available(macOS 10.2, *)
let DRDeviceMediaSessionCountKey: String
@available(macOS 10.2, *)
let DRDeviceMediaClassKey: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeKey: String
@available(macOS 10.2, *)
let DRDeviceMediaClassCD: String
@available(macOS 10.2, *)
let DRDeviceMediaClassDVD: String
@available(macOS 10.5, *)
let DRDeviceMediaClassBD: String
@available(macOS 10.5, *)
let DRDeviceMediaClassHDDVD: String
@available(macOS 10.2, *)
let DRDeviceMediaClassUnknown: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeCDROM: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeCDR: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeCDRW: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeDVDROM: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeDVDRAM: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeDVDR: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeDVDRDualLayer: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeDVDRW: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeDVDRWDualLayer: String
@available(macOS 10.3, *)
let DRDeviceMediaTypeDVDPlusR: String
@available(macOS 10.4, *)
let DRDeviceMediaTypeDVDPlusRDoubleLayer: String
@available(macOS 10.3, *)
let DRDeviceMediaTypeDVDPlusRW: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeDVDPlusRWDoubleLayer: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeBDR: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeBDRE: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeBDROM: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeHDDVDROM: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeHDDVDR: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeHDDVDRDualLayer: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeHDDVDRAM: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeHDDVDRW: String
@available(macOS 10.5, *)
let DRDeviceMediaTypeHDDVDRWDualLayer: String
@available(macOS 10.2, *)
let DRDeviceMediaTypeUnknown: String
