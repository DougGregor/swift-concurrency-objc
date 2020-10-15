
var kIOPMMaxPowerStates: Int { get }
var IOPMMaxPowerStates: Int { get }
typealias IOPMPowerFlags = UInt
var kIOPMPowerOn: Int { get }
var kIOPMDeviceUsable: Int { get }
var kIOPMLowPower: Int { get }
var kIOPMPreventIdleSleep: Int { get }
var kIOPMSleepCapability: Int { get }
var kIOPMRestartCapability: Int { get }
var kIOPMSleep: Int { get }
var kIOPMRestart: Int { get }
var kIOPMInitialDeviceState: Int { get }
var kIOPMRootDomainState: Int { get }
var kIOPMClockNormal: Int { get }
var kIOPMClockRunning: Int { get }
var kIOPMPreventSystemSleep: Int { get }
var kIOPMDoze: Int { get }
var kIOPMChildClamp: Int { get }
var kIOPMChildClamp2: Int { get }
var kIOPMNotPowerManaged: Int { get }
var kIOPMMaxPerformance: Int { get }
var kIOPMPassThrough: Int { get }
var kIOPMAuxPowerOn: Int { get }
var kIOPMNotAttainable: Int { get }
var kIOPMContextRetained: Int { get }
var kIOPMConfigRetained: Int { get }
var kIOPMStaticPowerValid: Int { get }
var kIOPMSoftSleep: Int { get }
var kIOPMCapabilitiesMask: Int { get }
var IOPMNotAttainable: Int { get }
var IOPMPowerOn: Int { get }
var IOPMClockNormal: Int { get }
var IOPMClockRunning: Int { get }
var IOPMAuxPowerOn: Int { get }
var IOPMDeviceUsable: Int { get }
var IOPMMaxPerformance: Int { get }
var IOPMContextRetained: Int { get }
var IOPMConfigRetained: Int { get }
var IOPMNotPowerManaged: Int { get }
var IOPMSoftSleep: Int { get }
var kIOPMNextHigherState: Int { get }
var kIOPMHighestState: Int { get }
var kIOPMNextLowerState: Int { get }
var kIOPMLowestState: Int { get }
var IOPMNextHigherState: Int { get }
var IOPMHighestState: Int { get }
var IOPMNextLowerState: Int { get }
var IOPMLowestState: Int { get }
var kIOPMBroadcastAggressiveness: Int { get }
var kIOPMUnidleDevice: Int { get }
var kIOPMUnknown: Int { get }
var kAppleClamshellStateKey: String { get }
var kAppleClamshellCausesSleepKey: String { get }
var kIOPMSleepWakeUUIDKey: String { get }
var kIOPMBootSessionUUIDKey: String { get }
var kIOPMDeepSleepEnabledKey: String { get }
var kIOPMDeepSleepDelayKey: String { get }
var kIOPMDeepSleepDelayHighKey: String { get }
var kIOPMStandbyBatteryThresholdKey: String { get }
var kIOPMDestroyFVKeyOnStandbyKey: String { get }
var kIOPMResetPowerStateOnWakeKey: String { get }
var kIOPMDriverAssertionCPUBit: Int { get }
var kIOPMDriverAssertionPreventSystemIdleSleepBit: Int { get }
var kIOPMDriverAssertionUSBExternalDeviceBit: Int { get }
var kIOPMDriverAssertionBluetoothHIDDevicePairedBit: Int { get }
var kIOPMDriverAssertionExternalMediaMountedBit: Int { get }
var kIOPMDriverAssertionReservedBit5: Int { get }
var kIOPMDriverAssertionPreventDisplaySleepBit: Int { get }
var kIOPMDriverAssertionReservedBit7: Int { get }
var kIOPMDriverAssertionMagicPacketWakeEnabledBit: Int { get }
var kIOPMDriverAssertionNetworkKeepAliveActiveBit: Int { get }
var kIOPMAssertionsDriverKey: String { get }
var kIOPMAssertionsDriverDetailedKey: String { get }
var kIOPMDriverAssertionIDKey: String { get }
var kIOPMDriverAssertionCreatedTimeKey: String { get }
var kIOPMDriverAssertionModifiedTimeKey: String { get }
var kIOPMDriverAssertionOwnerStringKey: String { get }
var kIOPMDriverAssertionOwnerServiceKey: String { get }
var kIOPMDriverAssertionRegistryEntryIDKey: String { get }
var kIOPMDriverAssertionLevelKey: String { get }
var kIOPMDriverAssertionAssertedKey: String { get }
var kClamshellStateBit: Int { get }
var kClamshellSleepBit: Int { get }
var kInflowForciblyEnabledBit: Int { get }
var kIOPMSleepNow: Int { get }
var kIOPMAllowSleep: Int { get }
var kIOPMPreventSleep: Int { get }
var kIOPMPowerButton: Int { get }
var kIOPMClamshellClosed: Int { get }
var kIOPMPowerEmergency: Int { get }
var kIOPMDisableClamshell: Int { get }
var kIOPMEnableClamshell: Int { get }
var kIOPMProcessorSpeedChange: Int { get }
var kIOPMOverTemp: Int { get }
var kIOPMClamshellOpened: Int { get }
var kIOPMDWOverTemp: Int { get }
var kIOPMPowerButtonUp: Int { get }
var kIOPMProModeEngaged: Int { get }
var kIOPMProModeDisengaged: Int { get }
var kIOPMNoErr: Int { get }
var kIOPMAckImplied: Int { get }
var kIOPMWillAckLater: Int { get }
var kIOPMBadSpecification: Int { get }
var kIOPMNoSuchState: Int { get }
var kIOPMCannotRaisePower: Int { get }
var kIOPMParameterError: Int { get }
var kIOPMNotYetInitialized: Int { get }
var IOPMNoErr: Int { get }
var IOPMAckImplied: Int { get }
var IOPMWillAckLater: Int { get }
var IOPMBadSpecification: Int { get }
var IOPMNoSuchState: Int { get }
var IOPMCannotRaisePower: Int { get }
var IOPMParameterError: Int { get }
var IOPMNotYetInitialized: Int { get }
var kIOPMPSExternalConnectedKey: String { get }
var kIOPMPSExternalChargeCapableKey: String { get }
var kIOPMPSBatteryInstalledKey: String { get }
var kIOPMPSIsChargingKey: String { get }
var kIOPMFullyChargedKey: String { get }
var kIOPMPSAtWarnLevelKey: String { get }
var kIOPMPSAtCriticalLevelKey: String { get }
var kIOPMPSCurrentCapacityKey: String { get }
var kIOPMPSMaxCapacityKey: String { get }
var kIOPMPSDesignCapacityKey: String { get }
var kIOPMPSTimeRemainingKey: String { get }
var kIOPMPSAmperageKey: String { get }
var kIOPMPSVoltageKey: String { get }
var kIOPMPSCycleCountKey: String { get }
var kIOPMPSMaxErrKey: String { get }
var kIOPMPSAdapterInfoKey: String { get }
var kIOPMPSLocationKey: String { get }
var kIOPMPSErrorConditionKey: String { get }
var kIOPMPSManufacturerKey: String { get }
var kIOPMPSManufactureDateKey: String { get }
var kIOPMPSModelKey: String { get }
var kIOPMPSSerialKey: String { get }
var kIOPMDeviceNameKey: String { get }
var kIOPMPSLegacyBatteryInfoKey: String { get }
var kIOPMPSBatteryHealthKey: String { get }
var kIOPMPSHealthConfidenceKey: String { get }
var kIOPMPSCapacityEstimatedKey: String { get }
var kIOPMPSBatteryChargeStatusKey: String { get }
var kIOPMPSBatteryTemperatureKey: String { get }
var kIOPMPSAdapterDetailsKey: String { get }
var kIOPMPSChargerConfigurationKey: String { get }
var kIOPMBatteryChargeStatusTooHot: String { get }
var kIOPMBatteryChargeStatusTooCold: String { get }
var kIOPMBatteryChargeStatusTooHotOrCold: String { get }
var kIOPMBatteryChargeStatusGradient: String { get }
var kIOPMPSLocationLeft: Int { get }
var kIOPMPSLocationRight: Int { get }
var kIOPMUndefinedValue: Int { get }
var kIOPMPoorValue: Int { get }
var kIOPMFairValue: Int { get }
var kIOPMGoodValue: Int { get }
var kIOPMPSAdapterDetailsIDKey: String { get }
var kIOPMPSAdapterDetailsWattsKey: String { get }
var kIOPMPSAdapterDetailsRevisionKey: String { get }
var kIOPMPSAdapterDetailsSerialNumberKey: String { get }
var kIOPMPSAdapterDetailsFamilyKey: String { get }
var kIOPMPSAdapterDetailsAmperageKey: String { get }
var kIOPMPSAdapterDetailsDescriptionKey: String { get }
var kIOPMPSAdapterDetailsPMUConfigurationKey: String { get }
var kIOPMPSAdapterDetailsVoltage: String { get }
var kIOPMPSAdapterDetailsSourceIDKey: String { get }
var kIOPMPSAdapterDetailsErrorFlagsKey: String { get }
var kIOPMPSAdapterDetailsSharedSourceKey: String { get }
var kIOPMPSAdapterDetailsCloakedKey: String { get }
var kIOPSFamilyCodeDisconnected: Int { get }
var kIOPSFamilyCodeUnsupported: Int { get }
var kIOPSFamilyCodeFirewire: Int { get }
var kIOPSFamilyCodeUSBHost: Int { get }
var kIOPSFamilyCodeUSBHostSuspended: Int { get }
var kIOPSFamilyCodeUSBDevice: Int { get }
var kIOPSFamilyCodeUSBAdapter: Int { get }
var kIOPSFamilyCodeUSBChargingPortDedicated: Int { get }
var kIOPSFamilyCodeUSBChargingPortDownstream: Int { get }
var kIOPSFamilyCodeUSBChargingPort: Int { get }
var kIOPSFamilyCodeUSBUnknown: Int { get }
var kIOPSFamilyCodeUSBCBrick: Int { get }
var kIOPSFamilyCodeUSBCTypeC: Int { get }
var kIOPSFamilyCodeUSBCPD: Int { get }
var kIOPSFamilyCodeAC: Int { get }
var kIOPSFamilyCodeExternal: Int { get }
var kIOPSFamilyCodeExternal2: Int { get }
var kIOPSFamilyCodeExternal3: Int { get }
var kIOPSFamilyCodeExternal4: Int { get }
var kIOPSFamilyCodeExternal5: Int { get }
var kIOPSFamilyCodeExternal6: Int { get }
var kIOPSAdapterErrorFlagNoErrors: Int { get }
var kIOPSAdapterErrorFlagInsufficientAvailablePower: Int { get }
var kIOPSAdapterErrorFlagForeignObjectDetected: Int { get }
var kIOPSAdapterErrorFlagDeviceNeedsToBeRepositioned: Int { get }
var kIOPMPSInvalidWakeSecondsKey: String { get }
var kIOPMPSPostChargeWaitSecondsKey: String { get }
var kIOPMPSPostDishargeWaitSecondsKey: String { get }
var kIOPMGraphicsPowerLimitsKey: String { get }
var kIOPMGraphicsPowerLimitPerformanceKey: String { get }
var kIOPMCPUPowerLimitsKey: String { get }
var kIOPMCPUPowerLimitProcessorSpeedKey: String { get }
var kIOPMCPUPowerLimitProcessorCountKey: String { get }
var kIOPMCPUPowerLimitSchedulerTimeKey: String { get }
var kIOPMThermalLevelWarningKey: String { get }
var kIOPMThermalLevelNormal: Int { get }
var kIOPMThermalLevelDanger: Int { get }
var kIOPMThermalLevelCritical: Int { get }
var kIOPMThermalLevelWarning: Int { get }
var kIOPMThermalLevelTrap: Int { get }
var kIOPMThermalLevelUnknown: Int { get }
var kIOPMSettingWakeOnRingKey: String { get }
var kIOPMSettingRestartOnPowerLossKey: String { get }
var kIOPMSettingWakeOnACChangeKey: String { get }
var kIOPMSettingSleepOnPowerButtonKey: String { get }
var kIOPMSettingWakeOnClamshellKey: String { get }
var kIOPMSettingReduceBrightnessKey: String { get }
var kIOPMSettingDisplaySleepUsesDimKey: String { get }
var kIOPMSettingTimeZoneOffsetKey: String { get }
var kIOPMSettingMobileMotionModuleKey: String { get }
var kIOPMSettingGraphicsSwitchKey: String { get }
var kIOPMSettingProModeControl: String { get }
var kIOPMSettingProModeDefer: String { get }
var kIOPMSettingAutoWakeSecondsKey: String { get }
var kIOPMSettingAutoWakeCalendarKey: String { get }
var kIOPMSettingAutoPowerSecondsKey: String { get }
var kIOPMSettingAutoPowerCalendarKey: String { get }
var kIOPMSettingDebugWakeRelativeKey: String { get }
var kIOPMSettingDebugPowerRelativeKey: String { get }
var kIOPMSettingMaintenanceWakeCalendarKey: String { get }
struct IOPMCalendarStruct {
  var year: UInt32
  var month: UInt8
  var day: UInt8
  var hour: UInt8
  var minute: UInt8
  var second: UInt8
  var selector: UInt8
  init()
  init(year: UInt32, month: UInt8, day: UInt8, hour: UInt8, minute: UInt8, second: UInt8, selector: UInt8)
}
var kPMGeneralAggressiveness: Int { get }
var kPMMinutesToDim: Int { get }
var kPMMinutesToSpinDown: Int { get }
var kPMMinutesToSleep: Int { get }
var kPMEthernetWakeOnLANSettings: Int { get }
var kPMSetProcessorSpeed: Int { get }
var kPMPowerSource: Int { get }
var kPMMotionSensor: Int { get }
var kPMLastAggressivenessType: Int { get }
var kIOPMInternalPower: Int { get }
var kIOPMExternalPower: Int { get }
var kIOREMSleepEnabledKey: String { get }
var kIOBatteryInfoKey: String { get }
var kIOBatteryCurrentChargeKey: String { get }
var kIOBatteryCapacityKey: String { get }
var kIOBatteryFlagsKey: String { get }
var kIOBatteryVoltageKey: String { get }
var kIOBatteryAmperageKey: String { get }
var kIOBatteryCycleCountKey: String { get }
var kIOBatteryInstalled: Int { get }
var kIOBatteryCharge: Int { get }
var kIOBatteryChargerConnect: Int { get }
var IOPM_POWER_SOURCE_REV: Int32 { get }
var kIOPMACInstalled: Int { get }
var kIOPMBatteryCharging: Int { get }
var kIOPMBatteryInstalled: Int { get }
var kIOPMUPSInstalled: Int { get }
var kIOPMBatteryAtWarn: Int { get }
var kIOPMBatteryDepleted: Int { get }
var kIOPMACnoChargeCapability: Int { get }
var kIOPMRawLowBattery: Int { get }
var kIOPMForceLowSpeed: Int { get }
var kIOPMClosedClamshell: Int { get }
var kIOPMClamshellStateOnWake: Int { get }
struct IOPowerStateChangeNotification {
  var powerRef: UnsafeMutableRawPointer!
  var returnValue: UInt
  var stateNumber: UInt
  var stateFlags: IOPMPowerFlags
  init()
  init(powerRef: UnsafeMutableRawPointer!, returnValue: UInt, stateNumber: UInt, stateFlags: IOPMPowerFlags)
}
typealias sleepWakeNote = IOPowerStateChangeNotification
struct IOPMSystemCapabilityChangeParameters {
  var notifyRef: UInt32
  var maxWaitForReply: UInt32
  var changeFlags: UInt32
  var __reserved1: UInt32
  var fromCapabilities: UInt32
  var toCapabilities: UInt32
  var __reserved2: (UInt32, UInt32, UInt32, UInt32)
  init()
  init(notifyRef: UInt32, maxWaitForReply: UInt32, changeFlags: UInt32, __reserved1: UInt32, fromCapabilities: UInt32, toCapabilities: UInt32, __reserved2: (UInt32, UInt32, UInt32, UInt32))
}
var kIOPMSystemCapabilityWillChange: Int { get }
var kIOPMSystemCapabilityDidChange: Int { get }
var kIOPMSystemCapabilityCPU: Int { get }
var kIOPMSystemCapabilityGraphics: Int { get }
var kIOPMSystemCapabilityAudio: Int { get }
var kIOPMSystemCapabilityNetwork: Int { get }
var kIOPMAutoWake: String { get }
var kIOPMAutoPowerOn: String { get }
var kIOPMAutoWakeOrPowerOn: String { get }
var kIOPMAutoSleep: String { get }
var kIOPMAutoShutdown: String { get }
var kIOPMAutoRestart: String { get }
var kIOPMPowerEventTimeKey: String { get }
var kIOPMPowerEventAppNameKey: String { get }
var kIOPMPowerEventAppPIDKey: String { get }
var kIOPMPowerEventTypeKey: String { get }
var kPMSetAggressiveness: Int32 { get }
var kPMGetAggressiveness: Int32 { get }
var kPMSleepSystem: Int32 { get }
var kPMAllowPowerChange: Int32 { get }
var kPMCancelPowerChange: Int32 { get }
var kPMShutdownSystem: Int32 { get }
var kPMRestartSystem: Int32 { get }
var kPMSleepSystemOptions: Int32 { get }
var kPMSetMaintenanceWakeCalendar: Int32 { get }
var kPMSetUserAssertionLevels: Int32 { get }
var kPMActivityTickle: Int32 { get }
var kPMGetSystemSleepType: Int32 { get }
var kPMSetClamshellSleepState: Int32 { get }
var kPMSleepWakeWatchdogEnable: Int32 { get }
var kPMSleepWakeDebugTrig: Int32 { get }
var kPMSetDisplayPowerOn: Int32 { get }
var kPMSetDisplayState: Int32 { get }
var kNumPMMethods: Int32 { get }
func IOPMFindPowerManagement(_ master_device_port: mach_port_t) -> io_connect_t
func IOPMSetAggressiveness(_ fb: io_connect_t, _ type: UInt, _ aggressiveness: UInt) -> IOReturn
func IOPMGetAggressiveness(_ fb: io_connect_t, _ type: UInt, _ aggressiveness: UnsafeMutablePointer<UInt>!) -> IOReturn
func IOPMSleepEnabled() -> boolean_t
func IOPMSleepSystem(_ fb: io_connect_t) -> IOReturn
func IOPMCopyBatteryInfo(_ masterPort: mach_port_t, _ info: UnsafeMutablePointer<Unmanaged<CFArray>?>!) -> IOReturn
func IORegisterForSystemPower(_ refcon: UnsafeMutableRawPointer!, _ thePortRef: UnsafeMutablePointer<IONotificationPortRef?>!, _ callback: IOServiceInterestCallback!, _ notifier: UnsafeMutablePointer<io_object_t>!) -> io_connect_t
func IODeregisterApp(_ notifier: UnsafeMutablePointer<io_object_t>!) -> IOReturn
func IODeregisterForSystemPower(_ notifier: UnsafeMutablePointer<io_object_t>!) -> IOReturn
func IOAllowPowerChange(_ kernelPort: io_connect_t, _ notificationID: Int) -> IOReturn
func IOCancelPowerChange(_ kernelPort: io_connect_t, _ notificationID: Int) -> IOReturn
func IOPMSchedulePowerEvent(_ time_to_wake: CFDate!, _ my_id: CFString!, _ type: CFString!) -> IOReturn
func IOPMCancelScheduledPowerEvent(_ time_to_wake: CFDate!, _ my_id: CFString!, _ type: CFString!) -> IOReturn
func IOPMCopyScheduledPowerEvents() -> Unmanaged<CFArray>!
var kIOPMAssertPreventUserIdleSystemSleep: String { get }
var kIOPMAssertPreventUserIdleDisplaySleep: String { get }
var kIOPMAssertPreventDiskIdle: String { get }
var kIOPMAssertNetworkClientActive: String { get }
typealias IOPMAssertionID = UInt32
var kIOPMNullAssertionID: Int { get }
typealias IOPMAssertionLevel = UInt32
var kIOPMAssertionLevelOff: Int { get }
var kIOPMAssertionLevelOn: Int { get }
struct IOPMUserActiveType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOPMUserActiveLocal: IOPMUserActiveType { get }
var kIOPMUserActiveRemote: IOPMUserActiveType { get }
@available(macOS 10.7, *)
func IOPMAssertionCreateWithDescription(_ AssertionType: CFString!, _ Name: CFString!, _ Details: CFString!, _ HumanReadableReason: CFString!, _ LocalizationBundlePath: CFString!, _ Timeout: CFTimeInterval, _ TimeoutAction: CFString!, _ AssertionID: UnsafeMutablePointer<IOPMAssertionID>!) -> IOReturn
@available(macOS 10.7, *)
func IOPMAssertionCreateWithProperties(_ AssertionProperties: CFDictionary!, _ AssertionID: UnsafeMutablePointer<IOPMAssertionID>!) -> IOReturn
@available(macOS 10.7, *)
func IOPMAssertionDeclareUserActivity(_ AssertionName: CFString!, _ userType: IOPMUserActiveType, _ AssertionID: UnsafeMutablePointer<IOPMAssertionID>!) -> IOReturn
@available(macOS 10.9, *)
func IOPMDeclareNetworkClientActivity(_ AssertionName: CFString!, _ AssertionID: UnsafeMutablePointer<IOPMAssertionID>!) -> IOReturn
@available(macOS 10.7, *)
func IOPMAssertionRetain(_ theAssertion: IOPMAssertionID)
@available(macOS 10.7, *)
func IOPMAssertionRelease(_ AssertionID: IOPMAssertionID) -> IOReturn
@available(macOS 10.7, *)
func IOPMAssertionCopyProperties(_ theAssertion: IOPMAssertionID) -> Unmanaged<CFDictionary>!
@available(macOS 10.7, *)
func IOPMAssertionSetProperty(_ theAssertion: IOPMAssertionID, _ theProperty: CFString!, _ theValue: CFTypeRef!) -> IOReturn
@available(macOS 10.7, *)
func IOPMCopyAssertionsByProcess(_ AssertionsByPID: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!) -> IOReturn
@available(macOS 10.7, *)
func IOPMCopyAssertionsStatus(_ AssertionsStatus: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!) -> IOReturn
@available(macOS 10.6, *)
func IOPMAssertionCreateWithName(_ AssertionType: CFString!, _ AssertionLevel: IOPMAssertionLevel, _ AssertionName: CFString!, _ AssertionID: UnsafeMutablePointer<IOPMAssertionID>!) -> IOReturn
var kIOPMAssertionTimeoutKey: String { get }
var kIOPMAssertionTimeoutActionKey: String { get }
var kIOPMAssertionTimeoutActionLog: String { get }
var kIOPMAssertionTimeoutActionTurnOff: String { get }
var kIOPMAssertionTimeoutActionRelease: String { get }
var kIOPMAssertionRetainCountKey: String { get }
var kIOPMAssertionNameKey: String { get }
var kIOPMAssertionDetailsKey: String { get }
var kIOPMAssertionHumanReadableReasonKey: String { get }
var kIOPMAssertionLocalizationBundlePathKey: String { get }
var kIOPMAssertionFrameworkIDKey: String { get }
var kIOPMAssertionPlugInIDKey: String { get }
var kIOPMAssertionTypeKey: String { get }
var kIOPMAssertionLevelKey: String { get }
var kIOPMAssertionTypePreventUserIdleSystemSleep: String { get }
var kIOPMAssertionTypePreventUserIdleDisplaySleep: String { get }
var kIOPMAssertionTypePreventSystemSleep: String { get }
var kIOPMAssertionTypeNoIdleSleep: String { get }
var kIOPMAssertionTypeNoDisplaySleep: String { get }
var kIOSystemLoadAdvisoryNotifyName: String { get }
typealias IOSystemLoadAdvisoryLevel = Int32
var kIOSystemLoadAdvisoryLevelBad: Int { get }
var kIOSystemLoadAdvisoryLevelOK: Int { get }
var kIOSystemLoadAdvisoryLevelGreat: Int { get }
var kIOSystemLoadAdvisoryUserLevelKey: String { get }
var kIOSystemLoadAdvisoryBatteryLevelKey: String { get }
var kIOSystemLoadAdvisoryThermalLevelKey: String { get }
var kIOSystemLoadAdvisoryCombinedLevelKey: String { get }
func IOGetSystemLoadAdvisory() -> IOSystemLoadAdvisoryLevel
func IOCopySystemLoadAdvisoryDetailed() -> Unmanaged<CFDictionary>!
var kIOPMCPUPowerNotificationKey: String { get }
var kIOPMThermalWarningNotificationKey: String { get }
func IOPMCopyCPUPowerStatus(_ cpuPowerStatus: UnsafeMutablePointer<Unmanaged<CFDictionary>?>!) -> IOReturn
func IOPMGetThermalWarningLevel(_ thermalLevel: UnsafeMutablePointer<UInt32>!) -> IOReturn
