
typealias MIDISetupRef = MIDIObjectRef
@available(macOS 11.0, *)
func MIDIDeviceNewEntity(_ device: MIDIDeviceRef, _ name: CFString, _ protocol: MIDIProtocolID, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDIDeviceNewEntity(_:_:_:_:_:_:_:)")
func MIDIDeviceAddEntity(_ device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(macOS 10.1, *)
func MIDIDeviceRemoveEntity(_ device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus
@available(macOS 10.2, *)
func MIDIEntityAddOrRemoveEndpoints(_ entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus
@available(macOS 10.1, *)
func MIDISetupAddDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(macOS 10.1, *)
func MIDISetupRemoveDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(macOS 10.1, *)
func MIDISetupAddExternalDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(macOS 10.1, *)
func MIDISetupRemoveExternalDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(macOS 10.1, *)
func MIDIExternalDeviceCreate(_ name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
