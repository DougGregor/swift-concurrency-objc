
class DRBurnRef : _CFObject {
}
@available(macOS 10.2, *)
func DRBurnGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
func DRBurnCreate(_ device: DRDeviceRef!) -> Unmanaged<DRBurnRef>!
@available(macOS 10.2, *)
func DRBurnWriteLayout(_ burn: DRBurnRef!, _ layout: CFTypeRef!) -> OSStatus
@available(macOS 10.2, *)
func DRBurnAbort(_ burn: DRBurnRef!)
@available(macOS 10.2, *)
func DRBurnCopyStatus(_ burn: DRBurnRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
func DRBurnGetDevice(_ burn: DRBurnRef!) -> Unmanaged<DRDeviceRef>!
@available(macOS 10.2, *)
func DRBurnSetProperties(_ burn: DRBurnRef!, _ properties: CFDictionary!)
@available(macOS 10.2, *)
func DRBurnGetProperties(_ burn: DRBurnRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
let kDRBurnStatusChangedNotification: CFString!
@available(macOS 10.2, *)
let kDRBurnRequestedSpeedKey: CFString!
@available(macOS 10.2, *)
let kDRBurnAppendableKey: CFString!
@available(macOS 10.3, *)
let kDRBurnOverwriteDiscKey: CFString!
@available(macOS 10.2, *)
let kDRBurnVerifyDiscKey: CFString!
@available(macOS 10.2, *)
let kDRBurnCompletionActionKey: CFString!
@available(macOS 10.2, *)
let kDRBurnUnderrunProtectionKey: CFString!
@available(macOS 10.2, *)
let kDRBurnTestingKey: CFString!
@available(macOS 10.2, *)
let kDRSynchronousBehaviorKey: CFString!
@available(macOS 10.3, *)
let kDRBurnFailureActionKey: CFString!
@available(macOS 10.3, *)
let kDRMediaCatalogNumberKey: CFString!
@available(macOS 10.4, *)
let kDRBurnDoubleLayerL0DataZoneBlocksKey: CFString!
@available(macOS 10.3, *)
let kDRBurnStrategyKey: CFString!
@available(macOS 10.3, *)
let kDRBurnStrategyIsRequiredKey: CFString!
@available(macOS 10.4, *)
let kDRCDTextKey: CFString!
@available(macOS 10.2, *)
let kDRBurnCompletionActionEject: CFString!
@available(macOS 10.2, *)
let kDRBurnCompletionActionMount: CFString!
@available(macOS 10.3, *)
let kDRBurnFailureActionEject: CFString!
@available(macOS 10.3, *)
let kDRBurnFailureActionNone: CFString!
@available(macOS 10.3, *)
let kDRBurnStrategyCDTAO: CFString!
@available(macOS 10.3, *)
let kDRBurnStrategyCDSAO: CFString!
@available(macOS 10.3, *)
let kDRBurnStrategyDVDDAO: CFString!
@available(macOS 10.5, *)
let kDRBurnStrategyBDDAO: CFString!
