
struct IOHIDReportType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDReportTypeInput: IOHIDReportType { get }
var kIOHIDReportTypeOutput: IOHIDReportType { get }
var kIOHIDReportTypeFeature: IOHIDReportType { get }
var kIOHIDReportTypeCount: IOHIDReportType { get }
struct IOHIDElementCommitDirection : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDElementCommitDirectionIn: IOHIDElementCommitDirection { get }
var kIOHIDElementCommitDirectionOut: IOHIDElementCommitDirection { get }
typealias IOHIDElementCookie = UInt32
struct IOHIDElementType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDElementTypeInput_Misc: IOHIDElementType { get }
var kIOHIDElementTypeInput_Button: IOHIDElementType { get }
var kIOHIDElementTypeInput_Axis: IOHIDElementType { get }
var kIOHIDElementTypeInput_ScanCodes: IOHIDElementType { get }
var kIOHIDElementTypeInput_NULL: IOHIDElementType { get }
var kIOHIDElementTypeOutput: IOHIDElementType { get }
var kIOHIDElementTypeFeature: IOHIDElementType { get }
var kIOHIDElementTypeCollection: IOHIDElementType { get }
var kIOHIDElementFlagsConstantMask: Int { get }
var kIOHIDElementFlagsVariableMask: Int { get }
var kIOHIDElementFlagsRelativeMask: Int { get }
var kIOHIDElementFlagsWrapMask: Int { get }
var kIOHIDElementFlagsNonLinearMask: Int { get }
var kIOHIDElementFlagsNoPreferredMask: Int { get }
var kIOHIDElementFlagsNullStateMask: Int { get }
var kIOHIDElementFlagsVolativeMask: Int { get }
var kIOHIDElementFlagsBufferedByteMask: Int { get }
typealias IOHIDElementFlags = UInt32
struct IOHIDElementCollectionType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDElementCollectionTypePhysical: IOHIDElementCollectionType { get }
var kIOHIDElementCollectionTypeApplication: IOHIDElementCollectionType { get }
var kIOHIDElementCollectionTypeLogical: IOHIDElementCollectionType { get }
var kIOHIDElementCollectionTypeReport: IOHIDElementCollectionType { get }
var kIOHIDElementCollectionTypeNamedArray: IOHIDElementCollectionType { get }
var kIOHIDElementCollectionTypeUsageSwitch: IOHIDElementCollectionType { get }
var kIOHIDElementCollectionTypeUsageModifier: IOHIDElementCollectionType { get }
var kIOHIDValueScaleTypeCalibrated: Int { get }
var kIOHIDValueScaleTypePhysical: Int { get }
var kIOHIDValueScaleTypeExponent: Int { get }
typealias IOHIDValueScaleType = UInt32
var kIOHIDValueOptionsFlagRelativeSimple: Int { get }
var kIOHIDValueOptionsFlagPrevious: Int { get }
var kIOHIDValueOptionsUpdateElementValues: Int { get }
typealias IOHIDValueOptions = UInt32
typealias IOHIDCompletionAction = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOReturn, UInt32) -> Void
struct IOHIDCompletion {
  var target: UnsafeMutableRawPointer!
  var action: IOHIDCompletionAction!
  var parameter: UnsafeMutableRawPointer!
  init()
  init(target: UnsafeMutableRawPointer!, action: IOHIDCompletionAction!, parameter: UnsafeMutableRawPointer!)
}
var kIOHIDReportOptionNotInterrupt: Int { get }
var kIOHIDReportOptionVariableSize: Int { get }
struct HIDReportCommandType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOHIDReportCommandSetReport: HIDReportCommandType { get }
var kIOHIDReportCommandGetReport: HIDReportCommandType { get }
var kIOHIDTransportKey: String { get }
var kIOHIDVendorIDKey: String { get }
var kIOHIDProductIDKey: String { get }
var kIOHIDVersionNumberKey: String { get }
var kIOHIDManufacturerKey: String { get }
var kIOHIDProductKey: String { get }
var kIOHIDSerialNumberKey: String { get }
var kIOHIDCountryCodeKey: String { get }
var kIOHIDLocationIDKey: String { get }
var kIOHIDDeviceUsagePairsKey: String { get }
var kIOHIDDeviceUsageKey: String { get }
var kIOHIDDeviceUsagePageKey: String { get }
var kIOHIDPrimaryUsageKey: String { get }
var kIOHIDPrimaryUsagePageKey: String { get }
var kIOHIDMaxInputReportSizeKey: String { get }
var kIOHIDMaxOutputReportSizeKey: String { get }
var kIOHIDMaxFeatureReportSizeKey: String { get }
var kIOHIDReportIntervalKey: String { get }
var kIOHIDBatchIntervalKey: String { get }
var kIOHIDRequestTimeoutKey: String { get }
var kIOHIDReportDescriptorKey: String { get }
var kIOHIDBuiltInKey: String { get }
var kIOHIDPhysicalDeviceUniqueIDKey: String { get }
var kIOHIDDeviceKey: String { get }
var kIOHIDVendorIDSourceKey: String { get }
var kIOHIDStandardTypeKey: String { get }
var kIOHIDSampleIntervalKey: String { get }
var kIOHIDResetKey: String { get }
var kIOHIDKeyboardLanguageKey: String { get }
var kIOHIDAltHandlerIdKey: String { get }
var kIOHIDDisplayIntegratedKey: String { get }
var kIOHIDProductIDMaskKey: String { get }
var kIOHIDProductIDArrayKey: String { get }
var kIOHIDPowerOnDelayNSKey: String { get }
var kIOHIDCategoryKey: String { get }
var kIOHIDMaxResponseLatencyKey: String { get }
var kIOHIDUniqueIDKey: String { get }
var kIOHIDModelNumberKey: String { get }
var kIOHIDTransportUSBValue: String { get }
var kIOHIDTransportBluetoothValue: String { get }
var kIOHIDTransportBluetoothLowEnergyValue: String { get }
var kIOHIDTransportAIDBValue: String { get }
var kIOHIDTransportI2CValue: String { get }
var kIOHIDTransportSPIValue: String { get }
var kIOHIDTransportSerialValue: String { get }
var kIOHIDTransportIAPValue: String { get }
var kIOHIDTransportAirPlayValue: String { get }
var kIOHIDTransportSPUValue: String { get }
var kIOHIDTransportBTAACPValue: String { get }
var kIOHIDCategoryAutomotiveValue: String { get }
var kIOHIDElementKey: String { get }
var kIOHIDElementCookieKey: String { get }
var kIOHIDElementTypeKey: String { get }
var kIOHIDElementCollectionTypeKey: String { get }
var kIOHIDElementUsageKey: String { get }
var kIOHIDElementUsagePageKey: String { get }
var kIOHIDElementMinKey: String { get }
var kIOHIDElementMaxKey: String { get }
var kIOHIDElementScaledMinKey: String { get }
var kIOHIDElementScaledMaxKey: String { get }
var kIOHIDElementSizeKey: String { get }
var kIOHIDElementReportSizeKey: String { get }
var kIOHIDElementReportCountKey: String { get }
var kIOHIDElementReportIDKey: String { get }
var kIOHIDElementIsArrayKey: String { get }
var kIOHIDElementIsRelativeKey: String { get }
var kIOHIDElementIsWrappingKey: String { get }
var kIOHIDElementIsNonLinearKey: String { get }
var kIOHIDElementHasPreferredStateKey: String { get }
var kIOHIDElementHasNullStateKey: String { get }
var kIOHIDElementFlagsKey: String { get }
var kIOHIDElementUnitKey: String { get }
var kIOHIDElementUnitExponentKey: String { get }
var kIOHIDElementNameKey: String { get }
var kIOHIDElementValueLocationKey: String { get }
var kIOHIDElementDuplicateIndexKey: String { get }
var kIOHIDElementParentCollectionKey: String { get }
var kIOHIDElementVariableSizeKey: String { get }
var kIOHIDElementVendorSpecificKey: String { get }
var kIOHIDElementCookieMinKey: String { get }
var kIOHIDElementCookieMaxKey: String { get }
var kIOHIDElementUsageMinKey: String { get }
var kIOHIDElementUsageMaxKey: String { get }
var kIOHIDElementCalibrationMinKey: String { get }
var kIOHIDElementCalibrationMaxKey: String { get }
var kIOHIDElementCalibrationSaturationMinKey: String { get }
var kIOHIDElementCalibrationSaturationMaxKey: String { get }
var kIOHIDElementCalibrationDeadZoneMinKey: String { get }
var kIOHIDElementCalibrationDeadZoneMaxKey: String { get }
var kIOHIDElementCalibrationGranularityKey: String { get }
var kIOHIDKeyboardSupportsEscKey: String { get }
var kIOHIDOptionsTypeNone: Int { get }
var kIOHIDOptionsTypeSeizeDevice: Int { get }
typealias IOHIDOptionsType = UInt32
var kIOHIDQueueOptionsTypeNone: Int { get }
var kIOHIDQueueOptionsTypeEnqueueAll: Int { get }
typealias IOHIDQueueOptionsType = UInt32
var kIOHIDStandardTypeANSI: UInt32 { get }
var kIOHIDStandardTypeISO: UInt32 { get }
var kIOHIDStandardTypeJIS: UInt32 { get }
var kIOHIDStandardTypeUnspecified: UInt32 { get }
typealias IOHIDStandardType = UInt32
var kIOHIDDigitizerGestureCharacterStateKey: String { get }
var kIOHIDKeyboardCapsLockDelay: String { get }
var kIOHIDKeyboardEjectDelay: String { get }
var kFnFunctionUsageMapKey: String { get }
var kFnKeyboardUsageMapKey: String { get }
var kNumLockKeyboardUsageMapKey: String { get }
var kKeyboardUsageMapKey: String { get }
var kIOHIDDeviceOpenedByEventSystemKey: String { get }
var kIOHIDDeviceSuspendKey: String { get }
var kIOHIDSensorPropertyReportIntervalKey: String { get }
var kIOHIDSensorPropertySampleIntervalKey: String { get }
var kIOHIDSensorPropertyBatchIntervalKey: String { get }
var kIOHIDSensorPropertyReportLatencyKey: String { get }
var kIOHIDSensorPropertyMaxFIFOEventsKey: String { get }
var kIOHIDDigitizerSurfaceSwitchKey: String { get }
var kIOHIDPointerAccelerationSupportKey: String { get }
var kIOHIDScrollAccelerationSupportKey: String { get }
class IOHIDDevice : _CFObject {
}
class IOHIDElement : _CFObject {
}
class IOHIDValue : _CFObject {
}
enum IOHIDTransactionDirectionType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case input
  case output
}
let kIOHIDTransactionOptionDefaultOutputValue: IOOptionBits
typealias IOHIDCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?) -> Void
typealias IOHIDReportCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutablePointer<UInt8>, CFIndex) -> Void
typealias IOHIDReportWithTimeStampCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutablePointer<UInt8>, CFIndex, UInt64) -> Void
typealias IOHIDValueCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, IOHIDValue) -> Void
typealias IOHIDValueMultipleCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, CFDictionary) -> Void
typealias IOHIDDeviceCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, IOHIDDevice) -> Void
class IOHIDQueue : _CFObject {
}
@available(macOS 10.5, *)
func IOHIDQueueGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func IOHIDQueueCreate(_ allocator: CFAllocator?, _ device: IOHIDDevice, _ depth: CFIndex, _ options: IOOptionBits) -> IOHIDQueue?
@available(macOS 10.5, *)
func IOHIDQueueGetDevice(_ queue: IOHIDQueue) -> IOHIDDevice
@available(macOS 10.5, *)
func IOHIDQueueGetDepth(_ queue: IOHIDQueue) -> CFIndex
@available(macOS 10.5, *)
func IOHIDQueueSetDepth(_ queue: IOHIDQueue, _ depth: CFIndex)
@available(macOS 10.5, *)
func IOHIDQueueAddElement(_ queue: IOHIDQueue, _ element: IOHIDElement)
@available(macOS 10.5, *)
func IOHIDQueueRemoveElement(_ queue: IOHIDQueue, _ element: IOHIDElement)
@available(macOS 10.5, *)
func IOHIDQueueContainsElement(_ queue: IOHIDQueue, _ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDQueueStart(_ queue: IOHIDQueue)
@available(macOS 10.5, *)
func IOHIDQueueStop(_ queue: IOHIDQueue)
@available(macOS 10.5, *)
func IOHIDQueueScheduleWithRunLoop(_ queue: IOHIDQueue, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.5, *)
func IOHIDQueueUnscheduleFromRunLoop(_ queue: IOHIDQueue, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.15, *)
func IOHIDQueueSetDispatchQueue(_ queue: IOHIDQueue, _ dispatchQueue: DispatchQueue)
@available(macOS 10.15, *)
func IOHIDQueueSetCancelHandler(_ queue: IOHIDQueue, _ handler: @escaping () -> Void)
@available(macOS 10.15, *)
func IOHIDQueueActivate(_ queue: IOHIDQueue)
@available(macOS 10.15, *)
func IOHIDQueueCancel(_ queue: IOHIDQueue)
@available(macOS 10.5, *)
func IOHIDQueueRegisterValueAvailableCallback(_ queue: IOHIDQueue, _ callback: IOHIDCallback, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDQueueCopyNextValue(_ queue: IOHIDQueue) -> IOHIDValue?
@available(macOS 10.5, *)
func IOHIDQueueCopyNextValueWithTimeout(_ queue: IOHIDQueue, _ timeout: CFTimeInterval) -> IOHIDValue?
@available(macOS 10.5, *)
func IOHIDDeviceGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func IOHIDDeviceCreate(_ allocator: CFAllocator?, _ service: io_service_t) -> IOHIDDevice?
@available(macOS 10.6, *)
func IOHIDDeviceGetService(_ device: IOHIDDevice) -> io_service_t
@available(macOS 10.5, *)
func IOHIDDeviceOpen(_ device: IOHIDDevice, _ options: IOOptionBits) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceClose(_ device: IOHIDDevice, _ options: IOOptionBits) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceConformsTo(_ device: IOHIDDevice, _ usagePage: UInt32, _ usage: UInt32) -> Bool
@available(macOS 10.5, *)
func IOHIDDeviceGetProperty(_ device: IOHIDDevice, _ key: CFString) -> CFTypeRef?
@available(macOS 10.5, *)
func IOHIDDeviceSetProperty(_ device: IOHIDDevice, _ key: CFString, _ property: CFTypeRef) -> Bool
@available(macOS 10.5, *)
func IOHIDDeviceCopyMatchingElements(_ device: IOHIDDevice, _ matching: CFDictionary?, _ options: IOOptionBits) -> CFArray?
@available(macOS 10.5, *)
func IOHIDDeviceScheduleWithRunLoop(_ device: IOHIDDevice, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.5, *)
func IOHIDDeviceUnscheduleFromRunLoop(_ device: IOHIDDevice, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.15, *)
func IOHIDDeviceSetDispatchQueue(_ device: IOHIDDevice, _ queue: DispatchQueue)
@available(macOS 10.15, *)
func IOHIDDeviceSetCancelHandler(_ device: IOHIDDevice, _ handler: @escaping () -> Void)
@available(macOS 10.15, *)
func IOHIDDeviceActivate(_ device: IOHIDDevice)
@available(macOS 10.15, *)
func IOHIDDeviceCancel(_ device: IOHIDDevice)
@available(macOS 10.5, *)
func IOHIDDeviceRegisterRemovalCallback(_ device: IOHIDDevice, _ callback: IOHIDCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDDeviceRegisterInputValueCallback(_ device: IOHIDDevice, _ callback: IOHIDValueCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDDeviceRegisterInputReportCallback(_ device: IOHIDDevice, _ report: UnsafeMutablePointer<UInt8>, _ reportLength: CFIndex, _ callback: IOHIDReportCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.10, *)
func IOHIDDeviceRegisterInputReportWithTimeStampCallback(_ device: IOHIDDevice, _ report: UnsafeMutablePointer<UInt8>, _ reportLength: CFIndex, _ callback: IOHIDReportWithTimeStampCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDDeviceSetInputValueMatching(_ device: IOHIDDevice, _ matching: CFDictionary?)
@available(macOS 10.5, *)
func IOHIDDeviceSetInputValueMatchingMultiple(_ device: IOHIDDevice, _ multiple: CFArray?)
@available(macOS 10.5, *)
func IOHIDDeviceSetValue(_ device: IOHIDDevice, _ element: IOHIDElement, _ value: IOHIDValue) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceSetValueMultiple(_ device: IOHIDDevice, _ multiple: CFDictionary) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceSetValueWithCallback(_ device: IOHIDDevice, _ element: IOHIDElement, _ value: IOHIDValue, _ timeout: CFTimeInterval, _ callback: IOHIDValueCallback?, _ context: UnsafeMutableRawPointer?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceSetValueMultipleWithCallback(_ device: IOHIDDevice, _ multiple: CFDictionary, _ timeout: CFTimeInterval, _ callback: IOHIDValueMultipleCallback?, _ context: UnsafeMutableRawPointer?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceGetValue(_ device: IOHIDDevice, _ element: IOHIDElement, _ pValue: UnsafeMutablePointer<Unmanaged<IOHIDValue>>) -> IOReturn
enum IOHIDDeviceGetValueOptions : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case withUpdate
  case withoutUpdate
}
@available(macOS 10.13, *)
func IOHIDDeviceGetValueWithOptions(_ device: IOHIDDevice, _ element: IOHIDElement, _ pValue: UnsafeMutablePointer<Unmanaged<IOHIDValue>>, _ options: UInt32) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceCopyValueMultiple(_ device: IOHIDDevice, _ elements: CFArray, _ pMultiple: UnsafeMutablePointer<Unmanaged<CFDictionary>?>?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceGetValueWithCallback(_ device: IOHIDDevice, _ element: IOHIDElement, _ pValue: UnsafeMutablePointer<Unmanaged<IOHIDValue>>, _ timeout: CFTimeInterval, _ callback: IOHIDValueCallback?, _ context: UnsafeMutableRawPointer?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceCopyValueMultipleWithCallback(_ device: IOHIDDevice, _ elements: CFArray, _ pMultiple: UnsafeMutablePointer<Unmanaged<CFDictionary>?>?, _ timeout: CFTimeInterval, _ callback: IOHIDValueMultipleCallback?, _ context: UnsafeMutableRawPointer?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceSetReport(_ device: IOHIDDevice, _ reportType: IOHIDReportType, _ reportID: CFIndex, _ report: UnsafePointer<UInt8>, _ reportLength: CFIndex) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceSetReportWithCallback(_ device: IOHIDDevice, _ reportType: IOHIDReportType, _ reportID: CFIndex, _ report: UnsafePointer<UInt8>, _ reportLength: CFIndex, _ timeout: CFTimeInterval, _ callback: IOHIDReportCallback?, _ context: UnsafeMutableRawPointer?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceGetReport(_ device: IOHIDDevice, _ reportType: IOHIDReportType, _ reportID: CFIndex, _ report: UnsafeMutablePointer<UInt8>, _ pReportLength: UnsafeMutablePointer<CFIndex>) -> IOReturn
@available(macOS 10.5, *)
func IOHIDDeviceGetReportWithCallback(_ device: IOHIDDevice, _ reportType: IOHIDReportType, _ reportID: CFIndex, _ report: UnsafeMutablePointer<UInt8>, _ pReportLength: UnsafeMutablePointer<CFIndex>, _ timeout: CFTimeInterval, _ callback: IOHIDReportCallback, _ context: UnsafeMutableRawPointer) -> IOReturn
@available(macOS 10.5, *)
func IOHIDElementGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func IOHIDElementCreateWithDictionary(_ allocator: CFAllocator?, _ dictionary: CFDictionary) -> IOHIDElement
@available(macOS 10.5, *)
func IOHIDElementGetDevice(_ element: IOHIDElement) -> IOHIDDevice
@available(macOS 10.5, *)
func IOHIDElementGetParent(_ element: IOHIDElement) -> IOHIDElement?
@available(macOS 10.5, *)
func IOHIDElementGetChildren(_ element: IOHIDElement) -> CFArray?
@available(macOS 10.5, *)
func IOHIDElementAttach(_ element: IOHIDElement, _ toAttach: IOHIDElement)
@available(macOS 10.5, *)
func IOHIDElementDetach(_ element: IOHIDElement, _ toDetach: IOHIDElement)
@available(macOS 10.5, *)
func IOHIDElementCopyAttached(_ element: IOHIDElement) -> CFArray?
@available(macOS 10.5, *)
func IOHIDElementGetCookie(_ element: IOHIDElement) -> IOHIDElementCookie
@available(macOS 10.5, *)
func IOHIDElementGetType(_ element: IOHIDElement) -> IOHIDElementType
@available(macOS 10.5, *)
func IOHIDElementGetCollectionType(_ element: IOHIDElement) -> IOHIDElementCollectionType
@available(macOS 10.5, *)
func IOHIDElementGetUsagePage(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementGetUsage(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementIsVirtual(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementIsRelative(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementIsWrapping(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementIsArray(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementIsNonLinear(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementHasPreferredState(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementHasNullState(_ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDElementGetName(_ element: IOHIDElement) -> CFString
@available(macOS 10.5, *)
func IOHIDElementGetReportID(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementGetReportSize(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementGetReportCount(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementGetUnit(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementGetUnitExponent(_ element: IOHIDElement) -> UInt32
@available(macOS 10.5, *)
func IOHIDElementGetLogicalMin(_ element: IOHIDElement) -> CFIndex
@available(macOS 10.5, *)
func IOHIDElementGetLogicalMax(_ element: IOHIDElement) -> CFIndex
@available(macOS 10.5, *)
func IOHIDElementGetPhysicalMin(_ element: IOHIDElement) -> CFIndex
@available(macOS 10.5, *)
func IOHIDElementGetPhysicalMax(_ element: IOHIDElement) -> CFIndex
@available(macOS 10.5, *)
func IOHIDElementGetProperty(_ element: IOHIDElement, _ key: CFString) -> CFTypeRef?
@available(macOS 10.5, *)
func IOHIDElementSetProperty(_ element: IOHIDElement, _ key: CFString, _ property: CFTypeRef) -> Bool
struct IOHIDEventStruct {
  var type: IOHIDElementType
  var elementCookie: IOHIDElementCookie
  var value: Int32
  var timestamp: AbsoluteTime
  var longValueSize: UInt32
  var longValue: UnsafeMutableRawPointer!
  init()
  init(type: IOHIDElementType, elementCookie: IOHIDElementCookie, value: Int32, timestamp: AbsoluteTime, longValueSize: UInt32, longValue: UnsafeMutableRawPointer!)
}
typealias IOHIDCallbackFunction = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
typealias IOHIDElementCallbackFunction = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOHIDElementCookie) -> Void
typealias IOHIDReportCallbackFunction = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> Void
struct IOHIDDeviceInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!
  var createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!
  var getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!
  var open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var close: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setRemovalCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var queryElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var startAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var stopAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var allocQueue: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDQueueInterface>?>?)!
  var allocOutputTransaction: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDOutputTransactionInterface>?>?)!
  var setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UInt32, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!, createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!, getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!, open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, close: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setRemovalCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, queryElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, startAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, stopAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, allocQueue: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDQueueInterface>?>?)!, allocOutputTransaction: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDOutputTransactionInterface>?>?)!, setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UInt32, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!)
}
struct IOHIDDeviceInterface121 {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!
  var createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!
  var getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!
  var open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var close: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setRemovalCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var queryElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var startAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var stopAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var allocQueue: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDQueueInterface>?>?)!
  var allocOutputTransaction: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDOutputTransactionInterface>?>?)!
  var setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UInt32, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!, createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!, getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!, open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, close: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setRemovalCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, queryElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, startAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, stopAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, allocQueue: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDQueueInterface>?>?)!, allocOutputTransaction: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDOutputTransactionInterface>?>?)!, setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UInt32, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!)
}
struct IOHIDDeviceInterface122 {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!
  var createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!
  var getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!
  var open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var close: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setRemovalCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var queryElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var startAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var stopAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var allocQueue: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDQueueInterface>?>?)!
  var allocOutputTransaction: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDOutputTransactionInterface>?>?)!
  var setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UInt32, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var copyMatchingElements: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> IOReturn)!
  var setInterruptReportHandlerCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!, createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!, getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!, open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, close: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setRemovalCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, queryElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?, UInt32, IOHIDElementCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, startAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, stopAllQueues: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, allocQueue: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDQueueInterface>?>?)!, allocOutputTransaction: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<UnsafeMutablePointer<IOHIDOutputTransactionInterface>?>?)!, setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UInt32, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, copyMatchingElements: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFArray>?>?) -> IOReturn)!, setInterruptReportHandlerCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32, IOHIDReportCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!)
}
struct IOHIDQueueInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!
  var createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!
  var getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!
  var create: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!
  var dispose: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UInt32) -> IOReturn)!
  var removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> IOReturn)!
  var hasElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> DarwinBoolean)!
  var start: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var stop: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var getNextEvent: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOHIDEventStruct>?, AbsoluteTime, UInt32) -> IOReturn)!
  var setEventCallout: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var getEventCallout: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOHIDCallbackFunction?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!, createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!, getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!, create: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!, dispose: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UInt32) -> IOReturn)!, removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> IOReturn)!, hasElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> DarwinBoolean)!, start: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, stop: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, getNextEvent: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOHIDEventStruct>?, AbsoluteTime, UInt32) -> IOReturn)!, setEventCallout: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, getEventCallout: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOHIDCallbackFunction?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?) -> IOReturn)!)
}
struct IOHIDOutputTransactionInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!
  var createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!
  var getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!
  var create: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var dispose: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> IOReturn)!
  var removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> IOReturn)!
  var hasElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> DarwinBoolean)!
  var setElementDefault: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var getElementDefault: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!
  var commit: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var clear: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, createAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?) -> Unmanaged<CFRunLoopSource>?)!, createAsyncPort: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<mach_port_t>?) -> IOReturn)!, getAsyncPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!, create: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, dispose: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> IOReturn)!, removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> IOReturn)!, hasElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie) -> DarwinBoolean)!, setElementDefault: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, getElementDefault: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, setElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, getElementValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElementCookie, UnsafeMutablePointer<IOHIDEventStruct>?) -> IOReturn)!, commit: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOHIDCallbackFunction?, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, clear: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!)
}
struct IOHIDManagerOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var usePersistentProperties: IOHIDManagerOptions { get }
  static var doNotLoadProperties: IOHIDManagerOptions { get }
  static var doNotSaveProperties: IOHIDManagerOptions { get }
  static var independentDevices: IOHIDManagerOptions { get }
}
class IOHIDManager : _CFObject {
}
@available(macOS 10.5, *)
func IOHIDManagerGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func IOHIDManagerCreate(_ allocator: CFAllocator?, _ options: IOOptionBits) -> IOHIDManager
@available(macOS 10.5, *)
func IOHIDManagerOpen(_ manager: IOHIDManager, _ options: IOOptionBits) -> IOReturn
@available(macOS 10.5, *)
func IOHIDManagerClose(_ manager: IOHIDManager, _ options: IOOptionBits) -> IOReturn
@available(macOS 10.5, *)
func IOHIDManagerGetProperty(_ manager: IOHIDManager, _ key: CFString) -> CFTypeRef?
@available(macOS 10.5, *)
func IOHIDManagerSetProperty(_ manager: IOHIDManager, _ key: CFString, _ value: CFTypeRef) -> Bool
@available(macOS 10.5, *)
func IOHIDManagerScheduleWithRunLoop(_ manager: IOHIDManager, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.5, *)
func IOHIDManagerUnscheduleFromRunLoop(_ manager: IOHIDManager, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.15, *)
func IOHIDManagerSetDispatchQueue(_ manager: IOHIDManager, _ queue: DispatchQueue)
@available(macOS 10.15, *)
func IOHIDManagerSetCancelHandler(_ manager: IOHIDManager, _ handler: @escaping () -> Void)
@available(macOS 10.15, *)
func IOHIDManagerActivate(_ manager: IOHIDManager)
@available(macOS 10.15, *)
func IOHIDManagerCancel(_ manager: IOHIDManager)
@available(macOS 10.5, *)
func IOHIDManagerSetDeviceMatching(_ manager: IOHIDManager, _ matching: CFDictionary?)
@available(macOS 10.5, *)
func IOHIDManagerSetDeviceMatchingMultiple(_ manager: IOHIDManager, _ multiple: CFArray?)
@available(macOS 10.5, *)
func IOHIDManagerCopyDevices(_ manager: IOHIDManager) -> CFSet?
@available(macOS 10.5, *)
func IOHIDManagerRegisterDeviceMatchingCallback(_ manager: IOHIDManager, _ callback: IOHIDDeviceCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDManagerRegisterDeviceRemovalCallback(_ manager: IOHIDManager, _ callback: IOHIDDeviceCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDManagerRegisterInputReportCallback(_ manager: IOHIDManager, _ callback: IOHIDReportCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.15, *)
func IOHIDManagerRegisterInputReportWithTimeStampCallback(_ manager: IOHIDManager, _ callback: IOHIDReportWithTimeStampCallback, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDManagerRegisterInputValueCallback(_ manager: IOHIDManager, _ callback: IOHIDValueCallback?, _ context: UnsafeMutableRawPointer?)
@available(macOS 10.5, *)
func IOHIDManagerSetInputValueMatching(_ manager: IOHIDManager, _ matching: CFDictionary?)
@available(macOS 10.5, *)
func IOHIDManagerSetInputValueMatchingMultiple(_ manager: IOHIDManager, _ multiple: CFArray?)
@available(macOS 10.6, *)
func IOHIDManagerSaveToPropertyDomain(_ manager: IOHIDManager, _ applicationID: CFString, _ userName: CFString, _ hostName: CFString, _ options: IOOptionBits)
var kHIDPage_Undefined: Int { get }
var kHIDPage_GenericDesktop: Int { get }
var kHIDPage_Simulation: Int { get }
var kHIDPage_VR: Int { get }
var kHIDPage_Sport: Int { get }
var kHIDPage_Game: Int { get }
var kHIDPage_GenericDeviceControls: Int { get }
var kHIDPage_KeyboardOrKeypad: Int { get }
var kHIDPage_LEDs: Int { get }
var kHIDPage_Button: Int { get }
var kHIDPage_Ordinal: Int { get }
var kHIDPage_Telephony: Int { get }
var kHIDPage_Consumer: Int { get }
var kHIDPage_Digitizer: Int { get }
var kHIDPage_Haptics: Int { get }
var kHIDPage_PID: Int { get }
var kHIDPage_Unicode: Int { get }
var kHIDPage_AlphanumericDisplay: Int { get }
var kHIDPage_Sensor: Int { get }
var kHIDPage_Monitor: Int { get }
var kHIDPage_MonitorEnumerated: Int { get }
var kHIDPage_MonitorVirtual: Int { get }
var kHIDPage_MonitorReserved: Int { get }
var kHIDPage_PowerDevice: Int { get }
var kHIDPage_BatterySystem: Int { get }
var kHIDPage_PowerReserved: Int { get }
var kHIDPage_PowerReserved2: Int { get }
var kHIDPage_BarCodeScanner: Int { get }
var kHIDPage_WeighingDevice: Int { get }
var kHIDPage_Scale: Int { get }
var kHIDPage_MagneticStripeReader: Int { get }
var kHIDPage_CameraControl: Int { get }
var kHIDPage_Arcade: Int { get }
var kHIDPage_FIDO: Int { get }
var kHIDPage_VendorDefinedStart: Int { get }
var kHIDUsage_Undefined: Int { get }
var kHIDUsage_GD_Pointer: Int { get }
var kHIDUsage_GD_Mouse: Int { get }
var kHIDUsage_GD_Joystick: Int { get }
var kHIDUsage_GD_GamePad: Int { get }
var kHIDUsage_GD_Keyboard: Int { get }
var kHIDUsage_GD_Keypad: Int { get }
var kHIDUsage_GD_MultiAxisController: Int { get }
var kHIDUsage_GD_TabletPCSystemControls: Int { get }
var kHIDUsage_GD_AssistiveControl: Int { get }
var kHIDUsage_GD_SystemMultiAxisController: Int { get }
var kHIDUsage_GD_SpatialController: Int { get }
var kHIDUsage_GD_AssistiveControlCompatible: Int { get }
var kHIDUsage_GD_X: Int { get }
var kHIDUsage_GD_Y: Int { get }
var kHIDUsage_GD_Z: Int { get }
var kHIDUsage_GD_Rx: Int { get }
var kHIDUsage_GD_Ry: Int { get }
var kHIDUsage_GD_Rz: Int { get }
var kHIDUsage_GD_Slider: Int { get }
var kHIDUsage_GD_Dial: Int { get }
var kHIDUsage_GD_Wheel: Int { get }
var kHIDUsage_GD_Hatswitch: Int { get }
var kHIDUsage_GD_CountedBuffer: Int { get }
var kHIDUsage_GD_ByteCount: Int { get }
var kHIDUsage_GD_MotionWakeup: Int { get }
var kHIDUsage_GD_Start: Int { get }
var kHIDUsage_GD_Select: Int { get }
var kHIDUsage_GD_Vx: Int { get }
var kHIDUsage_GD_Vy: Int { get }
var kHIDUsage_GD_Vz: Int { get }
var kHIDUsage_GD_Vbrx: Int { get }
var kHIDUsage_GD_Vbry: Int { get }
var kHIDUsage_GD_Vbrz: Int { get }
var kHIDUsage_GD_Vno: Int { get }
var kHIDUsage_GD_FeatureNotification: Int { get }
var kHIDUsage_GD_ResolutionMultiplier: Int { get }
var kHIDUsage_GD_Qx: Int { get }
var kHIDUsage_GD_Qy: Int { get }
var kHIDUsage_GD_Qz: Int { get }
var kHIDUsage_GD_Qw: Int { get }
var kHIDUsage_GD_SystemControl: Int { get }
var kHIDUsage_GD_SystemPowerDown: Int { get }
var kHIDUsage_GD_SystemSleep: Int { get }
var kHIDUsage_GD_SystemWakeUp: Int { get }
var kHIDUsage_GD_SystemContextMenu: Int { get }
var kHIDUsage_GD_SystemMainMenu: Int { get }
var kHIDUsage_GD_SystemAppMenu: Int { get }
var kHIDUsage_GD_SystemMenuHelp: Int { get }
var kHIDUsage_GD_SystemMenuExit: Int { get }
var kHIDUsage_GD_SystemMenuSelect: Int { get }
var kHIDUsage_GD_SystemMenu: Int { get }
var kHIDUsage_GD_SystemMenuRight: Int { get }
var kHIDUsage_GD_SystemMenuLeft: Int { get }
var kHIDUsage_GD_SystemMenuUp: Int { get }
var kHIDUsage_GD_SystemMenuDown: Int { get }
var kHIDUsage_GD_DPadUp: Int { get }
var kHIDUsage_GD_DPadDown: Int { get }
var kHIDUsage_GD_DPadRight: Int { get }
var kHIDUsage_GD_DPadLeft: Int { get }
var kHIDUsage_GD_IndexTrigger: Int { get }
var kHIDUsage_GD_PalmTrigger: Int { get }
var kHIDUsage_GD_Thumbstick: Int { get }
var kHIDUsage_GD_SFShift: Int { get }
var kHIDUsage_GD_SFShiftLock: Int { get }
var kHIDUsage_GD_SFShiftLockIndicator: Int { get }
var kHIDUsage_GD_SystemDismissNotification: Int { get }
var kHIDUsage_GD_DoNotDisturb: Int { get }
var kHIDUsage_GD_Reserved: Int { get }
var kHIDUsage_Sim_FlightSimulationDevice: Int { get }
var kHIDUsage_Sim_AutomobileSimulationDevice: Int { get }
var kHIDUsage_Sim_TankSimulationDevice: Int { get }
var kHIDUsage_Sim_SpaceshipSimulationDevice: Int { get }
var kHIDUsage_Sim_SubmarineSimulationDevice: Int { get }
var kHIDUsage_Sim_SailingSimulationDevice: Int { get }
var kHIDUsage_Sim_MotorcycleSimulationDevice: Int { get }
var kHIDUsage_Sim_SportsSimulationDevice: Int { get }
var kHIDUsage_Sim_AirplaneSimulationDevice: Int { get }
var kHIDUsage_Sim_HelicopterSimulationDevice: Int { get }
var kHIDUsage_Sim_MagicCarpetSimulationDevice: Int { get }
var kHIDUsage_Sim_BicycleSimulationDevice: Int { get }
var kHIDUsage_Sim_FlightControlStick: Int { get }
var kHIDUsage_Sim_FlightStick: Int { get }
var kHIDUsage_Sim_CyclicControl: Int { get }
var kHIDUsage_Sim_CyclicTrim: Int { get }
var kHIDUsage_Sim_FlightYoke: Int { get }
var kHIDUsage_Sim_TrackControl: Int { get }
var kHIDUsage_Sim_Aileron: Int { get }
var kHIDUsage_Sim_AileronTrim: Int { get }
var kHIDUsage_Sim_AntiTorqueControl: Int { get }
var kHIDUsage_Sim_AutopilotEnable: Int { get }
var kHIDUsage_Sim_ChaffRelease: Int { get }
var kHIDUsage_Sim_CollectiveControl: Int { get }
var kHIDUsage_Sim_DiveBrake: Int { get }
var kHIDUsage_Sim_ElectronicCountermeasures: Int { get }
var kHIDUsage_Sim_Elevator: Int { get }
var kHIDUsage_Sim_ElevatorTrim: Int { get }
var kHIDUsage_Sim_Rudder: Int { get }
var kHIDUsage_Sim_Throttle: Int { get }
var kHIDUsage_Sim_FlightCommunications: Int { get }
var kHIDUsage_Sim_FlareRelease: Int { get }
var kHIDUsage_Sim_LandingGear: Int { get }
var kHIDUsage_Sim_ToeBrake: Int { get }
var kHIDUsage_Sim_Trigger: Int { get }
var kHIDUsage_Sim_WeaponsArm: Int { get }
var kHIDUsage_Sim_Weapons: Int { get }
var kHIDUsage_Sim_WingFlaps: Int { get }
var kHIDUsage_Sim_Accelerator: Int { get }
var kHIDUsage_Sim_Brake: Int { get }
var kHIDUsage_Sim_Clutch: Int { get }
var kHIDUsage_Sim_Shifter: Int { get }
var kHIDUsage_Sim_Steering: Int { get }
var kHIDUsage_Sim_TurretDirection: Int { get }
var kHIDUsage_Sim_BarrelElevation: Int { get }
var kHIDUsage_Sim_DivePlane: Int { get }
var kHIDUsage_Sim_Ballast: Int { get }
var kHIDUsage_Sim_BicycleCrank: Int { get }
var kHIDUsage_Sim_HandleBars: Int { get }
var kHIDUsage_Sim_FrontBrake: Int { get }
var kHIDUsage_Sim_RearBrake: Int { get }
var kHIDUsage_Sim_Reserved: Int { get }
var kHIDUsage_VR_Belt: Int { get }
var kHIDUsage_VR_BodySuit: Int { get }
var kHIDUsage_VR_Flexor: Int { get }
var kHIDUsage_VR_Glove: Int { get }
var kHIDUsage_VR_HeadTracker: Int { get }
var kHIDUsage_VR_HeadMountedDisplay: Int { get }
var kHIDUsage_VR_HandTracker: Int { get }
var kHIDUsage_VR_Oculometer: Int { get }
var kHIDUsage_VR_Vest: Int { get }
var kHIDUsage_VR_AnimatronicDevice: Int { get }
var kHIDUsage_VR_StereoEnable: Int { get }
var kHIDUsage_VR_DisplayEnable: Int { get }
var kHIDUsage_VR_Reserved: Int { get }
var kHIDUsage_Sprt_BaseballBat: Int { get }
var kHIDUsage_Sprt_GolfClub: Int { get }
var kHIDUsage_Sprt_RowingMachine: Int { get }
var kHIDUsage_Sprt_Treadmill: Int { get }
var kHIDUsage_Sprt_Oar: Int { get }
var kHIDUsage_Sprt_Slope: Int { get }
var kHIDUsage_Sprt_Rate: Int { get }
var kHIDUsage_Sprt_StickSpeed: Int { get }
var kHIDUsage_Sprt_StickFaceAngle: Int { get }
var kHIDUsage_Sprt_StickHeelOrToe: Int { get }
var kHIDUsage_Sprt_StickFollowThrough: Int { get }
var kHIDUsage_Sprt_StickTempo: Int { get }
var kHIDUsage_Sprt_StickType: Int { get }
var kHIDUsage_Sprt_StickHeight: Int { get }
var kHIDUsage_Sprt_Putter: Int { get }
var kHIDUsage_Sprt_1Iron: Int { get }
var kHIDUsage_Sprt_2Iron: Int { get }
var kHIDUsage_Sprt_3Iron: Int { get }
var kHIDUsage_Sprt_4Iron: Int { get }
var kHIDUsage_Sprt_5Iron: Int { get }
var kHIDUsage_Sprt_6Iron: Int { get }
var kHIDUsage_Sprt_7Iron: Int { get }
var kHIDUsage_Sprt_8Iron: Int { get }
var kHIDUsage_Sprt_9Iron: Int { get }
var kHIDUsage_Sprt_10Iron: Int { get }
var kHIDUsage_Sprt_11Iron: Int { get }
var kHIDUsage_Sprt_SandWedge: Int { get }
var kHIDUsage_Sprt_LoftWedge: Int { get }
var kHIDUsage_Sprt_PowerWedge: Int { get }
var kHIDUsage_Sprt_1Wood: Int { get }
var kHIDUsage_Sprt_3Wood: Int { get }
var kHIDUsage_Sprt_5Wood: Int { get }
var kHIDUsage_Sprt_7Wood: Int { get }
var kHIDUsage_Sprt_9Wood: Int { get }
var kHIDUsage_Sprt_Reserved: Int { get }
var kHIDUsage_Game_3DGameController: Int { get }
var kHIDUsage_Game_PinballDevice: Int { get }
var kHIDUsage_Game_GunDevice: Int { get }
var kHIDUsage_Game_PointofView: Int { get }
var kHIDUsage_Game_TurnRightOrLeft: Int { get }
var kHIDUsage_Game_PitchUpOrDown: Int { get }
var kHIDUsage_Game_RollRightOrLeft: Int { get }
var kHIDUsage_Game_MoveRightOrLeft: Int { get }
var kHIDUsage_Game_MoveForwardOrBackward: Int { get }
var kHIDUsage_Game_MoveUpOrDown: Int { get }
var kHIDUsage_Game_LeanRightOrLeft: Int { get }
var kHIDUsage_Game_LeanForwardOrBackward: Int { get }
var kHIDUsage_Game_HeightOfPOV: Int { get }
var kHIDUsage_Game_Flipper: Int { get }
var kHIDUsage_Game_SecondaryFlipper: Int { get }
var kHIDUsage_Game_Bump: Int { get }
var kHIDUsage_Game_NewGame: Int { get }
var kHIDUsage_Game_ShootBall: Int { get }
var kHIDUsage_Game_Player: Int { get }
var kHIDUsage_Game_GunBolt: Int { get }
var kHIDUsage_Game_GunClip: Int { get }
var kHIDUsage_Game_Gun: Int { get }
var kHIDUsage_Game_GunSingleShot: Int { get }
var kHIDUsage_Game_GunBurst: Int { get }
var kHIDUsage_Game_GunAutomatic: Int { get }
var kHIDUsage_Game_GunSafety: Int { get }
var kHIDUsage_Game_GamepadFireOrJump: Int { get }
var kHIDUsage_Game_GamepadTrigger: Int { get }
var kHIDUsage_Game_GamepadFormFitting_Compatibility: Int { get }
var kHIDUsage_Game_GamepadFormFitting: Int { get }
var kHIDUsage_Game_Reserved: Int { get }
var kHIDUsage_GenDevControls_BackgroundControls: Int { get }
var kHIDUsage_KeyboardErrorRollOver: Int { get }
var kHIDUsage_KeyboardPOSTFail: Int { get }
var kHIDUsage_KeyboardErrorUndefined: Int { get }
var kHIDUsage_KeyboardA: Int { get }
var kHIDUsage_KeyboardB: Int { get }
var kHIDUsage_KeyboardC: Int { get }
var kHIDUsage_KeyboardD: Int { get }
var kHIDUsage_KeyboardE: Int { get }
var kHIDUsage_KeyboardF: Int { get }
var kHIDUsage_KeyboardG: Int { get }
var kHIDUsage_KeyboardH: Int { get }
var kHIDUsage_KeyboardI: Int { get }
var kHIDUsage_KeyboardJ: Int { get }
var kHIDUsage_KeyboardK: Int { get }
var kHIDUsage_KeyboardL: Int { get }
var kHIDUsage_KeyboardM: Int { get }
var kHIDUsage_KeyboardN: Int { get }
var kHIDUsage_KeyboardO: Int { get }
var kHIDUsage_KeyboardP: Int { get }
var kHIDUsage_KeyboardQ: Int { get }
var kHIDUsage_KeyboardR: Int { get }
var kHIDUsage_KeyboardS: Int { get }
var kHIDUsage_KeyboardT: Int { get }
var kHIDUsage_KeyboardU: Int { get }
var kHIDUsage_KeyboardV: Int { get }
var kHIDUsage_KeyboardW: Int { get }
var kHIDUsage_KeyboardX: Int { get }
var kHIDUsage_KeyboardY: Int { get }
var kHIDUsage_KeyboardZ: Int { get }
var kHIDUsage_Keyboard1: Int { get }
var kHIDUsage_Keyboard2: Int { get }
var kHIDUsage_Keyboard3: Int { get }
var kHIDUsage_Keyboard4: Int { get }
var kHIDUsage_Keyboard5: Int { get }
var kHIDUsage_Keyboard6: Int { get }
var kHIDUsage_Keyboard7: Int { get }
var kHIDUsage_Keyboard8: Int { get }
var kHIDUsage_Keyboard9: Int { get }
var kHIDUsage_Keyboard0: Int { get }
var kHIDUsage_KeyboardReturnOrEnter: Int { get }
var kHIDUsage_KeyboardEscape: Int { get }
var kHIDUsage_KeyboardDeleteOrBackspace: Int { get }
var kHIDUsage_KeyboardTab: Int { get }
var kHIDUsage_KeyboardSpacebar: Int { get }
var kHIDUsage_KeyboardHyphen: Int { get }
var kHIDUsage_KeyboardEqualSign: Int { get }
var kHIDUsage_KeyboardOpenBracket: Int { get }
var kHIDUsage_KeyboardCloseBracket: Int { get }
var kHIDUsage_KeyboardBackslash: Int { get }
var kHIDUsage_KeyboardNonUSPound: Int { get }
var kHIDUsage_KeyboardSemicolon: Int { get }
var kHIDUsage_KeyboardQuote: Int { get }
var kHIDUsage_KeyboardGraveAccentAndTilde: Int { get }
var kHIDUsage_KeyboardComma: Int { get }
var kHIDUsage_KeyboardPeriod: Int { get }
var kHIDUsage_KeyboardSlash: Int { get }
var kHIDUsage_KeyboardCapsLock: Int { get }
var kHIDUsage_KeyboardF1: Int { get }
var kHIDUsage_KeyboardF2: Int { get }
var kHIDUsage_KeyboardF3: Int { get }
var kHIDUsage_KeyboardF4: Int { get }
var kHIDUsage_KeyboardF5: Int { get }
var kHIDUsage_KeyboardF6: Int { get }
var kHIDUsage_KeyboardF7: Int { get }
var kHIDUsage_KeyboardF8: Int { get }
var kHIDUsage_KeyboardF9: Int { get }
var kHIDUsage_KeyboardF10: Int { get }
var kHIDUsage_KeyboardF11: Int { get }
var kHIDUsage_KeyboardF12: Int { get }
var kHIDUsage_KeyboardPrintScreen: Int { get }
var kHIDUsage_KeyboardScrollLock: Int { get }
var kHIDUsage_KeyboardPause: Int { get }
var kHIDUsage_KeyboardInsert: Int { get }
var kHIDUsage_KeyboardHome: Int { get }
var kHIDUsage_KeyboardPageUp: Int { get }
var kHIDUsage_KeyboardDeleteForward: Int { get }
var kHIDUsage_KeyboardEnd: Int { get }
var kHIDUsage_KeyboardPageDown: Int { get }
var kHIDUsage_KeyboardRightArrow: Int { get }
var kHIDUsage_KeyboardLeftArrow: Int { get }
var kHIDUsage_KeyboardDownArrow: Int { get }
var kHIDUsage_KeyboardUpArrow: Int { get }
var kHIDUsage_KeypadNumLock: Int { get }
var kHIDUsage_KeypadSlash: Int { get }
var kHIDUsage_KeypadAsterisk: Int { get }
var kHIDUsage_KeypadHyphen: Int { get }
var kHIDUsage_KeypadPlus: Int { get }
var kHIDUsage_KeypadEnter: Int { get }
var kHIDUsage_Keypad1: Int { get }
var kHIDUsage_Keypad2: Int { get }
var kHIDUsage_Keypad3: Int { get }
var kHIDUsage_Keypad4: Int { get }
var kHIDUsage_Keypad5: Int { get }
var kHIDUsage_Keypad6: Int { get }
var kHIDUsage_Keypad7: Int { get }
var kHIDUsage_Keypad8: Int { get }
var kHIDUsage_Keypad9: Int { get }
var kHIDUsage_Keypad0: Int { get }
var kHIDUsage_KeypadPeriod: Int { get }
var kHIDUsage_KeyboardNonUSBackslash: Int { get }
var kHIDUsage_KeyboardApplication: Int { get }
var kHIDUsage_KeyboardPower: Int { get }
var kHIDUsage_KeypadEqualSign: Int { get }
var kHIDUsage_KeyboardF13: Int { get }
var kHIDUsage_KeyboardF14: Int { get }
var kHIDUsage_KeyboardF15: Int { get }
var kHIDUsage_KeyboardF16: Int { get }
var kHIDUsage_KeyboardF17: Int { get }
var kHIDUsage_KeyboardF18: Int { get }
var kHIDUsage_KeyboardF19: Int { get }
var kHIDUsage_KeyboardF20: Int { get }
var kHIDUsage_KeyboardF21: Int { get }
var kHIDUsage_KeyboardF22: Int { get }
var kHIDUsage_KeyboardF23: Int { get }
var kHIDUsage_KeyboardF24: Int { get }
var kHIDUsage_KeyboardExecute: Int { get }
var kHIDUsage_KeyboardHelp: Int { get }
var kHIDUsage_KeyboardMenu: Int { get }
var kHIDUsage_KeyboardSelect: Int { get }
var kHIDUsage_KeyboardStop: Int { get }
var kHIDUsage_KeyboardAgain: Int { get }
var kHIDUsage_KeyboardUndo: Int { get }
var kHIDUsage_KeyboardCut: Int { get }
var kHIDUsage_KeyboardCopy: Int { get }
var kHIDUsage_KeyboardPaste: Int { get }
var kHIDUsage_KeyboardFind: Int { get }
var kHIDUsage_KeyboardMute: Int { get }
var kHIDUsage_KeyboardVolumeUp: Int { get }
var kHIDUsage_KeyboardVolumeDown: Int { get }
var kHIDUsage_KeyboardLockingCapsLock: Int { get }
var kHIDUsage_KeyboardLockingNumLock: Int { get }
var kHIDUsage_KeyboardLockingScrollLock: Int { get }
var kHIDUsage_KeypadComma: Int { get }
var kHIDUsage_KeypadEqualSignAS400: Int { get }
var kHIDUsage_KeyboardInternational1: Int { get }
var kHIDUsage_KeyboardInternational2: Int { get }
var kHIDUsage_KeyboardInternational3: Int { get }
var kHIDUsage_KeyboardInternational4: Int { get }
var kHIDUsage_KeyboardInternational5: Int { get }
var kHIDUsage_KeyboardInternational6: Int { get }
var kHIDUsage_KeyboardInternational7: Int { get }
var kHIDUsage_KeyboardInternational8: Int { get }
var kHIDUsage_KeyboardInternational9: Int { get }
var kHIDUsage_KeyboardLANG1: Int { get }
var kHIDUsage_KeyboardLANG2: Int { get }
var kHIDUsage_KeyboardLANG3: Int { get }
var kHIDUsage_KeyboardLANG4: Int { get }
var kHIDUsage_KeyboardLANG5: Int { get }
var kHIDUsage_KeyboardLANG6: Int { get }
var kHIDUsage_KeyboardLANG7: Int { get }
var kHIDUsage_KeyboardLANG8: Int { get }
var kHIDUsage_KeyboardLANG9: Int { get }
var kHIDUsage_KeyboardAlternateErase: Int { get }
var kHIDUsage_KeyboardSysReqOrAttention: Int { get }
var kHIDUsage_KeyboardCancel: Int { get }
var kHIDUsage_KeyboardClear: Int { get }
var kHIDUsage_KeyboardPrior: Int { get }
var kHIDUsage_KeyboardReturn: Int { get }
var kHIDUsage_KeyboardSeparator: Int { get }
var kHIDUsage_KeyboardOut: Int { get }
var kHIDUsage_KeyboardOper: Int { get }
var kHIDUsage_KeyboardClearOrAgain: Int { get }
var kHIDUsage_KeyboardCrSelOrProps: Int { get }
var kHIDUsage_KeyboardExSel: Int { get }
var kHIDUsage_KeyboardLeftControl: Int { get }
var kHIDUsage_KeyboardLeftShift: Int { get }
var kHIDUsage_KeyboardLeftAlt: Int { get }
var kHIDUsage_KeyboardLeftGUI: Int { get }
var kHIDUsage_KeyboardRightControl: Int { get }
var kHIDUsage_KeyboardRightShift: Int { get }
var kHIDUsage_KeyboardRightAlt: Int { get }
var kHIDUsage_KeyboardRightGUI: Int { get }
var kHIDUsage_Keyboard_Reserved: Int { get }
var kHIDUsage_LED_NumLock: Int { get }
var kHIDUsage_LED_CapsLock: Int { get }
var kHIDUsage_LED_ScrollLock: Int { get }
var kHIDUsage_LED_Compose: Int { get }
var kHIDUsage_LED_Kana: Int { get }
var kHIDUsage_LED_Power: Int { get }
var kHIDUsage_LED_Shift: Int { get }
var kHIDUsage_LED_DoNotDisturb: Int { get }
var kHIDUsage_LED_Mute: Int { get }
var kHIDUsage_LED_ToneEnable: Int { get }
var kHIDUsage_LED_HighCutFilter: Int { get }
var kHIDUsage_LED_LowCutFilter: Int { get }
var kHIDUsage_LED_EqualizerEnable: Int { get }
var kHIDUsage_LED_SoundFieldOn: Int { get }
var kHIDUsage_LED_SurroundOn: Int { get }
var kHIDUsage_LED_Repeat: Int { get }
var kHIDUsage_LED_Stereo: Int { get }
var kHIDUsage_LED_SamplingRateDetect: Int { get }
var kHIDUsage_LED_Spinning: Int { get }
var kHIDUsage_LED_CAV: Int { get }
var kHIDUsage_LED_CLV: Int { get }
var kHIDUsage_LED_RecordingFormatDetect: Int { get }
var kHIDUsage_LED_OffHook: Int { get }
var kHIDUsage_LED_Ring: Int { get }
var kHIDUsage_LED_MessageWaiting: Int { get }
var kHIDUsage_LED_DataMode: Int { get }
var kHIDUsage_LED_BatteryOperation: Int { get }
var kHIDUsage_LED_BatteryOK: Int { get }
var kHIDUsage_LED_BatteryLow: Int { get }
var kHIDUsage_LED_Speaker: Int { get }
var kHIDUsage_LED_HeadSet: Int { get }
var kHIDUsage_LED_Hold: Int { get }
var kHIDUsage_LED_Microphone: Int { get }
var kHIDUsage_LED_Coverage: Int { get }
var kHIDUsage_LED_NightMode: Int { get }
var kHIDUsage_LED_SendCalls: Int { get }
var kHIDUsage_LED_CallPickup: Int { get }
var kHIDUsage_LED_Conference: Int { get }
var kHIDUsage_LED_StandBy: Int { get }
var kHIDUsage_LED_CameraOn: Int { get }
var kHIDUsage_LED_CameraOff: Int { get }
var kHIDUsage_LED_OnLine: Int { get }
var kHIDUsage_LED_OffLine: Int { get }
var kHIDUsage_LED_Busy: Int { get }
var kHIDUsage_LED_Ready: Int { get }
var kHIDUsage_LED_PaperOut: Int { get }
var kHIDUsage_LED_PaperJam: Int { get }
var kHIDUsage_LED_Remote: Int { get }
var kHIDUsage_LED_Forward: Int { get }
var kHIDUsage_LED_Reverse: Int { get }
var kHIDUsage_LED_Stop: Int { get }
var kHIDUsage_LED_Rewind: Int { get }
var kHIDUsage_LED_FastForward: Int { get }
var kHIDUsage_LED_Play: Int { get }
var kHIDUsage_LED_Pause: Int { get }
var kHIDUsage_LED_Record: Int { get }
var kHIDUsage_LED_Error: Int { get }
var kHIDUsage_LED_Usage: Int { get }
var kHIDUsage_LED_UsageInUseIndicator: Int { get }
var kHIDUsage_LED_UsageMultiModeIndicator: Int { get }
var kHIDUsage_LED_IndicatorOn: Int { get }
var kHIDUsage_LED_IndicatorFlash: Int { get }
var kHIDUsage_LED_IndicatorSlowBlink: Int { get }
var kHIDUsage_LED_IndicatorFastBlink: Int { get }
var kHIDUsage_LED_IndicatorOff: Int { get }
var kHIDUsage_LED_FlashOnTime: Int { get }
var kHIDUsage_LED_SlowBlinkOnTime: Int { get }
var kHIDUsage_LED_SlowBlinkOffTime: Int { get }
var kHIDUsage_LED_FastBlinkOnTime: Int { get }
var kHIDUsage_LED_FastBlinkOffTime: Int { get }
var kHIDUsage_LED_UsageIndicatorColor: Int { get }
var kHIDUsage_LED_IndicatorRed: Int { get }
var kHIDUsage_LED_IndicatorGreen: Int { get }
var kHIDUsage_LED_IndicatorAmber: Int { get }
var kHIDUsage_LED_GenericIndicator: Int { get }
var kHIDUsage_LED_SystemSuspend: Int { get }
var kHIDUsage_LED_ExternalPowerConnected: Int { get }
var kHIDUsage_LED_PlayerIndicator: Int { get }
var kHIDUsage_LED_Player1: Int { get }
var kHIDUsage_LED_Player2: Int { get }
var kHIDUsage_LED_Player3: Int { get }
var kHIDUsage_LED_Player4: Int { get }
var kHIDUsage_LED_Player5: Int { get }
var kHIDUsage_LED_Player6: Int { get }
var kHIDUsage_LED_Player7: Int { get }
var kHIDUsage_LED_Player8: Int { get }
var kHIDUsage_LED_Reserved: Int { get }
var kHIDUsage_Button_1: Int { get }
var kHIDUsage_Button_2: Int { get }
var kHIDUsage_Button_3: Int { get }
var kHIDUsage_Button_4: Int { get }
var kHIDUsage_Button_5: Int { get }
var kHIDUsage_Button_6: Int { get }
var kHIDUsage_Button_7: Int { get }
var kHIDUsage_Button_8: Int { get }
var kHIDUsage_Button_9: Int { get }
var kHIDUsage_Button_10: Int { get }
var kHIDUsage_Button_11: Int { get }
var kHIDUsage_Button_12: Int { get }
var kHIDUsage_Button_13: Int { get }
var kHIDUsage_Button_14: Int { get }
var kHIDUsage_Button_15: Int { get }
var kHIDUsage_Button_16: Int { get }
var kHIDUsage_Button_17: Int { get }
var kHIDUsage_Button_18: Int { get }
var kHIDUsage_Button_19: Int { get }
var kHIDUsage_Button_20: Int { get }
var kHIDUsage_Button_21: Int { get }
var kHIDUsage_Button_22: Int { get }
var kHIDUsage_Button_23: Int { get }
var kHIDUsage_Button_24: Int { get }
var kHIDUsage_Button_25: Int { get }
var kHIDUsage_Button_26: Int { get }
var kHIDUsage_Button_27: Int { get }
var kHIDUsage_Button_28: Int { get }
var kHIDUsage_Button_29: Int { get }
var kHIDUsage_Button_30: Int { get }
var kHIDUsage_Button_31: Int { get }
var kHIDUsage_Button_32: Int { get }
var kHIDUsage_Button_33: Int { get }
var kHIDUsage_Button_34: Int { get }
var kHIDUsage_Button_35: Int { get }
var kHIDUsage_Button_36: Int { get }
var kHIDUsage_Button_37: Int { get }
var kHIDUsage_Button_38: Int { get }
var kHIDUsage_Button_39: Int { get }
var kHIDUsage_Button_40: Int { get }
var kHIDUsage_Button_41: Int { get }
var kHIDUsage_Button_42: Int { get }
var kHIDUsage_Button_43: Int { get }
var kHIDUsage_Button_44: Int { get }
var kHIDUsage_Button_45: Int { get }
var kHIDUsage_Button_46: Int { get }
var kHIDUsage_Button_47: Int { get }
var kHIDUsage_Button_48: Int { get }
var kHIDUsage_Button_49: Int { get }
var kHIDUsage_Button_50: Int { get }
var kHIDUsage_Button_51: Int { get }
var kHIDUsage_Button_52: Int { get }
var kHIDUsage_Button_53: Int { get }
var kHIDUsage_Button_54: Int { get }
var kHIDUsage_Button_55: Int { get }
var kHIDUsage_Button_56: Int { get }
var kHIDUsage_Button_57: Int { get }
var kHIDUsage_Button_58: Int { get }
var kHIDUsage_Button_59: Int { get }
var kHIDUsage_Button_60: Int { get }
var kHIDUsage_Button_61: Int { get }
var kHIDUsage_Button_62: Int { get }
var kHIDUsage_Button_63: Int { get }
var kHIDUsage_Button_64: Int { get }
var kHIDUsage_Button_65: Int { get }
var kHIDUsage_Button_66: Int { get }
var kHIDUsage_Button_67: Int { get }
var kHIDUsage_Button_68: Int { get }
var kHIDUsage_Button_69: Int { get }
var kHIDUsage_Button_70: Int { get }
var kHIDUsage_Button_71: Int { get }
var kHIDUsage_Button_72: Int { get }
var kHIDUsage_Button_73: Int { get }
var kHIDUsage_Button_74: Int { get }
var kHIDUsage_Button_75: Int { get }
var kHIDUsage_Button_76: Int { get }
var kHIDUsage_Button_77: Int { get }
var kHIDUsage_Button_78: Int { get }
var kHIDUsage_Button_79: Int { get }
var kHIDUsage_Button_80: Int { get }
var kHIDUsage_Button_81: Int { get }
var kHIDUsage_Button_82: Int { get }
var kHIDUsage_Button_83: Int { get }
var kHIDUsage_Button_84: Int { get }
var kHIDUsage_Button_85: Int { get }
var kHIDUsage_Button_86: Int { get }
var kHIDUsage_Button_87: Int { get }
var kHIDUsage_Button_88: Int { get }
var kHIDUsage_Button_89: Int { get }
var kHIDUsage_Button_90: Int { get }
var kHIDUsage_Button_91: Int { get }
var kHIDUsage_Button_92: Int { get }
var kHIDUsage_Button_93: Int { get }
var kHIDUsage_Button_94: Int { get }
var kHIDUsage_Button_95: Int { get }
var kHIDUsage_Button_96: Int { get }
var kHIDUsage_Button_97: Int { get }
var kHIDUsage_Button_98: Int { get }
var kHIDUsage_Button_99: Int { get }
var kHIDUsage_Button_100: Int { get }
var kHIDUsage_Button_101: Int { get }
var kHIDUsage_Button_102: Int { get }
var kHIDUsage_Button_103: Int { get }
var kHIDUsage_Button_104: Int { get }
var kHIDUsage_Button_105: Int { get }
var kHIDUsage_Button_106: Int { get }
var kHIDUsage_Button_107: Int { get }
var kHIDUsage_Button_108: Int { get }
var kHIDUsage_Button_109: Int { get }
var kHIDUsage_Button_110: Int { get }
var kHIDUsage_Button_111: Int { get }
var kHIDUsage_Button_112: Int { get }
var kHIDUsage_Button_113: Int { get }
var kHIDUsage_Button_114: Int { get }
var kHIDUsage_Button_115: Int { get }
var kHIDUsage_Button_116: Int { get }
var kHIDUsage_Button_117: Int { get }
var kHIDUsage_Button_118: Int { get }
var kHIDUsage_Button_119: Int { get }
var kHIDUsage_Button_120: Int { get }
var kHIDUsage_Button_121: Int { get }
var kHIDUsage_Button_122: Int { get }
var kHIDUsage_Button_123: Int { get }
var kHIDUsage_Button_124: Int { get }
var kHIDUsage_Button_125: Int { get }
var kHIDUsage_Button_126: Int { get }
var kHIDUsage_Button_127: Int { get }
var kHIDUsage_Button_128: Int { get }
var kHIDUsage_Button_129: Int { get }
var kHIDUsage_Button_130: Int { get }
var kHIDUsage_Button_131: Int { get }
var kHIDUsage_Button_132: Int { get }
var kHIDUsage_Button_133: Int { get }
var kHIDUsage_Button_134: Int { get }
var kHIDUsage_Button_135: Int { get }
var kHIDUsage_Button_136: Int { get }
var kHIDUsage_Button_137: Int { get }
var kHIDUsage_Button_138: Int { get }
var kHIDUsage_Button_139: Int { get }
var kHIDUsage_Button_140: Int { get }
var kHIDUsage_Button_141: Int { get }
var kHIDUsage_Button_142: Int { get }
var kHIDUsage_Button_143: Int { get }
var kHIDUsage_Button_144: Int { get }
var kHIDUsage_Button_145: Int { get }
var kHIDUsage_Button_146: Int { get }
var kHIDUsage_Button_147: Int { get }
var kHIDUsage_Button_148: Int { get }
var kHIDUsage_Button_149: Int { get }
var kHIDUsage_Button_150: Int { get }
var kHIDUsage_Button_151: Int { get }
var kHIDUsage_Button_152: Int { get }
var kHIDUsage_Button_153: Int { get }
var kHIDUsage_Button_154: Int { get }
var kHIDUsage_Button_155: Int { get }
var kHIDUsage_Button_156: Int { get }
var kHIDUsage_Button_157: Int { get }
var kHIDUsage_Button_158: Int { get }
var kHIDUsage_Button_159: Int { get }
var kHIDUsage_Button_160: Int { get }
var kHIDUsage_Button_161: Int { get }
var kHIDUsage_Button_162: Int { get }
var kHIDUsage_Button_163: Int { get }
var kHIDUsage_Button_164: Int { get }
var kHIDUsage_Button_165: Int { get }
var kHIDUsage_Button_166: Int { get }
var kHIDUsage_Button_167: Int { get }
var kHIDUsage_Button_168: Int { get }
var kHIDUsage_Button_169: Int { get }
var kHIDUsage_Button_170: Int { get }
var kHIDUsage_Button_171: Int { get }
var kHIDUsage_Button_172: Int { get }
var kHIDUsage_Button_173: Int { get }
var kHIDUsage_Button_174: Int { get }
var kHIDUsage_Button_175: Int { get }
var kHIDUsage_Button_176: Int { get }
var kHIDUsage_Button_177: Int { get }
var kHIDUsage_Button_178: Int { get }
var kHIDUsage_Button_179: Int { get }
var kHIDUsage_Button_180: Int { get }
var kHIDUsage_Button_181: Int { get }
var kHIDUsage_Button_182: Int { get }
var kHIDUsage_Button_183: Int { get }
var kHIDUsage_Button_184: Int { get }
var kHIDUsage_Button_185: Int { get }
var kHIDUsage_Button_186: Int { get }
var kHIDUsage_Button_187: Int { get }
var kHIDUsage_Button_188: Int { get }
var kHIDUsage_Button_189: Int { get }
var kHIDUsage_Button_190: Int { get }
var kHIDUsage_Button_191: Int { get }
var kHIDUsage_Button_192: Int { get }
var kHIDUsage_Button_193: Int { get }
var kHIDUsage_Button_194: Int { get }
var kHIDUsage_Button_195: Int { get }
var kHIDUsage_Button_196: Int { get }
var kHIDUsage_Button_197: Int { get }
var kHIDUsage_Button_198: Int { get }
var kHIDUsage_Button_199: Int { get }
var kHIDUsage_Button_200: Int { get }
var kHIDUsage_Button_201: Int { get }
var kHIDUsage_Button_202: Int { get }
var kHIDUsage_Button_203: Int { get }
var kHIDUsage_Button_204: Int { get }
var kHIDUsage_Button_205: Int { get }
var kHIDUsage_Button_206: Int { get }
var kHIDUsage_Button_207: Int { get }
var kHIDUsage_Button_208: Int { get }
var kHIDUsage_Button_209: Int { get }
var kHIDUsage_Button_210: Int { get }
var kHIDUsage_Button_211: Int { get }
var kHIDUsage_Button_212: Int { get }
var kHIDUsage_Button_213: Int { get }
var kHIDUsage_Button_214: Int { get }
var kHIDUsage_Button_215: Int { get }
var kHIDUsage_Button_216: Int { get }
var kHIDUsage_Button_217: Int { get }
var kHIDUsage_Button_218: Int { get }
var kHIDUsage_Button_219: Int { get }
var kHIDUsage_Button_220: Int { get }
var kHIDUsage_Button_221: Int { get }
var kHIDUsage_Button_222: Int { get }
var kHIDUsage_Button_223: Int { get }
var kHIDUsage_Button_224: Int { get }
var kHIDUsage_Button_225: Int { get }
var kHIDUsage_Button_226: Int { get }
var kHIDUsage_Button_227: Int { get }
var kHIDUsage_Button_228: Int { get }
var kHIDUsage_Button_229: Int { get }
var kHIDUsage_Button_230: Int { get }
var kHIDUsage_Button_231: Int { get }
var kHIDUsage_Button_232: Int { get }
var kHIDUsage_Button_233: Int { get }
var kHIDUsage_Button_234: Int { get }
var kHIDUsage_Button_235: Int { get }
var kHIDUsage_Button_236: Int { get }
var kHIDUsage_Button_237: Int { get }
var kHIDUsage_Button_238: Int { get }
var kHIDUsage_Button_239: Int { get }
var kHIDUsage_Button_240: Int { get }
var kHIDUsage_Button_241: Int { get }
var kHIDUsage_Button_242: Int { get }
var kHIDUsage_Button_243: Int { get }
var kHIDUsage_Button_244: Int { get }
var kHIDUsage_Button_245: Int { get }
var kHIDUsage_Button_246: Int { get }
var kHIDUsage_Button_247: Int { get }
var kHIDUsage_Button_248: Int { get }
var kHIDUsage_Button_249: Int { get }
var kHIDUsage_Button_250: Int { get }
var kHIDUsage_Button_251: Int { get }
var kHIDUsage_Button_252: Int { get }
var kHIDUsage_Button_253: Int { get }
var kHIDUsage_Button_254: Int { get }
var kHIDUsage_Button_255: Int { get }
var kHIDUsage_Button_65535: Int { get }
var kHIDUsage_Ord_Instance1: Int { get }
var kHIDUsage_Ord_Instance2: Int { get }
var kHIDUsage_Ord_Instance3: Int { get }
var kHIDUsage_Ord_Instance4: Int { get }
var kHIDUsage_Ord_Instance65535: Int { get }
var kHIDUsage_Tfon_Phone: Int { get }
var kHIDUsage_Tfon_AnsweringMachine: Int { get }
var kHIDUsage_Tfon_MessageControls: Int { get }
var kHIDUsage_Tfon_Handset: Int { get }
var kHIDUsage_Tfon_Headset: Int { get }
var kHIDUsage_Tfon_TelephonyKeyPad: Int { get }
var kHIDUsage_Tfon_ProgrammableButton: Int { get }
var kHIDUsage_Tfon_HookSwitch: Int { get }
var kHIDUsage_Tfon_Flash: Int { get }
var kHIDUsage_Tfon_Feature: Int { get }
var kHIDUsage_Tfon_Hold: Int { get }
var kHIDUsage_Tfon_Redial: Int { get }
var kHIDUsage_Tfon_Transfer: Int { get }
var kHIDUsage_Tfon_Drop: Int { get }
var kHIDUsage_Tfon_Park: Int { get }
var kHIDUsage_Tfon_ForwardCalls: Int { get }
var kHIDUsage_Tfon_AlternateFunction: Int { get }
var kHIDUsage_Tfon_Line: Int { get }
var kHIDUsage_Tfon_SpeakerPhone: Int { get }
var kHIDUsage_Tfon_Conference: Int { get }
var kHIDUsage_Tfon_RingEnable: Int { get }
var kHIDUsage_Tfon_Ring: Int { get }
var kHIDUsage_Tfon_PhoneMute: Int { get }
var kHIDUsage_Tfon_CallerID: Int { get }
var kHIDUsage_Tfon_SpeedDial: Int { get }
var kHIDUsage_Tfon_StoreNumber: Int { get }
var kHIDUsage_Tfon_RecallNumber: Int { get }
var kHIDUsage_Tfon_PhoneDirectory: Int { get }
var kHIDUsage_Tfon_VoiceMail: Int { get }
var kHIDUsage_Tfon_ScreenCalls: Int { get }
var kHIDUsage_Tfon_DoNotDisturb: Int { get }
var kHIDUsage_Tfon_Message: Int { get }
var kHIDUsage_Tfon_AnswerOnOrOff: Int { get }
var kHIDUsage_Tfon_InsideDialTone: Int { get }
var kHIDUsage_Tfon_OutsideDialTone: Int { get }
var kHIDUsage_Tfon_InsideRingTone: Int { get }
var kHIDUsage_Tfon_OutsideRingTone: Int { get }
var kHIDUsage_Tfon_PriorityRingTone: Int { get }
var kHIDUsage_Tfon_InsideRingback: Int { get }
var kHIDUsage_Tfon_PriorityRingback: Int { get }
var kHIDUsage_Tfon_LineBusyTone: Int { get }
var kHIDUsage_Tfon_ReorderTone: Int { get }
var kHIDUsage_Tfon_CallWaitingTone: Int { get }
var kHIDUsage_Tfon_ConfirmationTone1: Int { get }
var kHIDUsage_Tfon_ConfirmationTone2: Int { get }
var kHIDUsage_Tfon_TonesOff: Int { get }
var kHIDUsage_Tfon_OutsideRingback: Int { get }
var kHIDUsage_Tfon_PhoneKey0: Int { get }
var kHIDUsage_Tfon_PhoneKey1: Int { get }
var kHIDUsage_Tfon_PhoneKey2: Int { get }
var kHIDUsage_Tfon_PhoneKey3: Int { get }
var kHIDUsage_Tfon_PhoneKey4: Int { get }
var kHIDUsage_Tfon_PhoneKey5: Int { get }
var kHIDUsage_Tfon_PhoneKey6: Int { get }
var kHIDUsage_Tfon_PhoneKey7: Int { get }
var kHIDUsage_Tfon_PhoneKey8: Int { get }
var kHIDUsage_Tfon_PhoneKey9: Int { get }
var kHIDUsage_Tfon_PhoneKeyStar: Int { get }
var kHIDUsage_Tfon_PhoneKeyPound: Int { get }
var kHIDUsage_Tfon_PhoneKeyA: Int { get }
var kHIDUsage_Tfon_PhoneKeyB: Int { get }
var kHIDUsage_Tfon_PhoneKeyC: Int { get }
var kHIDUsage_Tfon_PhoneKeyD: Int { get }
var kHIDUsage_TFon_Reserved: Int { get }
var kHIDUsage_Csmr_ConsumerControl: Int { get }
var kHIDUsage_Csmr_NumericKeyPad: Int { get }
var kHIDUsage_Csmr_ProgrammableButtons: Int { get }
var kHIDUsage_Csmr_Microphone: Int { get }
var kHIDUsage_Csmr_Headphone: Int { get }
var kHIDUsage_Csmr_GraphicEqualizer: Int { get }
var kHIDUsage_Csmr_Plus10: Int { get }
var kHIDUsage_Csmr_Plus100: Int { get }
var kHIDUsage_Csmr_AMOrPM: Int { get }
var kHIDUsage_Csmr_Power: Int { get }
var kHIDUsage_Csmr_Reset: Int { get }
var kHIDUsage_Csmr_Sleep: Int { get }
var kHIDUsage_Csmr_SleepAfter: Int { get }
var kHIDUsage_Csmr_SleepMode: Int { get }
var kHIDUsage_Csmr_Illumination: Int { get }
var kHIDUsage_Csmr_FunctionButtons: Int { get }
var kHIDUsage_Csmr_Menu: Int { get }
var kHIDUsage_Csmr_MenuPick: Int { get }
var kHIDUsage_Csmr_MenuUp: Int { get }
var kHIDUsage_Csmr_MenuDown: Int { get }
var kHIDUsage_Csmr_MenuLeft: Int { get }
var kHIDUsage_Csmr_MenuRight: Int { get }
var kHIDUsage_Csmr_MenuEscape: Int { get }
var kHIDUsage_Csmr_MenuValueIncrease: Int { get }
var kHIDUsage_Csmr_MenuValueDecrease: Int { get }
var kHIDUsage_Csmr_DataOnScreen: Int { get }
var kHIDUsage_Csmr_ClosedCaption: Int { get }
var kHIDUsage_Csmr_ClosedCaptionSelect: Int { get }
var kHIDUsage_Csmr_VCROrTV: Int { get }
var kHIDUsage_Csmr_BroadcastMode: Int { get }
var kHIDUsage_Csmr_Snapshot: Int { get }
var kHIDUsage_Csmr_Still: Int { get }
var kHIDUsage_Csmr_PictureInPictureToggle: Int { get }
var kHIDUsage_Csmr_PictureInPictureSwap: Int { get }
var kHIDUsage_Csmr_RedMenuButton: Int { get }
var kHIDUsage_Csmr_GreenMenuButton: Int { get }
var kHIDUsage_Csmr_BlueMenuButton: Int { get }
var kHIDUsage_Csmr_YellowMenuButton: Int { get }
var kHIDUsage_Csmr_Aspect: Int { get }
var kHIDUsage_Csmr_3DModeSelect: Int { get }
var kHIDUsage_Csmr_DisplayBrightnessIncrement: Int { get }
var kHIDUsage_Csmr_DisplayBrightnessDecrement: Int { get }
var kHIDUsage_Csmr_DisplayBrightness: Int { get }
var kHIDUsage_Csmr_DisplayBacklightToggle: Int { get }
var kHIDUsage_Csmr_DisplayBrightnessMinimum: Int { get }
var kHIDUsage_Csmr_DisplayBrightnessMaximum: Int { get }
var kHIDUsage_Csmr_DisplayBrightnessSetAutoBrightness: Int { get }
var kHIDUsage_Csmr_KeyboardBrightnessIncrement: Int { get }
var kHIDUsage_Csmr_KeyboardBrightnessDecrement: Int { get }
var kHIDUsage_Csmr_Selection: Int { get }
var kHIDUsage_Csmr_Assign: Int { get }
var kHIDUsage_Csmr_ModeStep: Int { get }
var kHIDUsage_Csmr_RecallLast: Int { get }
var kHIDUsage_Csmr_EnterChannel: Int { get }
var kHIDUsage_Csmr_OrderMovie: Int { get }
var kHIDUsage_Csmr_Channel: Int { get }
var kHIDUsage_Csmr_MediaSelection: Int { get }
var kHIDUsage_Csmr_MediaSelectComputer: Int { get }
var kHIDUsage_Csmr_MediaSelectTV: Int { get }
var kHIDUsage_Csmr_MediaSelectWWW: Int { get }
var kHIDUsage_Csmr_MediaSelectDVD: Int { get }
var kHIDUsage_Csmr_MediaSelectTelephone: Int { get }
var kHIDUsage_Csmr_MediaSelectProgramGuide: Int { get }
var kHIDUsage_Csmr_MediaSelectVideoPhone: Int { get }
var kHIDUsage_Csmr_MediaSelectGames: Int { get }
var kHIDUsage_Csmr_MediaSelectMessages: Int { get }
var kHIDUsage_Csmr_MediaSelectCD: Int { get }
var kHIDUsage_Csmr_MediaSelectVCR: Int { get }
var kHIDUsage_Csmr_MediaSelectTuner: Int { get }
var kHIDUsage_Csmr_Quit: Int { get }
var kHIDUsage_Csmr_Help: Int { get }
var kHIDUsage_Csmr_MediaSelectTape: Int { get }
var kHIDUsage_Csmr_MediaSelectCable: Int { get }
var kHIDUsage_Csmr_MediaSelectSatellite: Int { get }
var kHIDUsage_Csmr_MediaSelectSecurity: Int { get }
var kHIDUsage_Csmr_MediaSelectHome: Int { get }
var kHIDUsage_Csmr_MediaSelectCall: Int { get }
var kHIDUsage_Csmr_ChannelIncrement: Int { get }
var kHIDUsage_Csmr_ChannelDecrement: Int { get }
var kHIDUsage_Csmr_Media: Int { get }
var kHIDUsage_Csmr_VCRPlus: Int { get }
var kHIDUsage_Csmr_Once: Int { get }
var kHIDUsage_Csmr_Daily: Int { get }
var kHIDUsage_Csmr_Weekly: Int { get }
var kHIDUsage_Csmr_Monthly: Int { get }
var kHIDUsage_Csmr_Play: Int { get }
var kHIDUsage_Csmr_Pause: Int { get }
var kHIDUsage_Csmr_Record: Int { get }
var kHIDUsage_Csmr_FastForward: Int { get }
var kHIDUsage_Csmr_Rewind: Int { get }
var kHIDUsage_Csmr_ScanNextTrack: Int { get }
var kHIDUsage_Csmr_ScanPreviousTrack: Int { get }
var kHIDUsage_Csmr_Stop: Int { get }
var kHIDUsage_Csmr_Eject: Int { get }
var kHIDUsage_Csmr_RandomPlay: Int { get }
var kHIDUsage_Csmr_SelectDisc: Int { get }
var kHIDUsage_Csmr_EnterDisc: Int { get }
var kHIDUsage_Csmr_Repeat: Int { get }
var kHIDUsage_Csmr_Tracking: Int { get }
var kHIDUsage_Csmr_TrackNormal: Int { get }
var kHIDUsage_Csmr_SlowTracking: Int { get }
var kHIDUsage_Csmr_FrameForward: Int { get }
var kHIDUsage_Csmr_FrameBack: Int { get }
var kHIDUsage_Csmr_Mark: Int { get }
var kHIDUsage_Csmr_ClearMark: Int { get }
var kHIDUsage_Csmr_RepeatFromMark: Int { get }
var kHIDUsage_Csmr_ReturnToMark: Int { get }
var kHIDUsage_Csmr_SearchMarkForward: Int { get }
var kHIDUsage_Csmr_SearchMarkBackwards: Int { get }
var kHIDUsage_Csmr_CounterReset: Int { get }
var kHIDUsage_Csmr_ShowCounter: Int { get }
var kHIDUsage_Csmr_TrackingIncrement: Int { get }
var kHIDUsage_Csmr_TrackingDecrement: Int { get }
var kHIDUsage_Csmr_StopOrEject: Int { get }
var kHIDUsage_Csmr_PlayOrPause: Int { get }
var kHIDUsage_Csmr_PlayOrSkip: Int { get }
var kHIDUsage_Csmr_VoiceCommand: Int { get }
var kHIDUsage_Csmr_Volume: Int { get }
var kHIDUsage_Csmr_Balance: Int { get }
var kHIDUsage_Csmr_Mute: Int { get }
var kHIDUsage_Csmr_Bass: Int { get }
var kHIDUsage_Csmr_Treble: Int { get }
var kHIDUsage_Csmr_BassBoost: Int { get }
var kHIDUsage_Csmr_SurroundMode: Int { get }
var kHIDUsage_Csmr_Loudness: Int { get }
var kHIDUsage_Csmr_MPX: Int { get }
var kHIDUsage_Csmr_VolumeIncrement: Int { get }
var kHIDUsage_Csmr_VolumeDecrement: Int { get }
var kHIDUsage_Csmr_Speed: Int { get }
var kHIDUsage_Csmr_PlaybackSpeed: Int { get }
var kHIDUsage_Csmr_StandardPlay: Int { get }
var kHIDUsage_Csmr_LongPlay: Int { get }
var kHIDUsage_Csmr_ExtendedPlay: Int { get }
var kHIDUsage_Csmr_Slow: Int { get }
var kHIDUsage_Csmr_FanEnable: Int { get }
var kHIDUsage_Csmr_FanSpeed: Int { get }
var kHIDUsage_Csmr_LightEnable: Int { get }
var kHIDUsage_Csmr_LightIlluminationLevel: Int { get }
var kHIDUsage_Csmr_ClimateControlEnable: Int { get }
var kHIDUsage_Csmr_RoomTemperature: Int { get }
var kHIDUsage_Csmr_SecurityEnable: Int { get }
var kHIDUsage_Csmr_FireAlarm: Int { get }
var kHIDUsage_Csmr_PoliceAlarm: Int { get }
var kHIDUsage_Csmr_Proximity: Int { get }
var kHIDUsage_Csmr_Motion: Int { get }
var kHIDUsage_Csmr_DuressAlarm: Int { get }
var kHIDUsage_Csmr_HoldupAlarm: Int { get }
var kHIDUsage_Csmr_MedicalAlarm: Int { get }
var kHIDUsage_Csmr_BalanceRight: Int { get }
var kHIDUsage_Csmr_BalanceLeft: Int { get }
var kHIDUsage_Csmr_BassIncrement: Int { get }
var kHIDUsage_Csmr_BassDecrement: Int { get }
var kHIDUsage_Csmr_TrebleIncrement: Int { get }
var kHIDUsage_Csmr_TrebleDecrement: Int { get }
var kHIDUsage_Csmr_SpeakerSystem: Int { get }
var kHIDUsage_Csmr_ChannelLeft: Int { get }
var kHIDUsage_Csmr_ChannelRight: Int { get }
var kHIDUsage_Csmr_ChannelCenter: Int { get }
var kHIDUsage_Csmr_ChannelFront: Int { get }
var kHIDUsage_Csmr_ChannelCenterFront: Int { get }
var kHIDUsage_Csmr_ChannelSide: Int { get }
var kHIDUsage_Csmr_ChannelSurround: Int { get }
var kHIDUsage_Csmr_ChannelLowFrequencyEnhancement: Int { get }
var kHIDUsage_Csmr_ChannelTop: Int { get }
var kHIDUsage_Csmr_ChannelUnknown: Int { get }
var kHIDUsage_Csmr_SubChannel: Int { get }
var kHIDUsage_Csmr_SubChannelIncrement: Int { get }
var kHIDUsage_Csmr_SubChannelDecrement: Int { get }
var kHIDUsage_Csmr_AlternateAudioIncrement: Int { get }
var kHIDUsage_Csmr_AlternateAudioDecrement: Int { get }
var kHIDUsage_Csmr_ApplicationLaunchButtons: Int { get }
var kHIDUsage_Csmr_ALLaunchButtonConfigurationTool: Int { get }
var kHIDUsage_Csmr_ALProgrammableButtonConfiguration: Int { get }
var kHIDUsage_Csmr_ALConsumerControlConfiguration: Int { get }
var kHIDUsage_Csmr_ALWordProcessor: Int { get }
var kHIDUsage_Csmr_ALTextEditor: Int { get }
var kHIDUsage_Csmr_ALSpreadsheet: Int { get }
var kHIDUsage_Csmr_ALGraphicsEditor: Int { get }
var kHIDUsage_Csmr_ALPresentationApp: Int { get }
var kHIDUsage_Csmr_ALDatabaseApp: Int { get }
var kHIDUsage_Csmr_ALEmailReader: Int { get }
var kHIDUsage_Csmr_ALNewsreader: Int { get }
var kHIDUsage_Csmr_ALVoicemail: Int { get }
var kHIDUsage_Csmr_ALContactsOrAddressBook: Int { get }
var kHIDUsage_Csmr_ALCalendarOrSchedule: Int { get }
var kHIDUsage_Csmr_ALTaskOrProjectManager: Int { get }
var kHIDUsage_Csmr_ALLogOrJournalOrTimecard: Int { get }
var kHIDUsage_Csmr_ALCheckbookOrFinance: Int { get }
var kHIDUsage_Csmr_ALCalculator: Int { get }
var kHIDUsage_Csmr_ALAOrVCaptureOrPlayback: Int { get }
var kHIDUsage_Csmr_ALLocalMachineBrowser: Int { get }
var kHIDUsage_Csmr_ALLANOrWANBrowser: Int { get }
var kHIDUsage_Csmr_ALInternetBrowser: Int { get }
var kHIDUsage_Csmr_ALRemoteNetworkingOrISPConnect: Int { get }
var kHIDUsage_Csmr_ALNetworkConference: Int { get }
var kHIDUsage_Csmr_ALNetworkChat: Int { get }
var kHIDUsage_Csmr_ALTelephonyOrDialer: Int { get }
var kHIDUsage_Csmr_ALLogon: Int { get }
var kHIDUsage_Csmr_ALLogoff: Int { get }
var kHIDUsage_Csmr_ALLogonOrLogoff: Int { get }
var kHIDUsage_Csmr_ALTerminalLockOrScreensaver: Int { get }
var kHIDUsage_Csmr_ALControlPanel: Int { get }
var kHIDUsage_Csmr_ALCommandLineProcessorOrRun: Int { get }
var kHIDUsage_Csmr_ALProcessOrTaskManager: Int { get }
var kHIDUsage_Csmr_AL: Int { get }
var kHIDUsage_Csmr_ALNextTaskOrApplication: Int { get }
var kHIDUsage_Csmr_ALPreviousTaskOrApplication: Int { get }
var kHIDUsage_Csmr_ALPreemptiveHaltTaskOrApplication: Int { get }
var kHIDUsage_Csmr_ALIntegratedHelpCenter: Int { get }
var kHIDUsage_Csmr_ALDocuments: Int { get }
var kHIDUsage_Csmr_ALThesaurus: Int { get }
var kHIDUsage_Csmr_ALDictionary: Int { get }
var kHIDUsage_Csmr_ALDesktop: Int { get }
var kHIDUsage_Csmr_ALSpellCheck: Int { get }
var kHIDUsage_Csmr_ALGrammerCheck: Int { get }
var kHIDUsage_Csmr_ALWirelessStatus: Int { get }
var kHIDUsage_Csmr_ALKeyboardLayout: Int { get }
var kHIDUsage_Csmr_ALVirusProtection: Int { get }
var kHIDUsage_Csmr_ALEncryption: Int { get }
var kHIDUsage_Csmr_ALScreenSaver: Int { get }
var kHIDUsage_Csmr_ALAlarms: Int { get }
var kHIDUsage_Csmr_ALClock: Int { get }
var kHIDUsage_Csmr_ALFileBrowser: Int { get }
var kHIDUsage_Csmr_ALPowerStatus: Int { get }
var kHIDUsage_Csmr_ALImageBrowser: Int { get }
var kHIDUsage_Csmr_ALAudioBrowser: Int { get }
var kHIDUsage_Csmr_ALMovieBrowser: Int { get }
var kHIDUsage_Csmr_ALDigitalRightsManager: Int { get }
var kHIDUsage_Csmr_ALDigitalWallet: Int { get }
var kHIDUsage_Csmr_ALInstantMessaging: Int { get }
var kHIDUsage_Csmr_ALOEMFeatureBrowser: Int { get }
var kHIDUsage_Csmr_ALOEMHelp: Int { get }
var kHIDUsage_Csmr_ALOnlineCommunity: Int { get }
var kHIDUsage_Csmr_ALEntertainmentContentBrowser: Int { get }
var kHIDUsage_Csmr_ALOnlineShoppingBrowswer: Int { get }
var kHIDUsage_Csmr_ALSmartCardInformationOrHelp: Int { get }
var kHIDUsage_Csmr_ALMarketMonitorOrFinanceBrowser: Int { get }
var kHIDUsage_Csmr_ALCustomizedCorporateNewsBrowser: Int { get }
var kHIDUsage_Csmr_ALOnlineActivityBrowswer: Int { get }
var kHIDUsage_Csmr_ALResearchOrSearchBrowswer: Int { get }
var kHIDUsage_Csmr_ALAudioPlayer: Int { get }
var kHIDUsage_Csmr_ALMessageStatus: Int { get }
var kHIDUsage_Csmr_ALContactSync: Int { get }
var kHIDUsage_Csmr_ALNavigation: Int { get }
var kHIDUsage_Csmr_ALContextawareDesktopAssistant: Int { get }
var kHIDUsage_Csmr_GenericGUIApplicationControls: Int { get }
var kHIDUsage_Csmr_ACNew: Int { get }
var kHIDUsage_Csmr_ACOpen: Int { get }
var kHIDUsage_Csmr_ACClose: Int { get }
var kHIDUsage_Csmr_ACExit: Int { get }
var kHIDUsage_Csmr_ACMaximize: Int { get }
var kHIDUsage_Csmr_ACMinimize: Int { get }
var kHIDUsage_Csmr_ACSave: Int { get }
var kHIDUsage_Csmr_ACPrint: Int { get }
var kHIDUsage_Csmr_ACProperties: Int { get }
var kHIDUsage_Csmr_ACUndo: Int { get }
var kHIDUsage_Csmr_ACCopy: Int { get }
var kHIDUsage_Csmr_ACCut: Int { get }
var kHIDUsage_Csmr_ACPaste: Int { get }
var kHIDUsage_Csmr_AC: Int { get }
var kHIDUsage_Csmr_ACFind: Int { get }
var kHIDUsage_Csmr_ACFindandReplace: Int { get }
var kHIDUsage_Csmr_ACSearch: Int { get }
var kHIDUsage_Csmr_ACGoTo: Int { get }
var kHIDUsage_Csmr_ACHome: Int { get }
var kHIDUsage_Csmr_ACBack: Int { get }
var kHIDUsage_Csmr_ACForward: Int { get }
var kHIDUsage_Csmr_ACStop: Int { get }
var kHIDUsage_Csmr_ACRefresh: Int { get }
var kHIDUsage_Csmr_ACPreviousLink: Int { get }
var kHIDUsage_Csmr_ACNextLink: Int { get }
var kHIDUsage_Csmr_ACBookmarks: Int { get }
var kHIDUsage_Csmr_ACHistory: Int { get }
var kHIDUsage_Csmr_ACSubscriptions: Int { get }
var kHIDUsage_Csmr_ACZoomIn: Int { get }
var kHIDUsage_Csmr_ACZoomOut: Int { get }
var kHIDUsage_Csmr_ACZoom: Int { get }
var kHIDUsage_Csmr_ACFullScreenView: Int { get }
var kHIDUsage_Csmr_ACNormalView: Int { get }
var kHIDUsage_Csmr_ACViewToggle: Int { get }
var kHIDUsage_Csmr_ACScrollUp: Int { get }
var kHIDUsage_Csmr_ACScrollDown: Int { get }
var kHIDUsage_Csmr_ACScroll: Int { get }
var kHIDUsage_Csmr_ACPanLeft: Int { get }
var kHIDUsage_Csmr_ACPanRight: Int { get }
var kHIDUsage_Csmr_ACPan: Int { get }
var kHIDUsage_Csmr_ACNewWindow: Int { get }
var kHIDUsage_Csmr_ACTileHorizontally: Int { get }
var kHIDUsage_Csmr_ACTileVertically: Int { get }
var kHIDUsage_Csmr_ACFormat: Int { get }
var kHIDUsage_Csmr_ACEdit: Int { get }
var kHIDUsage_Csmr_ACBold: Int { get }
var kHIDUsage_Csmr_ACItalics: Int { get }
var kHIDUsage_Csmr_ACUnderline: Int { get }
var kHIDUsage_Csmr_ACStrikethrough: Int { get }
var kHIDUsage_Csmr_ACSubscript: Int { get }
var kHIDUsage_Csmr_ACSuperscript: Int { get }
var kHIDUsage_Csmr_ACAllCaps: Int { get }
var kHIDUsage_Csmr_ACRotate: Int { get }
var kHIDUsage_Csmr_ACResize: Int { get }
var kHIDUsage_Csmr_ACFlipHorizontal: Int { get }
var kHIDUsage_Csmr_ACFlipVertical: Int { get }
var kHIDUsage_Csmr_ACMirrorHorizontal: Int { get }
var kHIDUsage_Csmr_ACMirrorVertical: Int { get }
var kHIDUsage_Csmr_ACFontSelect: Int { get }
var kHIDUsage_Csmr_ACFontColor: Int { get }
var kHIDUsage_Csmr_ACFontSize: Int { get }
var kHIDUsage_Csmr_ACJustifyLeft: Int { get }
var kHIDUsage_Csmr_ACJustifyCenterH: Int { get }
var kHIDUsage_Csmr_ACJustifyRight: Int { get }
var kHIDUsage_Csmr_ACJustifyBlockH: Int { get }
var kHIDUsage_Csmr_ACJustifyTop: Int { get }
var kHIDUsage_Csmr_ACJustifyCenterV: Int { get }
var kHIDUsage_Csmr_ACJustifyBottom: Int { get }
var kHIDUsage_Csmr_ACJustifyBlockV: Int { get }
var kHIDUsage_Csmr_ACIndentyDecrease: Int { get }
var kHIDUsage_Csmr_ACIndentyIncrease: Int { get }
var kHIDUsage_Csmr_ACNumberedList: Int { get }
var kHIDUsage_Csmr_ACRestartNumbering: Int { get }
var kHIDUsage_Csmr_ACBulletedList: Int { get }
var kHIDUsage_Csmr_ACPromote: Int { get }
var kHIDUsage_Csmr_ACDemote: Int { get }
var kHIDUsage_Csmr_ACYes: Int { get }
var kHIDUsage_Csmr_ACNo: Int { get }
var kHIDUsage_Csmr_ACCancel: Int { get }
var kHIDUsage_Csmr_ACCatalog: Int { get }
var kHIDUsage_Csmr_ACBuyOrCheckout: Int { get }
var kHIDUsage_Csmr_ACAddToCart: Int { get }
var kHIDUsage_Csmr_ACExpand: Int { get }
var kHIDUsage_Csmr_ACExpandAll: Int { get }
var kHIDUsage_Csmr_ACCollapse: Int { get }
var kHIDUsage_Csmr_ACCollapseAll: Int { get }
var kHIDUsage_Csmr_ACPrintPreview: Int { get }
var kHIDUsage_Csmr_ACPasteSpecial: Int { get }
var kHIDUsage_Csmr_ACInsertMode: Int { get }
var kHIDUsage_Csmr_ACDelete: Int { get }
var kHIDUsage_Csmr_ACLock: Int { get }
var kHIDUsage_Csmr_ACUnlock: Int { get }
var kHIDUsage_Csmr_ACProtect: Int { get }
var kHIDUsage_Csmr_ACUnprotect: Int { get }
var kHIDUsage_Csmr_ACAttachComment: Int { get }
var kHIDUsage_Csmr_ACDetachComment: Int { get }
var kHIDUsage_Csmr_ACViewComment: Int { get }
var kHIDUsage_Csmr_ACSelectWord: Int { get }
var kHIDUsage_Csmr_ACSelectSentence: Int { get }
var kHIDUsage_Csmr_ACSelectParagraph: Int { get }
var kHIDUsage_Csmr_ACSelectColumn: Int { get }
var kHIDUsage_Csmr_ACSelectRow: Int { get }
var kHIDUsage_Csmr_ACSelectTable: Int { get }
var kHIDUsage_Csmr_ACSelectObject: Int { get }
var kHIDUsage_Csmr_ACRedoOrRepeat: Int { get }
var kHIDUsage_Csmr_ACSort: Int { get }
var kHIDUsage_Csmr_ACSortAscending: Int { get }
var kHIDUsage_Csmr_ACSortDescending: Int { get }
var kHIDUsage_Csmr_ACFilter: Int { get }
var kHIDUsage_Csmr_ACSetClock: Int { get }
var kHIDUsage_Csmr_ACViewClock: Int { get }
var kHIDUsage_Csmr_ACSelectTimeZone: Int { get }
var kHIDUsage_Csmr_ACEditTimeZones: Int { get }
var kHIDUsage_Csmr_ACSetAlarm: Int { get }
var kHIDUsage_Csmr_ACClearAlarm: Int { get }
var kHIDUsage_Csmr_ACSnoozeAlarm: Int { get }
var kHIDUsage_Csmr_ACResetAlarm: Int { get }
var kHIDUsage_Csmr_ACSynchronize: Int { get }
var kHIDUsage_Csmr_ACSendOrReceive: Int { get }
var kHIDUsage_Csmr_ACSendTo: Int { get }
var kHIDUsage_Csmr_ACReply: Int { get }
var kHIDUsage_Csmr_ACReplyAll: Int { get }
var kHIDUsage_Csmr_ACForwardMessage: Int { get }
var kHIDUsage_Csmr_ACSend: Int { get }
var kHIDUsage_Csmr_ACAttachFile: Int { get }
var kHIDUsage_Csmr_ACUpload: Int { get }
var kHIDUsage_Csmr_ACDownload: Int { get }
var kHIDUsage_Csmr_ACSetBorders: Int { get }
var kHIDUsage_Csmr_ACInsertRow: Int { get }
var kHIDUsage_Csmr_ACInsertColumn: Int { get }
var kHIDUsage_Csmr_ACInsertFile: Int { get }
var kHIDUsage_Csmr_ACInsertPicture: Int { get }
var kHIDUsage_Csmr_ACInsertObject: Int { get }
var kHIDUsage_Csmr_ACInsertSymbol: Int { get }
var kHIDUsage_Csmr_ACSaveAndClose: Int { get }
var kHIDUsage_Csmr_ACRename: Int { get }
var kHIDUsage_Csmr_ACMerge: Int { get }
var kHIDUsage_Csmr_ACSplit: Int { get }
var kHIDUsage_Csmr_ACDistributeH: Int { get }
var kHIDUsage_Csmr_ACDistributeV: Int { get }
var kHIDUsage_Csmr_ACKeyboardLayoutSelect: Int { get }
var kHIDUsage_Csmr_ACNavigationGuidance: Int { get }
var kHIDUsage_Csmr_ACDesktopShowAllWindows: Int { get }
var kHIDUsage_Csmr_ACSoftKeyLeft: Int { get }
var kHIDUsage_Csmr_ACSoftKeyRight: Int { get }
var kHIDUsage_Csmr_ACDesktopShowAllApplications: Int { get }
var kHIDUsage_Csmr_ACIdleKeepAlive: Int { get }
var kHIDUsage_Csmr_ExtendedKeyboardAttributesCollection: Int { get }
var kHIDUsage_Csmr_KeyboardFormFactor: Int { get }
var kHIDUsage_Csmr_KeyboardKeyType: Int { get }
var kHIDUsage_Csmr_KeyboardPhysicalLayout: Int { get }
var kHIDUsage_Csmr_VendorSpecificKeyboardPhysicalLayout: Int { get }
var kHIDUsage_Csmr_KeyboardIETFLanguageTagIndex: Int { get }
var kHIDUsage_Csmr_ImplementedKeyboardInputAssistControls: Int { get }
var kHIDUsage_Csmr_KeyboardInputAssistPrevious: Int { get }
var kHIDUsage_Csmr_KeyboardInputAssistNext: Int { get }
var kHIDUsage_Csmr_KeyboardInputAssistPreviousGroup: Int { get }
var kHIDUsage_Csmr_KeyboardInputAssistNextGroup: Int { get }
var kHIDUsage_Csmr_KeyboardInputAssistAccept: Int { get }
var kHIDUsage_Csmr_KeyboardInputAssistCancel: Int { get }
var kHIDUsage_Csmr_ContactEdited: Int { get }
var kHIDUsage_Csmr_ContactAdded: Int { get }
var kHIDUsage_Csmr_ContactRecordActive: Int { get }
var kHIDUsage_Csmr_ContactIndex: Int { get }
var kHIDUsage_Csmr_ContactNickname: Int { get }
var kHIDUsage_Csmr_ContactFirstName: Int { get }
var kHIDUsage_Csmr_ContactLastName: Int { get }
var kHIDUsage_Csmr_ContactFullName: Int { get }
var kHIDUsage_Csmr_ContactPhoneNumberPersonal: Int { get }
var kHIDUsage_Csmr_ContactPhoneNumberBusiness: Int { get }
var kHIDUsage_Csmr_ContactPhoneNumberMobile: Int { get }
var kHIDUsage_Csmr_ContactPhoneNumberPager: Int { get }
var kHIDUsage_Csmr_ContactPhoneNumberFax: Int { get }
var kHIDUsage_Csmr_ContactPhoneNumberOther: Int { get }
var kHIDUsage_Csmr_ContactEmailPersonal: Int { get }
var kHIDUsage_Csmr_ContactEmailBusiness: Int { get }
var kHIDUsage_Csmr_ContactEmailOther: Int { get }
var kHIDUsage_Csmr_ContactEmailMain: Int { get }
var kHIDUsage_Csmr_ContactSpeedDialNumber: Int { get }
var kHIDUsage_Csmr_ContactStatusFlag: Int { get }
var kHIDUsage_Csmr_ContactMisc: Int { get }
var kHIDUsage_Csmr_Reserved: Int { get }
var kHIDUsage_Dig_Digitizer: Int { get }
var kHIDUsage_Dig_Pen: Int { get }
var kHIDUsage_Dig_LightPen: Int { get }
var kHIDUsage_Dig_TouchScreen: Int { get }
var kHIDUsage_Dig_TouchPad: Int { get }
var kHIDUsage_Dig_WhiteBoard: Int { get }
var kHIDUsage_Dig_CoordinateMeasuringMachine: Int { get }
var kHIDUsage_Dig_3DDigitizer: Int { get }
var kHIDUsage_Dig_StereoPlotter: Int { get }
var kHIDUsage_Dig_ArticulatedArm: Int { get }
var kHIDUsage_Dig_Armature: Int { get }
var kHIDUsage_Dig_MultiplePointDigitizer: Int { get }
var kHIDUsage_Dig_FreeSpaceWand: Int { get }
var kHIDUsage_Dig_DeviceConfiguration: Int { get }
var kHIDUsage_Dig_Stylus: Int { get }
var kHIDUsage_Dig_Puck: Int { get }
var kHIDUsage_Dig_Finger: Int { get }
var kHIDUsage_Dig_DeviceSettings: Int { get }
var kHIDUsage_Dig_GestureCharacter: Int { get }
var kHIDUsage_Dig_TipPressure: Int { get }
var kHIDUsage_Dig_BarrelPressure: Int { get }
var kHIDUsage_Dig_InRange: Int { get }
var kHIDUsage_Dig_Touch: Int { get }
var kHIDUsage_Dig_Untouch: Int { get }
var kHIDUsage_Dig_Tap: Int { get }
var kHIDUsage_Dig_Quality: Int { get }
var kHIDUsage_Dig_DataValid: Int { get }
var kHIDUsage_Dig_TransducerIndex: Int { get }
var kHIDUsage_Dig_TabletFunctionKeys: Int { get }
var kHIDUsage_Dig_ProgramChangeKeys: Int { get }
var kHIDUsage_Dig_BatteryStrength: Int { get }
var kHIDUsage_Dig_Invert: Int { get }
var kHIDUsage_Dig_XTilt: Int { get }
var kHIDUsage_Dig_YTilt: Int { get }
var kHIDUsage_Dig_Azimuth: Int { get }
var kHIDUsage_Dig_Altitude: Int { get }
var kHIDUsage_Dig_Twist: Int { get }
var kHIDUsage_Dig_TipSwitch: Int { get }
var kHIDUsage_Dig_SecondaryTipSwitch: Int { get }
var kHIDUsage_Dig_BarrelSwitch: Int { get }
var kHIDUsage_Dig_Eraser: Int { get }
var kHIDUsage_Dig_TabletPick: Int { get }
var kHIDUsage_Dig_TouchValid: Int { get }
var kHIDUsage_Dig_Width: Int { get }
var kHIDUsage_Dig_Height: Int { get }
var kHIDUsage_Dig_ContactIdentifier: Int { get }
var kHIDUsage_Dig_DeviceMode: Int { get }
var kHIDUsage_Dig_DeviceIdentifier: Int { get }
var kHIDUsage_Dig_ContactCount: Int { get }
var kHIDUsage_Dig_ContactCountMaximum: Int { get }
var kHIDUsage_Dig_RelativeScanTime: Int { get }
var kHIDUsage_Dig_SurfaceSwitch: Int { get }
var kHIDUsage_Dig_GestureCharacterEnable: Int { get }
var kHIDUsage_Dig_GestureCharacterQuality: Int { get }
var kHIDUsage_Dig_GestureCharacterDataLength: Int { get }
var kHIDUsage_Dig_GestureCharacterData: Int { get }
var kHIDUsage_Dig_GestureCharacterEncoding: Int { get }
var kHIDUsage_Dig_GestureCharacterEncodingUTF8: Int { get }
var kHIDUsage_Dig_GestureCharacterEncodingUTF16LE: Int { get }
var kHIDUsage_Dig_GestureCharacterEncodingUTF16BE: Int { get }
var kHIDUsage_Dig_GestureCharacterEncodingUTF32LE: Int { get }
var kHIDUsage_Dig_GestureCharacterEncodingUTF32BE: Int { get }
var kHIDUsage_Dig_ReportRate: Int { get }
var kHIDUsage_Dig_Reserved: Int { get }
var kHIDUsage_Haptics_SimpleHapticController: Int { get }
var kHIDUsage_Haptics_WaveformList: Int { get }
var kHIDUsage_Haptics_DurationList: Int { get }
var kHIDUsage_Haptics_AutoTrigger: Int { get }
var kHIDUsage_Haptics_ManualTrigger: Int { get }
var kHIDUsage_Haptics_AutoTriggerAssociatedControl: Int { get }
var kHIDUsage_Haptics_Intensity: Int { get }
var kHIDUsage_Haptics_RepeatCount: Int { get }
var kHIDUsage_Haptics_RetriggerPeriod: Int { get }
var kHIDUsage_Haptics_WaveformVendorPage: Int { get }
var kHIDUsage_Haptics_WaveformVendorID: Int { get }
var kHIDUsage_Haptics_WaveformCutoffTime: Int { get }
var kHIDUsage_Haptics_WaveformNone: Int { get }
var kHIDUsage_Haptics_WaveformStop: Int { get }
var kHIDUsage_Haptics_WaveformClick: Int { get }
var kHIDUsage_Haptics_WaveformBuzzContinuous: Int { get }
var kHIDUsage_Haptics_WaveformRumbleContinuous: Int { get }
var kHIDUsage_Haptics_WaveformPress: Int { get }
var kHIDUsage_Haptics_WaveformRelease: Int { get }
var kHIDUsage_Haptics_VendorWaveformFirst: Int { get }
var kHIDUsage_Haptics_VendorWaveformLast: Int { get }
var kHIDUsage_PID_PhysicalInterfaceDevice: Int { get }
var kHIDUsage_PID_Normal: Int { get }
var kHIDUsage_PID_SetEffectReport: Int { get }
var kHIDUsage_PID_EffectBlockIndex: Int { get }
var kHIDUsage_PID_ParamBlockOffset: Int { get }
var kHIDUsage_PID_ROM_Flag: Int { get }
var kHIDUsage_PID_EffectType: Int { get }
var kHIDUsage_PID_ET_ConstantForce: Int { get }
var kHIDUsage_PID_ET_Ramp: Int { get }
var kHIDUsage_PID_ET_CustomForceData: Int { get }
var kHIDUsage_PID_ET_Square: Int { get }
var kHIDUsage_PID_ET_Sine: Int { get }
var kHIDUsage_PID_ET_Triangle: Int { get }
var kHIDUsage_PID_ET_SawtoothUp: Int { get }
var kHIDUsage_PID_ET_SawtoothDown: Int { get }
var kHIDUsage_PID_ET_Spring: Int { get }
var kHIDUsage_PID_ET_Damper: Int { get }
var kHIDUsage_PID_ET_Inertia: Int { get }
var kHIDUsage_PID_ET_Friction: Int { get }
var kHIDUsage_PID_Duration: Int { get }
var kHIDUsage_PID_SamplePeriod: Int { get }
var kHIDUsage_PID_Gain: Int { get }
var kHIDUsage_PID_TriggerButton: Int { get }
var kHIDUsage_PID_TriggerRepeatInterval: Int { get }
var kHIDUsage_PID_AxesEnable: Int { get }
var kHIDUsage_PID_DirectionEnable: Int { get }
var kHIDUsage_PID_Direction: Int { get }
var kHIDUsage_PID_TypeSpecificBlockOffset: Int { get }
var kHIDUsage_PID_BlockType: Int { get }
var kHIDUsage_PID_SetEnvelopeReport: Int { get }
var kHIDUsage_PID_AttackLevel: Int { get }
var kHIDUsage_PID_AttackTime: Int { get }
var kHIDUsage_PID_FadeLevel: Int { get }
var kHIDUsage_PID_FadeTime: Int { get }
var kHIDUsage_PID_SetConditionReport: Int { get }
var kHIDUsage_PID_CP_Offset: Int { get }
var kHIDUsage_PID_PositiveCoefficient: Int { get }
var kHIDUsage_PID_NegativeCoefficient: Int { get }
var kHIDUsage_PID_PositiveSaturation: Int { get }
var kHIDUsage_PID_NegativeSaturation: Int { get }
var kHIDUsage_PID_DeadBand: Int { get }
var kHIDUsage_PID_DownloadForceSample: Int { get }
var kHIDUsage_PID_IsochCustomForceEnable: Int { get }
var kHIDUsage_PID_CustomForceDataReport: Int { get }
var kHIDUsage_PID_CustomForceData: Int { get }
var kHIDUsage_PID_CustomForceVendorDefinedData: Int { get }
var kHIDUsage_PID_SetCustomForceReport: Int { get }
var kHIDUsage_PID_CustomForceDataOffset: Int { get }
var kHIDUsage_PID_SampleCount: Int { get }
var kHIDUsage_PID_SetPeriodicReport: Int { get }
var kHIDUsage_PID_Offset: Int { get }
var kHIDUsage_PID_Magnitude: Int { get }
var kHIDUsage_PID_Phase: Int { get }
var kHIDUsage_PID_Period: Int { get }
var kHIDUsage_PID_SetConstantForceReport: Int { get }
var kHIDUsage_PID_SetRampForceReport: Int { get }
var kHIDUsage_PID_RampStart: Int { get }
var kHIDUsage_PID_RampEnd: Int { get }
var kHIDUsage_PID_EffectOperationReport: Int { get }
var kHIDUsage_PID_EffectOperation: Int { get }
var kHIDUsage_PID_OpEffectStart: Int { get }
var kHIDUsage_PID_OpEffectStartSolo: Int { get }
var kHIDUsage_PID_OpEffectStop: Int { get }
var kHIDUsage_PID_LoopCount: Int { get }
var kHIDUsage_PID_DeviceGainReport: Int { get }
var kHIDUsage_PID_DeviceGain: Int { get }
var kHIDUsage_PID_PoolReport: Int { get }
var kHIDUsage_PID_RAM_PoolSize: Int { get }
var kHIDUsage_PID_ROM_PoolSize: Int { get }
var kHIDUsage_PID_ROM_EffectBlockCount: Int { get }
var kHIDUsage_PID_SimultaneousEffectsMax: Int { get }
var kHIDUsage_PID_PoolAlignment: Int { get }
var kHIDUsage_PID_PoolMoveReport: Int { get }
var kHIDUsage_PID_MoveSource: Int { get }
var kHIDUsage_PID_MoveDestination: Int { get }
var kHIDUsage_PID_MoveLength: Int { get }
var kHIDUsage_PID_BlockLoadReport: Int { get }
var kHIDUsage_PID_BlockLoadStatus: Int { get }
var kHIDUsage_PID_BlockLoadSuccess: Int { get }
var kHIDUsage_PID_BlockLoadFull: Int { get }
var kHIDUsage_PID_BlockLoadError: Int { get }
var kHIDUsage_PID_BlockHandle: Int { get }
var kHIDUsage_PID_BlockFreeReport: Int { get }
var kHIDUsage_PID_TypeSpecificBlockHandle: Int { get }
var kHIDUsage_PID_StateReport: Int { get }
var kHIDUsage_PID_EffectPlaying: Int { get }
var kHIDUsage_PID_DeviceControlReport: Int { get }
var kHIDUsage_PID_DeviceControl: Int { get }
var kHIDUsage_PID_DC_EnableActuators: Int { get }
var kHIDUsage_PID_DC_DisableActuators: Int { get }
var kHIDUsage_PID_DC_StopAllEffects: Int { get }
var kHIDUsage_PID_DC_DeviceReset: Int { get }
var kHIDUsage_PID_DC_DevicePause: Int { get }
var kHIDUsage_PID_DC_DeviceContinue: Int { get }
var kHIDUsage_PID_DevicePaused: Int { get }
var kHIDUsage_PID_ActuatorsEnabled: Int { get }
var kHIDUsage_PID_SafetySwitch: Int { get }
var kHIDUsage_PID_ActuatorOverrideSwitch: Int { get }
var kHIDUsage_PID_ActuatorPower: Int { get }
var kHIDUsage_PID_StartDelay: Int { get }
var kHIDUsage_PID_ParameterBlockSize: Int { get }
var kHIDUsage_PID_DeviceManagedPool: Int { get }
var kHIDUsage_PID_SharedParameterBlocks: Int { get }
var kHIDUsage_PID_CreateNewEffectReport: Int { get }
var kHIDUsage_PID_RAM_PoolAvailable: Int { get }
var kHIDUsage_PID_Reserved: Int { get }
var kHIDUsage_AD_AlphanumericDisplay: Int { get }
var kHIDUsage_AD_DisplayAttributesReport: Int { get }
var kHIDUsage_AD_ASCIICharacterSet: Int { get }
var kHIDUsage_AD_DataReadBack: Int { get }
var kHIDUsage_AD_FontReadBack: Int { get }
var kHIDUsage_AD_DisplayControlReport: Int { get }
var kHIDUsage_AD_ClearDisplay: Int { get }
var kHIDUsage_AD_DisplayEnable: Int { get }
var kHIDUsage_AD_ScreenSaverDelay: Int { get }
var kHIDUsage_AD_ScreenSaverEnable: Int { get }
var kHIDUsage_AD_VerticalScroll: Int { get }
var kHIDUsage_AD_HorizontalScroll: Int { get }
var kHIDUsage_AD_CharacterReport: Int { get }
var kHIDUsage_AD_DisplayData: Int { get }
var kHIDUsage_AD_DisplayStatus: Int { get }
var kHIDUsage_AD_StatNotReady: Int { get }
var kHIDUsage_AD_StatReady: Int { get }
var kHIDUsage_AD_ErrNotaloadablecharacter: Int { get }
var kHIDUsage_AD_ErrFontdatacannotberead: Int { get }
var kHIDUsage_AD_CursorPositionReport: Int { get }
var kHIDUsage_AD_Row: Int { get }
var kHIDUsage_AD_Column: Int { get }
var kHIDUsage_AD_Rows: Int { get }
var kHIDUsage_AD_Columns: Int { get }
var kHIDUsage_AD_CursorPixelPositioning: Int { get }
var kHIDUsage_AD_CursorMode: Int { get }
var kHIDUsage_AD_CursorEnable: Int { get }
var kHIDUsage_AD_CursorBlink: Int { get }
var kHIDUsage_AD_FontReport: Int { get }
var kHIDUsage_AD_FontData: Int { get }
var kHIDUsage_AD_CharacterWidth: Int { get }
var kHIDUsage_AD_CharacterHeight: Int { get }
var kHIDUsage_AD_CharacterSpacingHorizontal: Int { get }
var kHIDUsage_AD_CharacterSpacingVertical: Int { get }
var kHIDUsage_AD_UnicodeCharacterSet: Int { get }
var kHIDUsage_AD_Reserved: Int { get }
var kHIDUsage_Snsr_Undefined: Int { get }
var kHIDUsage_Snsr_Sensor: Int { get }
var kHIDUsage_Snsr_Biometric: Int { get }
var kHIDUsage_Snsr_Biometric_HumanPresence: Int { get }
var kHIDUsage_Snsr_Biometric_HumanProximity: Int { get }
var kHIDUsage_Snsr_Biometric_HumanTouch: Int { get }
var kHIDUsage_Snsr_Electrical: Int { get }
var kHIDUsage_Snsr_Electrical_Capacitance: Int { get }
var kHIDUsage_Snsr_Electrical_Current: Int { get }
var kHIDUsage_Snsr_Electrical_Power: Int { get }
var kHIDUsage_Snsr_Electrical_Inductance: Int { get }
var kHIDUsage_Snsr_Electrical_Resistance: Int { get }
var kHIDUsage_Snsr_Electrical_Voltage: Int { get }
var kHIDUsage_Snsr_Electrical_Potentiometer: Int { get }
var kHIDUsage_Snsr_Electrical_Frequency: Int { get }
var kHIDUsage_Snsr_Electrical_Period: Int { get }
var kHIDUsage_Snsr_Environmental: Int { get }
var kHIDUsage_Snsr_Environmental_AtmosphericPressure: Int { get }
var kHIDUsage_Snsr_Environmental_Humidity: Int { get }
var kHIDUsage_Snsr_Environmental_Temperature: Int { get }
var kHIDUsage_Snsr_Environmental_WindDirection: Int { get }
var kHIDUsage_Snsr_Environmental_WindSpeed: Int { get }
var kHIDUsage_Snsr_Light: Int { get }
var kHIDUsage_Snsr_Light_AmbientLight: Int { get }
var kHIDUsage_Snsr_Light_ConsumerInfrared: Int { get }
var kHIDUsage_Snsr_Location: Int { get }
var kHIDUsage_Snsr_Location_Broadcast: Int { get }
var kHIDUsage_Snsr_Location_DeadReckoning: Int { get }
var kHIDUsage_Snsr_Location_GPS: Int { get }
var kHIDUsage_Snsr_Location_Lookup: Int { get }
var kHIDUsage_Snsr_Location_Other: Int { get }
var kHIDUsage_Snsr_Location_Static: Int { get }
var kHIDUsage_Snsr_Location_Triangulation: Int { get }
var kHIDUsage_Snsr_Mechanical: Int { get }
var kHIDUsage_Snsr_Mechanical_BooleanSwitch: Int { get }
var kHIDUsage_Snsr_Mechanical_BooleanSwitchArray: Int { get }
var kHIDUsage_Snsr_Mechanical_MultivalueSwitch: Int { get }
var kHIDUsage_Snsr_Mechanical_Force: Int { get }
var kHIDUsage_Snsr_Mechanical_Pressure: Int { get }
var kHIDUsage_Snsr_Mechanical_Strain: Int { get }
var kHIDUsage_Snsr_Mechanical_Weight: Int { get }
var kHIDUsage_Snsr_Mechanical_HapticVibrator: Int { get }
var kHIDUsage_Snsr_Mechanical_HallEffectSwitch: Int { get }
var kHIDUsage_Snsr_Motion: Int { get }
var kHIDUsage_Snsr_Motion_Accelerometer1D: Int { get }
var kHIDUsage_Snsr_Motion_Accelerometer2D: Int { get }
var kHIDUsage_Snsr_Motion_Accelerometer3D: Int { get }
var kHIDUsage_Snsr_Motion_Gyrometer1D: Int { get }
var kHIDUsage_Snsr_Motion_Gyrometer2D: Int { get }
var kHIDUsage_Snsr_Motion_Gyrometer3D: Int { get }
var kHIDUsage_Snsr_Motion_MotionDetector: Int { get }
var kHIDUsage_Snsr_Motion_Speedometer: Int { get }
var kHIDUsage_Snsr_Motion_Accelerometer: Int { get }
var kHIDUsage_Snsr_Motion_Gyrometer: Int { get }
var kHIDUsage_Snsr_Orientation: Int { get }
var kHIDUsage_Snsr_Orientation_Compass1D: Int { get }
var kHIDUsage_Snsr_Orientation_Compass2D: Int { get }
var kHIDUsage_Snsr_Orientation_Compass3D: Int { get }
var kHIDUsage_Snsr_Orientation_Inclinometer1D: Int { get }
var kHIDUsage_Snsr_Orientation_Inclinometer2D: Int { get }
var kHIDUsage_Snsr_Orientation_Inclinometer3D: Int { get }
var kHIDUsage_Snsr_Orientation_Distance1D: Int { get }
var kHIDUsage_Snsr_Orientation_Distance2D: Int { get }
var kHIDUsage_Snsr_Orientation_Distance3D: Int { get }
var kHIDUsage_Snsr_Orientation_DeviceOrientation: Int { get }
var kHIDUsage_Snsr_Orientation_CompassD: Int { get }
var kHIDUsage_Snsr_Orientation_InclinometerD: Int { get }
var kHIDUsage_Snsr_Orientation_DistanceD: Int { get }
var kHIDUsage_Snsr_Scanner: Int { get }
var kHIDUsage_Snsr_Scanner_Barcode: Int { get }
var kHIDUsage_Snsr_Scanner_RFID: Int { get }
var kHIDUsage_Snsr_Scanner_NFC: Int { get }
var kHIDUsage_Snsr_Time: Int { get }
var kHIDUsage_Snsr_Time_AlarmTimer: Int { get }
var kHIDUsage_Snsr_Time_RealTimeClock: Int { get }
var kHIDUsage_Snsr_Other: Int { get }
var kHIDUsage_Snsr_Other_Custom: Int { get }
var kHIDUsage_Snsr_Other_Generic: Int { get }
var kHIDUsage_Snsr_Other_GenericEnumerator: Int { get }
var kHIDUsage_Snsr_Modifier_None: Int { get }
var kHIDUsage_Snsr_Modifier_ChangeSensitivityAbsolute: Int { get }
var kHIDUsage_Snsr_Modifier_Max: Int { get }
var kHIDUsage_Snsr_Modifier_Min: Int { get }
var kHIDUsage_Snsr_Modifier_Accuracy: Int { get }
var kHIDUsage_Snsr_Modifier_Resolution: Int { get }
var kHIDUsage_Snsr_Modifier_ThresholdHigh: Int { get }
var kHIDUsage_Snsr_Modifier_ThresholdLow: Int { get }
var kHIDUsage_Snsr_Modifier_CalibrationOffset: Int { get }
var kHIDUsage_Snsr_Modifier_CalibrationMultiplier: Int { get }
var kHIDUsage_Snsr_Modifier_ReportInterval: Int { get }
var kHIDUsage_Snsr_Modifier_FrequencyMax: Int { get }
var kHIDUsage_Snsr_Modifier_PeriodMax: Int { get }
var kHIDUsage_Snsr_Modifier_ChangeSensitivityPercentRange: Int { get }
var kHIDUsage_Snsr_Modifier_ChangeSensitivityPercentRelative: Int { get }
var kHIDUsage_Snsr_Modifier_VendorDefined: Int { get }
var kHIDUsage_Snsr_Event: Int { get }
var kHIDUsage_Snsr_Event_SensorState: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent: Int { get }
var kHIDUsage_Snsr_Event_SensorState_Undefined: Int { get }
var kHIDUsage_Snsr_Event_SensorState_Ready: Int { get }
var kHIDUsage_Snsr_Event_SensorState_NotAvailable: Int { get }
var kHIDUsage_Snsr_Event_SensorState_NoData: Int { get }
var kHIDUsage_Snsr_Event_SensorState_Initializing: Int { get }
var kHIDUsage_Snsr_Event_SensorState_AccessDenied: Int { get }
var kHIDUsage_Snsr_Event_SensorState_Error: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_Unknown: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_StateChanged: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_PropertyChanged: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_DataUpdated: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_PollResponse: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_ChangeSensitivity: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_RangeMaxReached: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_RangeMinReached: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_HighThresholdCrossUp: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_HighThresholdCrossDown: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_LowThresholdCrossUp: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_LowThresholdCrossDown: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_ZeroThresholdCrossUp: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_ZeroThresholdCrossDown: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_PeriodExceeded: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_FrequencyExceeded: Int { get }
var kHIDUsage_Snsr_Event_SensorEvent_ComplexTrigger: Int { get }
var kHIDUsage_Snsr_Property: Int { get }
var kHIDUsage_Snsr_Property_FriendlyName: Int { get }
var kHIDUsage_Snsr_Property_PersistentUniqueID: Int { get }
var kHIDUsage_Snsr_Property_SensorStatus: Int { get }
var kHIDUsage_Snsr_Property_MinimumReportInterval: Int { get }
var kHIDUsage_Snsr_Property_Manufacturer: Int { get }
var kHIDUsage_Snsr_Property_Model: Int { get }
var kHIDUsage_Snsr_Property_SerialNumber: Int { get }
var kHIDUsage_Snsr_Property_Description: Int { get }
var kHIDUsage_Snsr_Property_ConnectionType: Int { get }
var kHIDUsage_Snsr_Property_DevicePath: Int { get }
var kHIDUsage_Snsr_Property_HardwareRevision: Int { get }
var kHIDUsage_Snsr_Property_FirmwareVersion: Int { get }
var kHIDUsage_Snsr_Property_ReleaseData: Int { get }
var kHIDUsage_Snsr_Property_ReportInterval: Int { get }
var kHIDUsage_Snsr_Property_ChangeSensitivityAbsolute: Int { get }
var kHIDUsage_Snsr_Property_ChangeSensitivityPercentRange: Int { get }
var kHIDUsage_Snsr_Property_ChangeSensitivityPercentRelative: Int { get }
var kHIDUsage_Snsr_Property_Accuracy: Int { get }
var kHIDUsage_Snsr_Property_Resolution: Int { get }
var kHIDUsage_Snsr_Property_Maximum: Int { get }
var kHIDUsage_Snsr_Property_Minimum: Int { get }
var kHIDUsage_Snsr_Property_ReportingState: Int { get }
var kHIDUsage_Snsr_Property_SamplingRate: Int { get }
var kHIDUsage_Snsr_Property_ResponseCurve: Int { get }
var kHIDUsage_Snsr_Property_PowerState: Int { get }
var kHIDUsage_Snsr_Property_MaxFIFOEvents: Int { get }
var kHIDUsage_Snsr_Property_ReportLatency: Int { get }
var kHIDUsage_Snsr_Property_ConnectionType_Integrated: Int { get }
var kHIDUsage_Snsr_Property_ConnectionType_Attached: Int { get }
var kHIDUsage_Snsr_Property_ConnectionType_External: Int { get }
var kHIDUsage_Snsr_Property_ReportingState_NoEvents: Int { get }
var kHIDUsage_Snsr_Property_ReportingState_AllEvents: Int { get }
var kHIDUsage_Snsr_Property_ReportingState_ThresholdEvents: Int { get }
var kHIDUsage_Snsr_Property_ReportingState_WakeNoEvents: Int { get }
var kHIDUsage_Snsr_Property_ReportingState_WakeAllEvents: Int { get }
var kHIDUsage_Snsr_Property_ReportingState_WakeThresholdEvents: Int { get }
var kHIDUsage_Snsr_Property_PowerState_Undefined: Int { get }
var kHIDUsage_Snsr_Property_PowerState_D0_FullPower: Int { get }
var kHIDUsage_Snsr_Property_PowerState_D1_LowPower: Int { get }
var kHIDUsage_Snsr_Property_PowerState_D2_Standby: Int { get }
var kHIDUsage_Snsr_Property_PowerState_D3_Sleep: Int { get }
var kHIDUsage_Snsr_Property_PowerState_D4_PowerOff: Int { get }
var kHIDUsage_Snsr_Light_Illuminance: Int { get }
var kHIDUsage_Snsr_Data_Location: Int { get }
var kHIDUsage_Snsr_Data_Location_Reserved: Int { get }
var kHIDUsage_Snsr_Data_Location_AltitudeAntennaSeaLevel: Int { get }
var kHIDUsage_Snsr_Data_Location_DifferentialReferenceStationID: Int { get }
var kHIDUsage_Snsr_Data_Location_AltitudeEllipsoidError: Int { get }
var kHIDUsage_Snsr_Data_Location_AltitudeEllipsoid: Int { get }
var kHIDUsage_Snsr_Data_Location_AltitudeSeaLevelError: Int { get }
var kHIDUsage_Snsr_Data_Location_AltitudeSeaLevel: Int { get }
var kHIDUsage_Snsr_Data_Location_DifferentialGPSDataAge: Int { get }
var kHIDUsage_Snsr_Data_Location_ErrorRadius: Int { get }
var kHIDUsage_Snsr_Data_Location_FixQuality: Int { get }
var kHIDUsage_Snsr_Data_Location_FixQualityNoFix: Int { get }
var kHIDUsage_Snsr_Data_Location_FixQualityGPS: Int { get }
var kHIDUsage_Snsr_Data_Location_FixQualityDGPS: Int { get }
var kHIDUsage_Snsr_Data_Location_FixType: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeNoFix: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeGPSSPSMode: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeDGPSSPSMode: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeGPSPPSMode: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeRealTimeKinematic: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeFloatRTK: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeEstimated: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeManualInputMode: Int { get }
var kHIDUsage_Snsr_Data_Location_FixTypeSimulatorMode: Int { get }
var kHIDUsage_Snsr_Data_Location_GeoidalSeparation: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSOperationMode: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSOperationModeManual: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSOperationModeAutomatic: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionMode: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionModeAutonomous: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionModeDGPS: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionModeEstimated: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionModeManualInput: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionModeSimulator: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSSelectionModeDataNotValid: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSStatus: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSStatusDataValid: Int { get }
var kHIDUsage_Snsr_Data_Location_GPSStatusDataNotValid: Int { get }
var kHIDUsage_Snsr_Data_Location_PositionDilutionOfPrecision: Int { get }
var kHIDUsage_Snsr_Data_Location_HorizontalDilutionOfPrecision: Int { get }
var kHIDUsage_Snsr_Data_Location_VerticalDilutionOfPrecision: Int { get }
var kHIDUsage_Snsr_Data_Location_Latitude: Int { get }
var kHIDUsage_Snsr_Data_Location_Longitude: Int { get }
var kHIDUsage_Snsr_Data_Location_TrueHeading: Int { get }
var kHIDUsage_Snsr_Data_Location_MagneticHeading: Int { get }
var kHIDUsage_Snsr_Data_Location_MagneticVariation: Int { get }
var kHIDUsage_Snsr_Data_Location_Speed: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesInView: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesInViewAzimuth: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesInViewElevation: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesInViewIDs: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesInViewPRNs: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesInViewSNRatios: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesUsedCount: Int { get }
var kHIDUsage_Snsr_Data_Location_SatellitesUsedPRNs: Int { get }
var kHIDUsage_Snsr_Data_Location_NMEASentence: Int { get }
var kHIDUsage_Snsr_Data_Location_AddressLine1: Int { get }
var kHIDUsage_Snsr_Data_Location_AddressLine2: Int { get }
var kHIDUsage_Snsr_Data_Location_City: Int { get }
var kHIDUsage_Snsr_Data_Location_StateOrProvince: Int { get }
var kHIDUsage_Snsr_Data_Location_CountryOrRegion: Int { get }
var kHIDUsage_Snsr_Data_Location_PostalCode: Int { get }
var kHIDUsage_Snsr_Property_Location: Int { get }
var kHIDUsage_Snsr_Property_Location_DesiredAccuracy: Int { get }
var kHIDUsage_Snsr_Property_Location_AccuracyDefault: Int { get }
var kHIDUsage_Snsr_Property_Location_AccuracyHigh: Int { get }
var kHIDUsage_Snsr_Property_Location_AccuracyMedium: Int { get }
var kHIDUsage_Snsr_Property_Location_AccuracyLow: Int { get }
var kHIDUsage_Snsr_Data_Environmental: Int { get }
var kHIDUsage_Snsr_Data_Environmental_AtmosphericPressure: Int { get }
var kHIDUsage_Snsr_Data_Environmental_Reserved: Int { get }
var kHIDUsage_Snsr_Data_Environmental_RelativeHumidity: Int { get }
var kHIDUsage_Snsr_Data_Environmental_Temperature: Int { get }
var kHIDUsage_Snsr_Data_Environmental_WindDirection: Int { get }
var kHIDUsage_Snsr_Data_Environmental_WindSpeed: Int { get }
var kHIDUsage_Snsr_Property_Environmental: Int { get }
var kHIDUsage_Snsr_Property_Environmental_ReferencePressure: Int { get }
var kHIDUsage_Snsr_Data_Motion: Int { get }
var kHIDUsage_Snsr_Data_Motion_State: Int { get }
var kHIDUsage_Snsr_Data_Motion_Acceleration: Int { get }
var kHIDUsage_Snsr_Data_Motion_AccelerationAxisX: Int { get }
var kHIDUsage_Snsr_Data_Motion_AccelerationAxisY: Int { get }
var kHIDUsage_Snsr_Data_Motion_AccelerationAxisZ: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularVelocity: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularVelocityXAxis: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularVelocityYAxis: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularVelocityZAxis: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularPosition: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularPositionXAxis: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularPositionYAxis: Int { get }
var kHIDUsage_Snsr_Data_Motion_AngularPositionZAxis: Int { get }
var kHIDUsage_Snsr_Data_Motion_Speed: Int { get }
var kHIDUsage_Snsr_Data_Motion_Intensity: Int { get }
var kHIDUsage_Snsr_Data_Orientation: Int { get }
var kHIDUsage_Snsr_Data_Orientation_Heading: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingXAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingYAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingZAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingCompensatedMagneticNorth: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingCompensatedTrueNorth: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingMagneticNorth: Int { get }
var kHIDUsage_Snsr_Data_Orientation_HeadingTrueNorth: Int { get }
var kHIDUsage_Snsr_Data_Orientation_Distance: Int { get }
var kHIDUsage_Snsr_Data_Orientation_DistanceXAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_DistanceYAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_DistanceZAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_DistanceOutOfRange: Int { get }
var kHIDUsage_Snsr_Data_Orientation_Tilt: Int { get }
var kHIDUsage_Snsr_Data_Orientation_TiltXAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_TiltYAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_TiltZAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_RotationMatrix: Int { get }
var kHIDUsage_Snsr_Data_Orientation_Quaternion: Int { get }
var kHIDUsage_Snsr_Data_Orientation_MagneticFlux: Int { get }
var kHIDUsage_Snsr_Data_Orientation_MagneticFluxXAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_MagneticFluxYAxis: Int { get }
var kHIDUsage_Snsr_Data_Orientation_MagneticFluxZAxis: Int { get }
var kHIDUsage_Snsr_Data_Mechanical: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_BooleanSwitchState: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_BooleanSwitchArrayStates: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_MultivalueSwitchValue: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_Force: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_AbsolutePressure: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_GaugePressure: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_Strain: Int { get }
var kHIDUsage_Snsr_Data_Mechanical_Weight: Int { get }
var kHIDUsage_Snsr_Property_Mechanical: Int { get }
var kHIDUsage_Snsr_Property_Mechanical_VibrationState: Int { get }
var kHIDUsage_Snsr_Property_Mechanical_ForwardVibrationSpeed: Int { get }
var kHIDUsage_Snsr_Property_Mechanical_BackwardVibrationSpeed: Int { get }
var kHIDUsage_Snsr_Data_Biometric: Int { get }
var kHIDUsage_Snsr_Data_Biometric_HumanPresence: Int { get }
var kHIDUsage_Snsr_Data_Biometric_HumanProximityRange: Int { get }
var kHIDUsage_Snsr_Data_Biometric_HumanProximityOutOfRange: Int { get }
var kHIDUsage_Snsr_Data_Biometric_HumanTouchState: Int { get }
var kHIDUsage_Snsr_Data_Light: Int { get }
var kHIDUsage_Snsr_Data_Light_Illuminance: Int { get }
var kHIDUsage_Snsr_Data_Light_ColorTemperature: Int { get }
var kHIDUsage_Snsr_Data_Light_Chromaticity: Int { get }
var kHIDUsage_Snsr_Data_Light_ChromaticityX: Int { get }
var kHIDUsage_Snsr_Data_Light_ChromaticityY: Int { get }
var kHIDUsage_Snsr_Data_Light_ConsumerIRSentenceReceive: Int { get }
var kHIDUsage_Snsr_Property_Light: Int { get }
var kHIDUsage_Snsr_Property_Light_ConsumerIRSentenceSend: Int { get }
var kHIDUsage_Snsr_Data_Scanner: Int { get }
var kHIDUsage_Snsr_Data_Scanner_RFIDTag40Bit: Int { get }
var kHIDUsage_Snsr_Data_Scanner_NFCSentenceReceive: Int { get }
var kHIDUsage_Snsr_Property_Scanner: Int { get }
var kHIDUsage_Snsr_Property_Scanner_NFCSentenceSend: Int { get }
var kHIDUsage_Snsr_Data_Electrical: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Capacitance: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Current: Int { get }
var kHIDUsage_Snsr_Data_Electrical_ElectricalPower: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Inductance: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Resistance: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Voltage: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Frequency: Int { get }
var kHIDUsage_Snsr_Data_Electrical_Period: Int { get }
var kHIDUsage_Snsr_Data_Electrical_PercentOfRange: Int { get }
var kHIDUsage_Snsr_Data_Time: Int { get }
var kHIDUsage_Snsr_Data_Time_Year: Int { get }
var kHIDUsage_Snsr_Data_Time_Month: Int { get }
var kHIDUsage_Snsr_Data_Time_Day: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeek: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekSunday: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekMonday: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekTuesday: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekWednesday: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekThursday: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekFriday: Int { get }
var kHIDUsage_Snsr_Data_Time_DayOfWeekSaturday: Int { get }
var kHIDUsage_Snsr_Data_Time_Hour: Int { get }
var kHIDUsage_Snsr_Data_Time_Minute: Int { get }
var kHIDUsage_Snsr_Data_Time_Second: Int { get }
var kHIDUsage_Snsr_Data_Time_Millisecond: Int { get }
var kHIDUsage_Snsr_Data_Time_Timestamp: Int { get }
var kHIDUsage_Snsr_Data_Time_JulianDayOfYear: Int { get }
var kHIDUsage_Snsr_Property_Time: Int { get }
var kHIDUsage_Snsr_Property_Time_TimeZoneOffsetFromUTC: Int { get }
var kHIDUsage_Snsr_Property_Time_TimeZoneName: Int { get }
var kHIDUsage_Snsr_Property_Time_DaylightSavingsTimeObserved: Int { get }
var kHIDUsage_Snsr_Property_Time_TimeTrimAdjustment: Int { get }
var kHIDUsage_Snsr_Property_Time_ArmAlarm: Int { get }
var kHIDUsage_Snsr_Data_Custom: Int { get }
var kHIDUsage_Snsr_Data_Custom_Usage: Int { get }
var kHIDUsage_Snsr_Data_Custom_BooleanArray: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value1: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value2: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value3: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value4: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value5: Int { get }
var kHIDUsage_Snsr_Data_Custom_Value6: Int { get }
var kHIDUsage_PD_Undefined: Int { get }
var kHIDUsage_PD_iName: Int { get }
var kHIDUsage_PD_PresentStatus: Int { get }
var kHIDUsage_PD_ChangedStatus: Int { get }
var kHIDUsage_PD_UPS: Int { get }
var kHIDUsage_PD_PowerSupply: Int { get }
var kHIDUsage_PD_PeripheralDevice: Int { get }
var kHIDUsage_PD_BatterySystem: Int { get }
var kHIDUsage_PD_BatterySystemID: Int { get }
var kHIDUsage_PD_Battery: Int { get }
var kHIDUsage_PD_BatteryID: Int { get }
var kHIDUsage_PD_Charger: Int { get }
var kHIDUsage_PD_ChargerID: Int { get }
var kHIDUsage_PD_PowerConverter: Int { get }
var kHIDUsage_PD_PowerConverterID: Int { get }
var kHIDUsage_PD_OutletSystem: Int { get }
var kHIDUsage_PD_OutletSystemID: Int { get }
var kHIDUsage_PD_Input: Int { get }
var kHIDUsage_PD_InputID: Int { get }
var kHIDUsage_PD_Output: Int { get }
var kHIDUsage_PD_OutputID: Int { get }
var kHIDUsage_PD_Flow: Int { get }
var kHIDUsage_PD_FlowID: Int { get }
var kHIDUsage_PD_Outlet: Int { get }
var kHIDUsage_PD_OutletID: Int { get }
var kHIDUsage_PD_Gang: Int { get }
var kHIDUsage_PD_GangID: Int { get }
var kHIDUsage_PD_PowerSummary: Int { get }
var kHIDUsage_PD_PowerSummaryID: Int { get }
var kHIDUsage_PD_Voltage: Int { get }
var kHIDUsage_PD_Current: Int { get }
var kHIDUsage_PD_Frequency: Int { get }
var kHIDUsage_PD_ApparentPower: Int { get }
var kHIDUsage_PD_ActivePower: Int { get }
var kHIDUsage_PD_PercentLoad: Int { get }
var kHIDUsage_PD_Temperature: Int { get }
var kHIDUsage_PD_Humidity: Int { get }
var kHIDUsage_PD_BadCount: Int { get }
var kHIDUsage_PD_ConfigVoltage: Int { get }
var kHIDUsage_PD_ConfigCurrent: Int { get }
var kHIDUsage_PD_ConfigFrequency: Int { get }
var kHIDUsage_PD_ConfigApparentPower: Int { get }
var kHIDUsage_PD_ConfigActivePower: Int { get }
var kHIDUsage_PD_ConfigPercentLoad: Int { get }
var kHIDUsage_PD_ConfigTemperature: Int { get }
var kHIDUsage_PD_ConfigHumidity: Int { get }
var kHIDUsage_PD_SwitchOnControl: Int { get }
var kHIDUsage_PD_SwitchOffControl: Int { get }
var kHIDUsage_PD_ToggleControl: Int { get }
var kHIDUsage_PD_LowVoltageTransfer: Int { get }
var kHIDUsage_PD_HighVoltageTransfer: Int { get }
var kHIDUsage_PD_DelayBeforeReboot: Int { get }
var kHIDUsage_PD_DelayBeforeStartup: Int { get }
var kHIDUsage_PD_DelayBeforeShutdown: Int { get }
var kHIDUsage_PD_Test: Int { get }
var kHIDUsage_PD_ModuleReset: Int { get }
var kHIDUsage_PD_AudibleAlarmControl: Int { get }
var kHIDUsage_PD_Present: Int { get }
var kHIDUsage_PD_Good: Int { get }
var kHIDUsage_PD_InternalFailure: Int { get }
var kHIDUsage_PD_VoltageOutOfRange: Int { get }
var kHIDUsage_PD_FrequencyOutOfRange: Int { get }
var kHIDUsage_PD_Overload: Int { get }
var kHIDUsage_PD_OverCharged: Int { get }
var kHIDUsage_PD_OverTemperature: Int { get }
var kHIDUsage_PD_ShutdownRequested: Int { get }
var kHIDUsage_PD_ShutdownImminent: Int { get }
var kHIDUsage_PD_SwitchOnOff: Int { get }
var kHIDUsage_PD_Switchable: Int { get }
var kHIDUsage_PD_Used: Int { get }
var kHIDUsage_PD_Boost: Int { get }
var kHIDUsage_PD_Buck: Int { get }
var kHIDUsage_PD_Initialized: Int { get }
var kHIDUsage_PD_Tested: Int { get }
var kHIDUsage_PD_AwaitingPower: Int { get }
var kHIDUsage_PD_CommunicationLost: Int { get }
var kHIDUsage_PD_iManufacturer: Int { get }
var kHIDUsage_PD_iProduct: Int { get }
var kHIDUsage_PD_iserialNumber: Int { get }
var kHIDUsage_BS_Undefined: Int { get }
var kHIDUsage_BS_SMBBatteryMode: Int { get }
var kHIDUsage_BS_SMBBatteryStatus: Int { get }
var kHIDUsage_BS_SMBAlarmWarning: Int { get }
var kHIDUsage_BS_SMBChargerMode: Int { get }
var kHIDUsage_BS_SMBChargerStatus: Int { get }
var kHIDUsage_BS_SMBChargerSpecInfo: Int { get }
var kHIDUsage_BS_SMBSelectorState: Int { get }
var kHIDUsage_BS_SMBSelectorPresets: Int { get }
var kHIDUsage_BS_SMBSelectorInfo: Int { get }
var kHIDUsage_BS_OptionalMfgFunction1: Int { get }
var kHIDUsage_BS_OptionalMfgFunction2: Int { get }
var kHIDUsage_BS_OptionalMfgFunction3: Int { get }
var kHIDUsage_BS_OptionalMfgFunction4: Int { get }
var kHIDUsage_BS_OptionalMfgFunction5: Int { get }
var kHIDUsage_BS_ConnectionToSMBus: Int { get }
var kHIDUsage_BS_OutputConnection: Int { get }
var kHIDUsage_BS_ChargerConnection: Int { get }
var kHIDUsage_BS_BatteryInsertion: Int { get }
var kHIDUsage_BS_Usenext: Int { get }
var kHIDUsage_BS_OKToUse: Int { get }
var kHIDUsage_BS_BatterySupported: Int { get }
var kHIDUsage_BS_SelectorRevision: Int { get }
var kHIDUsage_BS_ChargingIndicator: Int { get }
var kHIDUsage_BS_ManufacturerAccess: Int { get }
var kHIDUsage_BS_RemainingCapacityLimit: Int { get }
var kHIDUsage_BS_RemainingTimeLimit: Int { get }
var kHIDUsage_BS_AtRate: Int { get }
var kHIDUsage_BS_CapacityMode: Int { get }
var kHIDUsage_BS_BroadcastToCharger: Int { get }
var kHIDUsage_BS_PrimaryBattery: Int { get }
var kHIDUsage_BS_ChargeController: Int { get }
var kHIDUsage_BS_TerminateCharge: Int { get }
var kHIDUsage_BS_TerminateDischarge: Int { get }
var kHIDUsage_BS_BelowRemainingCapacityLimit: Int { get }
var kHIDUsage_BS_RemainingTimeLimitExpired: Int { get }
var kHIDUsage_BS_Charging: Int { get }
var kHIDUsage_BS_Discharging: Int { get }
var kHIDUsage_BS_FullyCharged: Int { get }
var kHIDUsage_BS_FullyDischarged: Int { get }
var kHIDUsage_BS_ConditioningFlag: Int { get }
var kHIDUsage_BS_AtRateOK: Int { get }
var kHIDUsage_BS_SMBErrorCode: Int { get }
var kHIDUsage_BS_NeedReplacement: Int { get }
var kHIDUsage_BS_AtRateTimeToFull: Int { get }
var kHIDUsage_BS_AtRateTimeToEmpty: Int { get }
var kHIDUsage_BS_AverageCurrent: Int { get }
var kHIDUsage_BS_Maxerror: Int { get }
var kHIDUsage_BS_RelativeStateOfCharge: Int { get }
var kHIDUsage_BS_AbsoluteStateOfCharge: Int { get }
var kHIDUsage_BS_RemainingCapacity: Int { get }
var kHIDUsage_BS_FullChargeCapacity: Int { get }
var kHIDUsage_BS_RunTimeToEmpty: Int { get }
var kHIDUsage_BS_AverageTimeToEmpty: Int { get }
var kHIDUsage_BS_AverageTimeToFull: Int { get }
var kHIDUsage_BS_CycleCount: Int { get }
var kHIDUsage_BS_BattPackModelLevel: Int { get }
var kHIDUsage_BS_InternalChargeController: Int { get }
var kHIDUsage_BS_PrimaryBatterySupport: Int { get }
var kHIDUsage_BS_DesignCapacity: Int { get }
var kHIDUsage_BS_SpecificationInfo: Int { get }
var kHIDUsage_BS_ManufacturerDate: Int { get }
var kHIDUsage_BS_SerialNumber: Int { get }
var kHIDUsage_BS_iManufacturerName: Int { get }
var kHIDUsage_BS_iDevicename: Int { get }
var kHIDUsage_BS_iDeviceChemistry: Int { get }
var kHIDUsage_BS_ManufacturerData: Int { get }
var kHIDUsage_BS_Rechargable: Int { get }
var kHIDUsage_BS_WarningCapacityLimit: Int { get }
var kHIDUsage_BS_CapacityGranularity1: Int { get }
var kHIDUsage_BS_CapacityGranularity2: Int { get }
var kHIDUsage_BS_iOEMInformation: Int { get }
var kHIDUsage_BS_InhibitCharge: Int { get }
var kHIDUsage_BS_EnablePolling: Int { get }
var kHIDUsage_BS_ResetToZero: Int { get }
var kHIDUsage_BS_ACPresent: Int { get }
var kHIDUsage_BS_BatteryPresent: Int { get }
var kHIDUsage_BS_PowerFail: Int { get }
var kHIDUsage_BS_AlarmInhibited: Int { get }
var kHIDUsage_BS_ThermistorUnderRange: Int { get }
var kHIDUsage_BS_ThermistorHot: Int { get }
var kHIDUsage_BS_ThermistorCold: Int { get }
var kHIDUsage_BS_ThermistorOverRange: Int { get }
var kHIDUsage_BS_VoltageOutOfRange: Int { get }
var kHIDUsage_BS_CurrentOutOfRange: Int { get }
var kHIDUsage_BS_CurrentNotRegulated: Int { get }
var kHIDUsage_BS_VoltageNotRegulated: Int { get }
var kHIDUsage_BS_MasterMode: Int { get }
var kHIDUsage_BS_ChargerSelectorSupport: Int { get }
var kHIDUsage_BS_ChargerSpec: Int { get }
var kHIDUsage_BS_Level2: Int { get }
var kHIDUsage_BS_Level3: Int { get }
var kHIDUsage_BCS_Undefined: Int { get }
var kHIDUsage_BCS_BadgeReader: Int { get }
var kHIDUsage_BCS_BarCodeScanner: Int { get }
var kHIDUsage_BCS_DumbBarCodeScanner: Int { get }
var kHIDUsage_BCS_CordlessScannerBase: Int { get }
var kHIDUsage_BCS_BarCodeScannerCradle: Int { get }
var kHIDUsage_BCS_AttributeReport: Int { get }
var kHIDUsage_BCS_SettingsReport: Int { get }
var kHIDUsage_BCS_ScannedDataReport: Int { get }
var kHIDUsage_BCS_RawScannedDataReport: Int { get }
var kHIDUsage_BCS_TriggerReport: Int { get }
var kHIDUsage_BCS_StatusReport: Int { get }
var kHIDUsage_BCS_UPC_EANControlReport: Int { get }
var kHIDUsage_BCS_EAN2_3LabelControlReport: Int { get }
var kHIDUsage_BCS_Code39ControlReport: Int { get }
var kHIDUsage_BCS_Interleaved2of5ControlReport: Int { get }
var kHIDUsage_BCS_Standard2of5ControlReport: Int { get }
var kHIDUsage_BCS_MSIPlesseyControlReport: Int { get }
var kHIDUsage_BCS_CodabarControlReport: Int { get }
var kHIDUsage_BCS_Code128ControlReport: Int { get }
var kHIDUsage_BCS_Misc1DControlReport: Int { get }
var kHIDUsage_BCS_2DControlReport: Int { get }
var kHIDUsage_BCS_Aiming_PointerMide: Int { get }
var kHIDUsage_BCS_BarCodePresentSensor: Int { get }
var kHIDUsage_BCS_Class1ALaser: Int { get }
var kHIDUsage_BCS_Class2Laser: Int { get }
var kHIDUsage_BCS_HeaterPresent: Int { get }
var kHIDUsage_BCS_ContactScanner: Int { get }
var kHIDUsage_BCS_ElectronicArticleSurveillanceNotification: Int { get }
var kHIDUsage_BCS_ConstantElectronicArticleSurveillance: Int { get }
var kHIDUsage_BCS_ErrorIndication: Int { get }
var kHIDUsage_BCS_FixedBeeper: Int { get }
var kHIDUsage_BCS_GoodDecodeIndication: Int { get }
var kHIDUsage_BCS_HandsFreeScanning: Int { get }
var kHIDUsage_BCS_IntrinsicallySafe: Int { get }
var kHIDUsage_BCS_KlasseEinsLaser: Int { get }
var kHIDUsage_BCS_LongRangeScanner: Int { get }
var kHIDUsage_BCS_MirrorSpeedControl: Int { get }
var kHIDUsage_BCS_NotOnFileIndication: Int { get }
var kHIDUsage_BCS_ProgrammableBeeper: Int { get }
var kHIDUsage_BCS_Triggerless: Int { get }
var kHIDUsage_BCS_Wand: Int { get }
var kHIDUsage_BCS_WaterResistant: Int { get }
var kHIDUsage_BCS_MultiRangeScanner: Int { get }
var kHIDUsage_BCS_ProximitySensor: Int { get }
var kHIDUsage_BCS_FragmentDecoding: Int { get }
var kHIDUsage_BCS_ScannerReadConfidence: Int { get }
var kHIDUsage_BCS_DataPrefix: Int { get }
var kHIDUsage_BCS_PrefixAIMI: Int { get }
var kHIDUsage_BCS_PrefixNone: Int { get }
var kHIDUsage_BCS_PrefixProprietary: Int { get }
var kHIDUsage_BCS_ActiveTime: Int { get }
var kHIDUsage_BCS_AimingLaserPattern: Int { get }
var kHIDUsage_BCS_BarCodePresent: Int { get }
var kHIDUsage_BCS_BeeperState: Int { get }
var kHIDUsage_BCS_LaserOnTime: Int { get }
var kHIDUsage_BCS_LaserState: Int { get }
var kHIDUsage_BCS_LockoutTime: Int { get }
var kHIDUsage_BCS_MotorState: Int { get }
var kHIDUsage_BCS_MotorTimeout: Int { get }
var kHIDUsage_BCS_PowerOnResetScanner: Int { get }
var kHIDUsage_BCS_PreventReadOfBarcodes: Int { get }
var kHIDUsage_BCS_InitiateBarcodeRead: Int { get }
var kHIDUsage_BCS_TriggerState: Int { get }
var kHIDUsage_BCS_TriggerMode: Int { get }
var kHIDUsage_BCS_TriggerModeBlinkingLaserOn: Int { get }
var kHIDUsage_BCS_TriggerModeContinuousLaserOn: Int { get }
var kHIDUsage_BCS_TriggerModeLaserOnWhilePulled: Int { get }
var kHIDUsage_BCS_TriggerModeLaserStaysOnAfterTriggerRelease: Int { get }
var kHIDUsage_BCS_CommitParametersToNVM: Int { get }
var kHIDUsage_BCS_ParameterScanning: Int { get }
var kHIDUsage_BCS_ParametersChanged: Int { get }
var kHIDUsage_BCS_SetParameterDefaultValues: Int { get }
var kHIDUsage_BCS_ScannerInCradle: Int { get }
var kHIDUsage_BCS_ScannerInRange: Int { get }
var kHIDUsage_BCS_AimDuration: Int { get }
var kHIDUsage_BCS_GoodReadLampDuration: Int { get }
var kHIDUsage_BCS_GoodReadLampIntensity: Int { get }
var kHIDUsage_BCS_GoodReadLED: Int { get }
var kHIDUsage_BCS_GoodReadToneFrequency: Int { get }
var kHIDUsage_BCS_GoodReadToneLength: Int { get }
var kHIDUsage_BCS_GoodReadToneVolume: Int { get }
var kHIDUsage_BCS_NoReadMessage: Int { get }
var kHIDUsage_BCS_NotOnFileVolume: Int { get }
var kHIDUsage_BCS_PowerupBeep: Int { get }
var kHIDUsage_BCS_SoundErrorBeep: Int { get }
var kHIDUsage_BCS_SoundGoodReadBeep: Int { get }
var kHIDUsage_BCS_SoundNotOnFileBeep: Int { get }
var kHIDUsage_BCS_GoodReadWhenToWrite: Int { get }
var kHIDUsage_BCS_GRWTIAfterDecode: Int { get }
var kHIDUsage_BCS_GRWTIBeep_LampAfterTransmit: Int { get }
var kHIDUsage_BCS_GRWTINoBeep_LampUseAtAll: Int { get }
var kHIDUsage_BCS_BooklandEAN: Int { get }
var kHIDUsage_BCS_ConvertEAN8To13Type: Int { get }
var kHIDUsage_BCS_ConvertUPCAToEAN_13: Int { get }
var kHIDUsage_BCS_ConvertUPC_EToA: Int { get }
var kHIDUsage_BCS_EAN_13: Int { get }
var kHIDUsage_BCS_EAN_8: Int { get }
var kHIDUsage_BCS_EAN_99_128_Mandatory: Int { get }
var kHIDUsage_BCS_EAN_99_P5_128_Optional: Int { get }
var kHIDUsage_BCS_UPC_EAN: Int { get }
var kHIDUsage_BCS_UPC_EANCouponCode: Int { get }
var kHIDUsage_BCS_UPC_EANPeriodicals: Int { get }
var kHIDUsage_BCS_UPC_A: Int { get }
var kHIDUsage_BCS_UPC_AWith128Mandatory: Int { get }
var kHIDUsage_BCS_UPC_AWith128Optical: Int { get }
var kHIDUsage_BCS_UPC_AWithP5Optional: Int { get }
var kHIDUsage_BCS_UPC_E: Int { get }
var kHIDUsage_BCS_UPC_E1: Int { get }
var kHIDUsage_BCS_Periodical: Int { get }
var kHIDUsage_BCS_PeriodicalAutoDiscriminatePlus2: Int { get }
var kHIDUsage_BCS_PeriodicalOnlyDecodeWithPlus2: Int { get }
var kHIDUsage_BCS_PeriodicalIgnorePlus2: Int { get }
var kHIDUsage_BCS_PeriodicalAutoDiscriminatePlus5: Int { get }
var kHIDUsage_BCS_PeriodicalOnlyDecodeWithPlus5: Int { get }
var kHIDUsage_BCS_PeriodicalIgnorePlus5: Int { get }
var kHIDUsage_BCS_Check: Int { get }
var kHIDUsage_BCS_CheckDisablePrice: Int { get }
var kHIDUsage_BCS_CheckEnable4DigitPrice: Int { get }
var kHIDUsage_BCS_CheckEnable5DigitPrice: Int { get }
var kHIDUsage_BCS_CheckEnableEuropean4DigitPrice: Int { get }
var kHIDUsage_BCS_CheckEnableEuropean5DigitPrice: Int { get }
var kHIDUsage_BCS_EANTwoLabel: Int { get }
var kHIDUsage_BCS_EANThreeLabel: Int { get }
var kHIDUsage_BCS_EAN8FlagDigit1: Int { get }
var kHIDUsage_BCS_EAN8FlagDigit2: Int { get }
var kHIDUsage_BCS_EAN8FlagDigit3: Int { get }
var kHIDUsage_BCS_EAN13FlagDigit1: Int { get }
var kHIDUsage_BCS_EAN13FlagDigit2: Int { get }
var kHIDUsage_BCS_EAN13FlagDigit3: Int { get }
var kHIDUsage_BCS_AddEAN2_3LabelDefinition: Int { get }
var kHIDUsage_BCS_ClearAllEAN2_3LabelDefinitions: Int { get }
var kHIDUsage_BCS_Codabar: Int { get }
var kHIDUsage_BCS_Code128: Int { get }
var kHIDUsage_BCS_Code39: Int { get }
var kHIDUsage_BCS_Code93: Int { get }
var kHIDUsage_BCS_FullASCIIConversion: Int { get }
var kHIDUsage_BCS_Interleaved2of5: Int { get }
var kHIDUsage_BCS_ItalianPharmacyCode: Int { get }
var kHIDUsage_BCS_MSI_Plessey: Int { get }
var kHIDUsage_BCS_Standard2of5IATA: Int { get }
var kHIDUsage_BCS_Standard2of5: Int { get }
var kHIDUsage_BCS_TransmitStart_Stop: Int { get }
var kHIDUsage_BCS_TriOptic: Int { get }
var kHIDUsage_BCS_UCC_EAN_128: Int { get }
var kHIDUsage_BCS_CheckDigit: Int { get }
var kHIDUsage_BCS_CheckDigitDisable: Int { get }
var kHIDUsage_BCS_CheckDigitEnableInterleaved2of5OPCC: Int { get }
var kHIDUsage_BCS_CheckDigitEnableInterleaved2of5USS: Int { get }
var kHIDUsage_BCS_CheckDigitEnableStandard2of5OPCC: Int { get }
var kHIDUsage_BCS_CheckDigitEnableStandard2of5USS: Int { get }
var kHIDUsage_BCS_CheckDigitEnableOneMSIPlessey: Int { get }
var kHIDUsage_BCS_CheckDigitEnableTwoMSIPlessey: Int { get }
var kHIDUsage_BCS_CheckDigitCodabarEnable: Int { get }
var kHIDUsage_BCS_CheckDigitCode99Enable: Int { get }
var kHIDUsage_BCS_TransmitCheckDigit: Int { get }
var kHIDUsage_BCS_DisableCheckDigitTransmit: Int { get }
var kHIDUsage_BCS_EnableCheckDigitTransmit: Int { get }
var kHIDUsage_BCS_SymbologyIdentifier1: Int { get }
var kHIDUsage_BCS_SymbologyIdentifier2: Int { get }
var kHIDUsage_BCS_SymbologyIdentifier3: Int { get }
var kHIDUsage_BCS_DecodedData: Int { get }
var kHIDUsage_BCS_DecodeDataContinued: Int { get }
var kHIDUsage_BCS_BarSpaceData: Int { get }
var kHIDUsage_BCS_ScannerDataAccuracy: Int { get }
var kHIDUsage_BCS_RawDataPolarity: Int { get }
var kHIDUsage_BCS_PolarityInvertedBarCode: Int { get }
var kHIDUsage_BCS_PolarityNormalBarCode: Int { get }
var kHIDUsage_BCS_MinimumLengthToDecode: Int { get }
var kHIDUsage_BCS_MaximumLengthToDecode: Int { get }
var kHIDUsage_BCS_FirstDiscreteLengthToDecode: Int { get }
var kHIDUsage_BCS_SecondDiscreteLengthToDecode: Int { get }
var kHIDUsage_BCS_DataLengthMethod: Int { get }
var kHIDUsage_BCS_DLMethodReadAny: Int { get }
var kHIDUsage_BCS_DLMethodCheckInRange: Int { get }
var kHIDUsage_BCS_DLMethodCheckForDiscrete: Int { get }
var kHIDUsage_BCS_AztecCode: Int { get }
var kHIDUsage_BCS_BC412: Int { get }
var kHIDUsage_BCS_ChannelCode: Int { get }
var kHIDUsage_BCS_Code16: Int { get }
var kHIDUsage_BCS_Code32: Int { get }
var kHIDUsage_BCS_Code49: Int { get }
var kHIDUsage_BCS_CodeOne: Int { get }
var kHIDUsage_BCS_Colorcode: Int { get }
var kHIDUsage_BCS_DataMatrix: Int { get }
var kHIDUsage_BCS_MaxiCode: Int { get }
var kHIDUsage_BCS_MicroPDF: Int { get }
var kHIDUsage_BCS_PDF_417: Int { get }
var kHIDUsage_BCS_PosiCode: Int { get }
var kHIDUsage_BCS_QRCode: Int { get }
var kHIDUsage_BCS_SuperCode: Int { get }
var kHIDUsage_BCS_UltraCode: Int { get }
var kHIDUsage_BCS_USB_5_SlugCode: Int { get }
var kHIDUsage_BCS_VeriCode: Int { get }
var kHIDUsage_WD_Undefined: Int { get }
var kHIDUsage_WD_WeighingDevice: Int { get }
var kHIDUsage_WD_ScaleScaleDevice: Int { get }
var kHIDUsage_WD_ScaleScaleClassIMetricCL: Int { get }
var kHIDUsage_WD_ScaleScaleClassIMetric: Int { get }
var kHIDUsage_WD_ScaleScaleClassIIMetric: Int { get }
var kHIDUsage_WD_ScaleScaleClassIIIMetric: Int { get }
var kHIDUsage_WD_ScaleScaleClassIIILMetric: Int { get }
var kHIDUsage_WD_ScaleScaleClassIVMetric: Int { get }
var kHIDUsage_WD_ScaleScaleClassIIIEnglish: Int { get }
var kHIDUsage_WD_ScaleScaleClassIIILEnglish: Int { get }
var kHIDUsage_WD_ScaleScaleClassIVEnglish: Int { get }
var kHIDUsage_WD_ScaleScaleClassGeneric: Int { get }
var kHIDUsage_WD_ScaleAtrributeReport: Int { get }
var kHIDUsage_WD_ScaleControlReport: Int { get }
var kHIDUsage_WD_ScaleDataReport: Int { get }
var kHIDUsage_WD_ScaleStatusReport: Int { get }
var kHIDUsage_WD_ScaleWeightLimitReport: Int { get }
var kHIDUsage_WD_ScaleStatisticsReport: Int { get }
var kHIDUsage_WD_DataWeight: Int { get }
var kHIDUsage_WD_DataScaling: Int { get }
var kHIDUsage_WD_WeightUnit: Int { get }
var kHIDUsage_WD_WeightUnitMilligram: Int { get }
var kHIDUsage_WD_WeightUnitGram: Int { get }
var kHIDUsage_WD_WeightUnitKilogram: Int { get }
var kHIDUsage_WD_WeightUnitCarats: Int { get }
var kHIDUsage_WD_WeightUnitTaels: Int { get }
var kHIDUsage_WD_WeightUnitGrains: Int { get }
var kHIDUsage_WD_WeightUnitPennyweights: Int { get }
var kHIDUsage_WD_WeightUnitMetricTon: Int { get }
var kHIDUsage_WD_WeightUnitAvoirTon: Int { get }
var kHIDUsage_WD_WeightUnitTroyOunce: Int { get }
var kHIDUsage_WD_WeightUnitOunce: Int { get }
var kHIDUsage_WD_WeightUnitPound: Int { get }
var kHIDUsage_WD_CalibrationCount: Int { get }
var kHIDUsage_WD_RezeroCount: Int { get }
var kHIDUsage_WD_ScaleStatus: Int { get }
var kHIDUsage_WD_ScaleStatusFault: Int { get }
var kHIDUsage_WD_ScaleStatusStableAtZero: Int { get }
var kHIDUsage_WD_ScaleStatusInMotion: Int { get }
var kHIDUsage_WD_ScaleStatusWeightStable: Int { get }
var kHIDUsage_WD_ScaleStatusUnderZero: Int { get }
var kHIDUsage_WD_ScaleStatusOverWeightLimit: Int { get }
var kHIDUsage_WD_ScaleStatusRequiresCalibration: Int { get }
var kHIDUsage_WD_ScaleStatusRequiresRezeroing: Int { get }
var kHIDUsage_WD_ZeroScale: Int { get }
var kHIDUsage_WD_EnforcedZeroReturn: Int { get }
var kHIDUsage_MSR_Undefined: Int { get }
var kHIDUsage_MSR_DeviceReadOnly: Int { get }
var kHIDUsage_MSR_Track1Length: Int { get }
var kHIDUsage_MSR_Track2Length: Int { get }
var kHIDUsage_MSR_Track3Length: Int { get }
var kHIDUsage_MSR_TrackJISLength: Int { get }
var kHIDUsage_MSR_TrackData: Int { get }
var kHIDUsage_MSR_Track1Data: Int { get }
var kHIDUsage_MSR_Track2Data: Int { get }
var kHIDUsage_MSR_Track3Data: Int { get }
var kHIDUsage_MSR_TrackJISData: Int { get }
var kHIDUsage_CC_Undefined: Int { get }
var kHIDUsage_CC_Autofocus: Int { get }
var kHIDUsage_CC_Shutter: Int { get }
var kHIDUsage_FIDO_Undefined: Int { get }
var kHIDUsage_FIDO_U2FDevice: Int { get }
var kHIDUsage_FIDO_InputData: Int { get }
var kHIDUsage_FIDO_OutputData: Int { get }
@available(macOS 10.5, *)
func IOHIDValueGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func IOHIDValueCreateWithIntegerValue(_ allocator: CFAllocator?, _ element: IOHIDElement, _ timeStamp: UInt64, _ value: CFIndex) -> IOHIDValue
@available(macOS 10.5, *)
func IOHIDValueCreateWithBytes(_ allocator: CFAllocator?, _ element: IOHIDElement, _ timeStamp: UInt64, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex) -> IOHIDValue?
@available(macOS 10.5, *)
func IOHIDValueCreateWithBytesNoCopy(_ allocator: CFAllocator?, _ element: IOHIDElement, _ timeStamp: UInt64, _ bytes: UnsafePointer<UInt8>, _ length: CFIndex) -> IOHIDValue?
@available(macOS 10.5, *)
func IOHIDValueGetElement(_ value: IOHIDValue) -> IOHIDElement
@available(macOS 10.5, *)
func IOHIDValueGetTimeStamp(_ value: IOHIDValue) -> UInt64
@available(macOS 10.5, *)
func IOHIDValueGetLength(_ value: IOHIDValue) -> CFIndex
@available(macOS 10.5, *)
func IOHIDValueGetBytePtr(_ value: IOHIDValue) -> UnsafePointer<UInt8>
@available(macOS 10.5, *)
func IOHIDValueGetIntegerValue(_ value: IOHIDValue) -> CFIndex
@available(macOS 10.5, *)
func IOHIDValueGetScaledValue(_ value: IOHIDValue, _ type: IOHIDValueScaleType) -> double_t
struct IOHIDTransactionOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var weakDevice: IOHIDTransactionOptions { get }
}
class IOHIDTransaction : _CFObject {
}
@available(macOS 10.5, *)
func IOHIDTransactionGetTypeID() -> CFTypeID
@available(macOS 10.5, *)
func IOHIDTransactionCreate(_ allocator: CFAllocator?, _ device: IOHIDDevice, _ direction: IOHIDTransactionDirectionType, _ options: IOOptionBits) -> IOHIDTransaction?
@available(macOS 10.5, *)
func IOHIDTransactionGetDevice(_ transaction: IOHIDTransaction) -> IOHIDDevice
@available(macOS 10.5, *)
func IOHIDTransactionGetDirection(_ transaction: IOHIDTransaction) -> IOHIDTransactionDirectionType
@available(macOS 10.5, *)
func IOHIDTransactionSetDirection(_ transaction: IOHIDTransaction, _ direction: IOHIDTransactionDirectionType)
@available(macOS 10.5, *)
func IOHIDTransactionAddElement(_ transaction: IOHIDTransaction, _ element: IOHIDElement)
@available(macOS 10.5, *)
func IOHIDTransactionRemoveElement(_ transaction: IOHIDTransaction, _ element: IOHIDElement)
@available(macOS 10.5, *)
func IOHIDTransactionContainsElement(_ transaction: IOHIDTransaction, _ element: IOHIDElement) -> Bool
@available(macOS 10.5, *)
func IOHIDTransactionScheduleWithRunLoop(_ transaction: IOHIDTransaction, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.5, *)
func IOHIDTransactionUnscheduleFromRunLoop(_ transaction: IOHIDTransaction, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.5, *)
func IOHIDTransactionSetValue(_ transaction: IOHIDTransaction, _ element: IOHIDElement, _ value: IOHIDValue, _ options: IOOptionBits)
@available(macOS 10.5, *)
func IOHIDTransactionGetValue(_ transaction: IOHIDTransaction, _ element: IOHIDElement, _ options: IOOptionBits) -> IOHIDValue?
@available(macOS 10.5, *)
func IOHIDTransactionCommit(_ transaction: IOHIDTransaction) -> IOReturn
@available(macOS 10.5, *)
func IOHIDTransactionCommitWithCallback(_ transaction: IOHIDTransaction, _ timeout: CFTimeInterval, _ callback: IOHIDCallback?, _ context: UnsafeMutableRawPointer?) -> IOReturn
@available(macOS 10.5, *)
func IOHIDTransactionClear(_ transaction: IOHIDTransaction)
struct IOHIDDeviceDeviceInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var close: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var getProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var setProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, CFTypeRef?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var copyMatchingElements: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFArray>?>?, IOOptionBits) -> IOReturn)!
  var setValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOHIDValue?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var getValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var setInputReportCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, CFIndex, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafePointer<UInt8>?, CFIndex, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<CFIndex>?, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, close: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, getProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, setProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, CFTypeRef?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, copyMatchingElements: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFArray>?>?, IOOptionBits) -> IOReturn)!, setValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOHIDValue?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, getValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, setInputReportCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, CFIndex, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafePointer<UInt8>?, CFIndex, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<CFIndex>?, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!)
}
struct IOHIDDeviceTimeStampedDeviceInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var close: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var getProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var setProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, CFTypeRef?) -> IOReturn)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var copyMatchingElements: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFArray>?>?, IOOptionBits) -> IOReturn)!
  var setValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOHIDValue?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var getValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var setInputReportCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, CFIndex, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafePointer<UInt8>?, CFIndex, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<CFIndex>?, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var setInputReportWithTimeStampCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, CFIndex, IOHIDReportWithTimeStampCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, open: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, close: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, getProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, setProperty: (@convention(c) (UnsafeMutableRawPointer?, CFString?, CFTypeRef?) -> IOReturn)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, copyMatchingElements: (@convention(c) (UnsafeMutableRawPointer?, CFDictionary?, UnsafeMutablePointer<Unmanaged<CFArray>?>?, IOOptionBits) -> IOReturn)!, setValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOHIDValue?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, getValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, UInt32, IOHIDValueCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, setInputReportCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, CFIndex, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, setReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafePointer<UInt8>?, CFIndex, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, getReport: (@convention(c) (UnsafeMutableRawPointer?, IOHIDReportType, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<CFIndex>?, UInt32, IOHIDReportCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, setInputReportWithTimeStampCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, CFIndex, IOHIDReportWithTimeStampCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!)
}
struct IOHIDDeviceQueueInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var setDepth: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOOptionBits) -> IOReturn)!
  var getDepth: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!
  var removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!
  var containsElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<DarwinBoolean>?, IOOptionBits) -> IOReturn)!
  var start: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var stop: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var setValueAvailableCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallback?, UnsafeMutableRawPointer?) -> IOReturn)!
  var copyNextValue: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, UInt32, IOOptionBits) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, setDepth: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOOptionBits) -> IOReturn)!, getDepth: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!, removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!, containsElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<DarwinBoolean>?, IOOptionBits) -> IOReturn)!, start: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, stop: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, setValueAvailableCallback: (@convention(c) (UnsafeMutableRawPointer?, IOHIDCallback?, UnsafeMutableRawPointer?) -> IOReturn)!, copyNextValue: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, UInt32, IOOptionBits) -> IOReturn)!)
}
struct IOHIDDeviceTransactionInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!
  var setDirection: (@convention(c) (UnsafeMutableRawPointer?, IOHIDTransactionDirectionType, IOOptionBits) -> IOReturn)!
  var getDirection: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOHIDTransactionDirectionType>?) -> IOReturn)!
  var addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!
  var removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!
  var containsElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<DarwinBoolean>?, IOOptionBits) -> IOReturn)!
  var setValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOHIDValue?, IOOptionBits) -> IOReturn)!
  var getValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, IOOptionBits) -> IOReturn)!
  var commit: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOHIDCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  var clear: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, getAsyncEventSource: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CFTypeRef>?>?) -> IOReturn)!, setDirection: (@convention(c) (UnsafeMutableRawPointer?, IOHIDTransactionDirectionType, IOOptionBits) -> IOReturn)!, getDirection: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOHIDTransactionDirectionType>?) -> IOReturn)!, addElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!, removeElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOOptionBits) -> IOReturn)!, containsElement: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<DarwinBoolean>?, IOOptionBits) -> IOReturn)!, setValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, IOHIDValue?, IOOptionBits) -> IOReturn)!, getValue: (@convention(c) (UnsafeMutableRawPointer?, IOHIDElement?, UnsafeMutablePointer<Unmanaged<IOHIDValue>?>?, IOOptionBits) -> IOReturn)!, commit: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOHIDCallback?, UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!, clear: (@convention(c) (UnsafeMutableRawPointer?, IOOptionBits) -> IOReturn)!)
}
