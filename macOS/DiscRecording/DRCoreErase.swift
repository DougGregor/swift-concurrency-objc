
class DREraseRef : _CFObject {
}
@available(macOS 10.2, *)
func DREraseGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
func DREraseCreate(_ device: DRDeviceRef!) -> Unmanaged<DREraseRef>!
@available(macOS 10.2, *)
func DREraseStart(_ erase: DREraseRef!) -> OSStatus
@available(macOS 10.2, *)
func DREraseCopyStatus(_ erase: DREraseRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
let kDREraseStatusChangedNotification: CFString!
@available(macOS 10.2, *)
func DREraseGetDevice(_ erase: DREraseRef!) -> Unmanaged<DRDeviceRef>!
@available(macOS 10.2, *)
func DREraseSetProperties(_ erase: DREraseRef!, _ properties: CFDictionary!)
@available(macOS 10.2, *)
func DREraseGetProperties(_ erase: DREraseRef!) -> Unmanaged<CFDictionary>!
@available(macOS 10.2, *)
let kDREraseTypeKey: CFString!
@available(macOS 10.2, *)
let kDREraseTypeQuick: CFString!
@available(macOS 10.2, *)
let kDREraseTypeComplete: CFString!
