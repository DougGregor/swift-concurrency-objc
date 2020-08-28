
var kAudioHardwareServiceProperty_ServiceRestarted: AudioObjectPropertySelector { get }
var kAudioHardwareServiceDeviceProperty_VirtualMasterVolume: AudioObjectPropertySelector { get }
var kAudioHardwareServiceDeviceProperty_VirtualMasterBalance: AudioObjectPropertySelector { get }
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceHasProperty(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!) -> Bool
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceIsPropertySettable(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!, _ outIsSettable: UnsafeMutablePointer<DarwinBoolean>!) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceGetPropertyDataSize(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafeRawPointer!, _ outDataSize: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceGetPropertyData(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafeRawPointer!, _ ioDataSize: UnsafeMutablePointer<UInt32>!, _ outData: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceSetPropertyData(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafeRawPointer!, _ inDataSize: UInt32, _ inData: UnsafeRawPointer!) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceAddPropertyListener(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!, _ inListener: AudioObjectPropertyListenerProc!, _ inClientData: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS, introduced: 10.5, deprecated: 10.11, message: "no longer supported")
func AudioHardwareServiceRemovePropertyListener(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>!, _ inListener: AudioObjectPropertyListenerProc!, _ inClientData: UnsafeMutableRawPointer!) -> OSStatus
