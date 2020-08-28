
typealias MIDIDriverRef = UnsafeMutablePointer<UnsafeMutablePointer<MIDIDriverInterface>>
typealias MIDIDeviceListRef = MIDIObjectRef
struct MIDIDriverInterface {
  var _reserved: UnsafeMutableRawPointer
  var QueryInterface: @convention(c) (UnsafeMutableRawPointer, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT
  var AddRef: @convention(c) (UnsafeMutableRawPointer) -> ULONG
  var Release: @convention(c) (UnsafeMutableRawPointer) -> ULONG
  var FindDevices: @convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus
  var Start: @convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus
  var Stop: @convention(c) (MIDIDriverRef) -> OSStatus
  var Configure: @convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus
  var Send: @convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutableRawPointer, UnsafeMutableRawPointer) -> OSStatus
  var EnableSource: @convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus
  var Flush: @convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> OSStatus
  var Monitor: @convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus
  var SendPackets: @convention(c) (MIDIDriverRef, UnsafePointer<MIDIEventList>, UnsafeMutableRawPointer, UnsafeMutableRawPointer) -> OSStatus
  var MonitorEvents: @convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIEventList>) -> OSStatus
  init(_reserved: UnsafeMutableRawPointer, QueryInterface: @convention(c) (UnsafeMutableRawPointer, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT, AddRef: @convention(c) (UnsafeMutableRawPointer) -> ULONG, Release: @convention(c) (UnsafeMutableRawPointer) -> ULONG, FindDevices: @convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus, Start: @convention(c) (MIDIDriverRef, MIDIDeviceListRef) -> OSStatus, Stop: @convention(c) (MIDIDriverRef) -> OSStatus, Configure: @convention(c) (MIDIDriverRef, MIDIDeviceRef) -> OSStatus, Send: @convention(c) (MIDIDriverRef, UnsafePointer<MIDIPacketList>, UnsafeMutableRawPointer, UnsafeMutableRawPointer) -> OSStatus, EnableSource: @convention(c) (MIDIDriverRef, MIDIEndpointRef, DarwinBoolean) -> OSStatus, Flush: @convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> OSStatus, Monitor: @convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIPacketList>) -> OSStatus, SendPackets: @convention(c) (MIDIDriverRef, UnsafePointer<MIDIEventList>, UnsafeMutableRawPointer, UnsafeMutableRawPointer) -> OSStatus, MonitorEvents: @convention(c) (MIDIDriverRef, MIDIEndpointRef, UnsafePointer<MIDIEventList>) -> OSStatus)
}
@available(macOS 10.1, *)
let kMIDIDriverPropertyUsesSerial: CFString
@available(macOS 10.0, *)
func MIDIDeviceCreate(_ owner: MIDIDriverRef?, _ name: CFString, _ manufacturer: CFString, _ model: CFString, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>) -> OSStatus
@available(macOS 10.3, *)
func MIDIDeviceDispose(_ device: MIDIDeviceRef) -> OSStatus
@available(macOS 10.0, *)
func MIDIDeviceListGetNumberOfDevices(_ devList: MIDIDeviceListRef) -> Int
@available(macOS 10.0, *)
func MIDIDeviceListGetDevice(_ devList: MIDIDeviceListRef, _ index0: Int) -> MIDIDeviceRef
@available(macOS 10.0, *)
func MIDIDeviceListAddDevice(_ devList: MIDIDeviceListRef, _ dev: MIDIDeviceRef) -> OSStatus
@available(macOS 10.1, *)
func MIDIDeviceListDispose(_ devList: MIDIDeviceListRef) -> OSStatus
@available(macOS 10.0, *)
func MIDIEndpointSetRefCons(_ endpt: MIDIEndpointRef, _ ref1: UnsafeMutableRawPointer?, _ ref2: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.0, *)
func MIDIEndpointGetRefCons(_ endpt: MIDIEndpointRef, _ ref1: UnsafeMutablePointer<UnsafeMutableRawPointer>?, _ ref2: UnsafeMutablePointer<UnsafeMutableRawPointer>?) -> OSStatus
@available(macOS 10.0, *)
func MIDIGetDriverIORunLoop() -> Unmanaged<CFRunLoop>
@available(macOS 10.1, *)
func MIDIGetDriverDeviceList(_ driver: MIDIDriverRef) -> MIDIDeviceListRef
@available(macOS 10.1, *)
func MIDIDriverEnableMonitoring(_ driver: MIDIDriverRef, _ enabled: Bool) -> OSStatus
