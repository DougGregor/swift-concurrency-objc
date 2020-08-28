
@available(macOS 10.8, *)
func CMAudioDeviceClockCreate(allocator: CFAllocator?, deviceUID: CFString?, clockOut: UnsafeMutablePointer<CMClock?>) -> OSStatus
@available(macOS 10.8, *)
func CMAudioDeviceClockCreateFromAudioDeviceID(allocator: CFAllocator?, deviceID: AudioDeviceID, clockOut: UnsafeMutablePointer<CMClock?>) -> OSStatus
@available(macOS 10.8, *)
func CMAudioDeviceClockSetAudioDeviceUID(_ clock: CMClock, deviceUID: CFString?) -> OSStatus
@available(macOS 10.8, *)
func CMAudioDeviceClockSetAudioDeviceID(_ clock: CMClock, deviceID: AudioDeviceID) -> OSStatus
@available(macOS 10.8, *)
func CMAudioDeviceClockGetAudioDevice(_ clock: CMClock, deviceUIDOut: AutoreleasingUnsafeMutablePointer<CFString?>?, deviceIDOut: UnsafeMutablePointer<AudioDeviceID>?, trackingDefaultDeviceOut: UnsafeMutablePointer<DarwinBoolean>?) -> OSStatus
