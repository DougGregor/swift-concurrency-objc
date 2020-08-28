
var kColorSyncDeviceID: Unmanaged<CFString>!
var kColorSyncDeviceClass: Unmanaged<CFString>!
var kColorSyncCameraDeviceClass: Unmanaged<CFString>!
var kColorSyncDisplayDeviceClass: Unmanaged<CFString>!
var kColorSyncPrinterDeviceClass: Unmanaged<CFString>!
var kColorSyncScannerDeviceClass: Unmanaged<CFString>!
var kColorSyncDeviceProfileURL: Unmanaged<CFString>!
var kColorSyncDeviceDescription: Unmanaged<CFString>!
var kColorSyncDeviceDescriptions: Unmanaged<CFString>!
var kColorSyncFactoryProfiles: Unmanaged<CFString>!
var kColorSyncCustomProfiles: Unmanaged<CFString>!
var kColorSyncDeviceModeDescription: Unmanaged<CFString>!
var kColorSyncDeviceModeDescriptions: Unmanaged<CFString>!
var kColorSyncDeviceDefaultProfileID: Unmanaged<CFString>!
var kColorSyncDeviceHostScope: Unmanaged<CFString>!
var kColorSyncDeviceUserScope: Unmanaged<CFString>!
var kColorSyncProfileHostScope: Unmanaged<CFString>!
var kColorSyncProfileUserScope: Unmanaged<CFString>!
var kColorSyncDeviceProfileIsFactory: Unmanaged<CFString>!
var kColorSyncDeviceProfileIsDefault: Unmanaged<CFString>!
var kColorSyncDeviceProfileIsCurrent: Unmanaged<CFString>!
var kColorSyncDeviceProfileID: Unmanaged<CFString>!
var kColorSyncDeviceRegisteredNotification: Unmanaged<CFString>!
var kColorSyncDeviceUnregisteredNotification: Unmanaged<CFString>!
var kColorSyncDeviceProfilesNotification: Unmanaged<CFString>!
var kColorSyncDisplayDeviceProfilesNotification: Unmanaged<CFString>!
var kColorSyncProfileRepositoryChangeNotification: Unmanaged<CFString>!
var kColorSyncRegistrationUpdateWindowServer: Unmanaged<CFString>!
func ColorSyncRegisterDevice(_ deviceClass: CFString!, _ deviceID: CFUUID!, _ deviceInfo: CFDictionary!) -> Bool
func ColorSyncUnregisterDevice(_ deviceClass: CFString!, _ deviceID: CFUUID!) -> Bool
func ColorSyncDeviceSetCustomProfiles(_ deviceClass: CFString!, _ deviceID: CFUUID!, _ profileInfo: CFDictionary!) -> Bool
func ColorSyncDeviceCopyDeviceInfo(_ deviceClass: CFString!, _ devID: CFUUID!) -> Unmanaged<CFDictionary>!
typealias ColorSyncDeviceProfileIterateCallback = @convention(c) (CFDictionary?, UnsafeMutableRawPointer?) -> Bool
func ColorSyncIterateDeviceProfiles(_ callBack: ColorSyncDeviceProfileIterateCallback!, _ userInfo: UnsafeMutableRawPointer!)
func CGDisplayCreateUUIDFromDisplayID(_ displayID: UInt32) -> Unmanaged<CFUUID>!
func CGDisplayGetDisplayIDFromUUID(_ uuid: CFUUID!) -> UInt32
