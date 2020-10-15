
typealias MIDISetupRef = MIDIObjectRef
@available(iOS 14.0, *)
func MIDIDeviceNewEntity(_ device: MIDIDeviceRef, _ name: CFString, _ protocol: MIDIProtocolID, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(iOS, introduced: 4.2, deprecated: 100000, renamed: "MIDIDeviceNewEntity(_:_:_:_:_:_:_:)")
func MIDIDeviceAddEntity(_ device: MIDIDeviceRef, _ name: CFString, _ embedded: Bool, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int, _ newEntity: UnsafeMutablePointer<MIDIEntityRef>) -> OSStatus
@available(iOS 4.2, *)
func MIDIDeviceRemoveEntity(_ device: MIDIDeviceRef, _ entity: MIDIEntityRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIEntityAddOrRemoveEndpoints(_ entity: MIDIEntityRef, _ numSourceEndpoints: Int, _ numDestinationEndpoints: Int) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupAddDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupRemoveDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupAddExternalDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDISetupRemoveExternalDevice(_ device: MIDIDeviceRef) -> OSStatus
@available(iOS 4.2, *)
func MIDIExternalDeviceCreate(_ name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
