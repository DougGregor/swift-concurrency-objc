
var kIOPSPowerAdapterIDKey: String { get }
var kIOPSPowerAdapterWattsKey: String { get }
var kIOPSPowerAdapterRevisionKey: String { get }
var kIOPSPowerAdapterSerialNumberKey: String { get }
var kIOPSPowerAdapterFamilyKey: String { get }
var kIOPSPowerAdapterCurrentKey: String { get }
var kIOPSPowerAdapterSourceKey: String { get }
var kIOPSUPSManagementClaimed: String { get }
var kIOPSLowWarnLevelKey: String { get }
var kIOPSDeadWarnLevelKey: String { get }
var kIOPSDynamicStorePath: String { get }
var kIOPSCommandDelayedRemovePowerKey: String { get }
var kIOPSCommandEnableAudibleAlarmKey: String { get }
var kIOPSCommandStartupDelayKey: String { get }
var kIOPSCommandSetCurrentLimitKey: String { get }
var kIOPSCommandSetRequiredVoltageKey: String { get }
var kIOPSCommandSendCurrentStateOfCharge: String { get }
var kIOPSCommandSendCurrentTemperature: String { get }
var kIOPSPowerSourceIDKey: String { get }
var kIOPSPowerSourceStateKey: String { get }
var kIOPSCurrentCapacityKey: String { get }
var kIOPSMaxCapacityKey: String { get }
var kIOPSDesignCapacityKey: String { get }
var kIOPSNominalCapacityKey: String { get }
var kIOPSTimeToEmptyKey: String { get }
var kIOPSTimeToFullChargeKey: String { get }
var kIOPSIsChargingKey: String { get }
var kIOPSInternalFailureKey: String { get }
var kIOPSIsPresentKey: String { get }
var kIOPSVoltageKey: String { get }
var kIOPSCurrentKey: String { get }
var kIOPSTemperatureKey: String { get }
var kIOPSNameKey: String { get }
var kIOPSTypeKey: String { get }
var kIOPSTransportTypeKey: String { get }
var kIOPSVendorIDKey: String { get }
var kIOPSProductIDKey: String { get }
var kIOPSVendorDataKey: String { get }
var kIOPSBatteryHealthKey: String { get }
var kIOPSBatteryHealthConditionKey: String { get }
var kIOPSBatteryFailureModesKey: String { get }
var kIOPSHealthConfidenceKey: String { get }
var kIOPSMaxErrKey: String { get }
var kIOPSIsChargedKey: String { get }
var kIOPSIsFinishingChargeKey: String { get }
var kIOPSHardwareSerialNumberKey: String { get }
var kIOPSSerialTransportType: String { get }
var kIOPSUSBTransportType: String { get }
var kIOPSNetworkTransportType: String { get }
var kIOPSInternalType: String { get }
var kIOPSInternalBatteryType: String { get }
var kIOPSUPSType: String { get }
var kIOPSOffLineValue: String { get }
var kIOPSACPowerValue: String { get }
var kIOPSBatteryPowerValue: String { get }
var kIOPSPoorValue: String { get }
var kIOPSFairValue: String { get }
var kIOPSGoodValue: String { get }
var kIOPSCheckBatteryValue: String { get }
var kIOPSPermanentFailureValue: String { get }
var kIOPSFailureExternalInput: String { get }
var kIOPSFailureSafetyOverVoltage: String { get }
var kIOPSFailureChargeOverTemp: String { get }
var kIOPSFailureDischargeOverTemp: String { get }
var kIOPSFailureCellImbalance: String { get }
var kIOPSFailureChargeFET: String { get }
var kIOPSFailureDischargeFET: String { get }
var kIOPSFailureDataFlushFault: String { get }
var kIOPSFailurePermanentAFEComms: String { get }
var kIOPSFailurePeriodicAFEComms: String { get }
var kIOPSFailureChargeOverCurrent: String { get }
var kIOPSFailureDischargeOverCurrent: String { get }
var kIOPSFailureOpenThermistor: String { get }
var kIOPSFailureFuseBlown: String { get }
var kIOPSNotifyLowBattery: String { get }
struct IOPSLowBatteryWarningLevel : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOPSLowBatteryWarningNone: IOPSLowBatteryWarningLevel { get }
var kIOPSLowBatteryWarningEarly: IOPSLowBatteryWarningLevel { get }
var kIOPSLowBatteryWarningFinal: IOPSLowBatteryWarningLevel { get }
func IOPSGetBatteryWarningLevel() -> IOPSLowBatteryWarningLevel
var kIOPSNotifyTimeRemaining: String { get }
var kIOPSTimeRemainingNotificationKey: String { get }
var kIOPSNotifyPowerSource: String { get }
var kIOPSNotifyAttach: String { get }
var kIOPSNotifyAnyPowerSource: String { get }
var kIOPSTimeRemainingUnknown: CFTimeInterval { get }
var kIOPSTimeRemainingUnlimited: CFTimeInterval { get }
var kIOPMUPSPowerKey: String { get }
var kIOPMBatteryPowerKey: String { get }
var kIOPMACPowerKey: String { get }
func IOPSGetTimeRemainingEstimate() -> CFTimeInterval
typealias IOPowerSourceCallbackType = @convention(c) (UnsafeMutableRawPointer?) -> Void
func IOPSCopyPowerSourcesInfo() -> Unmanaged<CFTypeRef>!
func IOPSCopyPowerSourcesList(_ blob: CFTypeRef!) -> Unmanaged<CFArray>!
func IOPSGetPowerSourceDescription(_ blob: CFTypeRef!, _ ps: CFTypeRef!) -> Unmanaged<CFDictionary>!
func IOPSGetProvidingPowerSourceType(_ snapshot: CFTypeRef!) -> Unmanaged<CFString>!
func IOPSNotificationCreateRunLoopSource(_ callback: IOPowerSourceCallbackType!, _ context: UnsafeMutableRawPointer!) -> Unmanaged<CFRunLoopSource>!
@available(macOS 10.9, *)
func IOPSCreateLimitedPowerNotification(_ callback: IOPowerSourceCallbackType!, _ context: UnsafeMutableRawPointer!) -> Unmanaged<CFRunLoopSource>!
func IOPSCopyExternalPowerAdapterDetails() -> Unmanaged<CFDictionary>!
typealias IOUPSEventCallbackFunction = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, CFDictionary?) -> Void
struct IOUPSPlugInInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var getProperties: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!
  var getCapabilities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFSet>?>?) -> IOReturn)!
  var getEvent: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!
  var setEventCallback: (@convention(c) (UnsafeMutableRawPointer?, IOUPSEventCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var sendCommand: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, getProperties: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!, getCapabilities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFSet>?>?) -> IOReturn)!, getEvent: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!, setEventCallback: (@convention(c) (UnsafeMutableRawPointer?, IOUPSEventCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, sendCommand: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?) -> IOReturn)!)
}
struct IOUPSPlugInInterface_v140 {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var getProperties: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!
  var getCapabilities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFSet>?>?) -> IOReturn)!
  var getEvent: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!
  var setEventCallback: (@convention(c) (UnsafeMutableRawPointer?, IOUPSEventCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var sendCommand: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?) -> IOReturn)!
  var createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, getProperties: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!, getCapabilities: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFSet>?>?) -> IOReturn)!, getEvent: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn)!, setEventCallback: (@convention(c) (UnsafeMutableRawPointer?, IOUPSEventCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, sendCommand: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?) -> IOReturn)!, createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!)
}
