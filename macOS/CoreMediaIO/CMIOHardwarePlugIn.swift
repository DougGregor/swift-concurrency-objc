
typealias CMIOHardwarePlugInRef = UnsafeMutablePointer<UnsafeMutablePointer<CMIOHardwarePlugInInterface>?>
@available(macOS 10.7, *)
struct CMIOHardwarePlugInInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Initialize: (@convention(c) (CMIOHardwarePlugInRef?) -> OSStatus)!
  var InitializeWithObjectID: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID) -> OSStatus)!
  var Teardown: (@convention(c) (CMIOHardwarePlugInRef?) -> OSStatus)!
  var ObjectShow: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID) -> Void)!
  var ObjectHasProperty: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?) -> DarwinBoolean)!
  var ObjectIsPropertySettable: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UnsafeMutablePointer<DarwinBoolean>?) -> OSStatus)!
  var ObjectGetPropertyDataSize: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UInt32, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>?) -> OSStatus)!
  var ObjectGetPropertyData: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UInt32, UnsafeRawPointer?, UInt32, UnsafeMutablePointer<UInt32>?, UnsafeMutableRawPointer?) -> OSStatus)!
  var ObjectSetPropertyData: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UInt32, UnsafeRawPointer?, UInt32, UnsafeRawPointer?) -> OSStatus)!
  var DeviceSuspend: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID) -> OSStatus)!
  var DeviceResume: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID) -> OSStatus)!
  var DeviceStartStream: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, CMIOStreamID) -> OSStatus)!
  var DeviceStopStream: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, CMIOStreamID) -> OSStatus)!
  var DeviceProcessAVCCommand: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, UnsafeMutablePointer<CMIODeviceAVCCommand>?) -> OSStatus)!
  var DeviceProcessRS422Command: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, UnsafeMutablePointer<CMIODeviceRS422Command>?) -> OSStatus)!
  var StreamCopyBufferQueue: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID, CMIODeviceStreamQueueAlteredProc?, UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CMSimpleQueue>?>?) -> OSStatus)!
  var StreamDeckPlay: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID) -> OSStatus)!
  var StreamDeckStop: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID) -> OSStatus)!
  var StreamDeckJog: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID, Int32) -> OSStatus)!
  var StreamDeckCueTo: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID, Float64, DarwinBoolean) -> OSStatus)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Initialize: (@convention(c) (CMIOHardwarePlugInRef?) -> OSStatus)!, InitializeWithObjectID: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID) -> OSStatus)!, Teardown: (@convention(c) (CMIOHardwarePlugInRef?) -> OSStatus)!, ObjectShow: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID) -> Void)!, ObjectHasProperty: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?) -> DarwinBoolean)!, ObjectIsPropertySettable: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UnsafeMutablePointer<DarwinBoolean>?) -> OSStatus)!, ObjectGetPropertyDataSize: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UInt32, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>?) -> OSStatus)!, ObjectGetPropertyData: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UInt32, UnsafeRawPointer?, UInt32, UnsafeMutablePointer<UInt32>?, UnsafeMutableRawPointer?) -> OSStatus)!, ObjectSetPropertyData: (@convention(c) (CMIOHardwarePlugInRef?, CMIOObjectID, UnsafePointer<CMIOObjectPropertyAddress>?, UInt32, UnsafeRawPointer?, UInt32, UnsafeRawPointer?) -> OSStatus)!, DeviceSuspend: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID) -> OSStatus)!, DeviceResume: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID) -> OSStatus)!, DeviceStartStream: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, CMIOStreamID) -> OSStatus)!, DeviceStopStream: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, CMIOStreamID) -> OSStatus)!, DeviceProcessAVCCommand: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, UnsafeMutablePointer<CMIODeviceAVCCommand>?) -> OSStatus)!, DeviceProcessRS422Command: (@convention(c) (CMIOHardwarePlugInRef?, CMIODeviceID, UnsafeMutablePointer<CMIODeviceRS422Command>?) -> OSStatus)!, StreamCopyBufferQueue: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID, CMIODeviceStreamQueueAlteredProc?, UnsafeMutableRawPointer?, UnsafeMutablePointer<Unmanaged<CMSimpleQueue>?>?) -> OSStatus)!, StreamDeckPlay: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID) -> OSStatus)!, StreamDeckStop: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID) -> OSStatus)!, StreamDeckJog: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID, Int32) -> OSStatus)!, StreamDeckCueTo: (@convention(c) (CMIOHardwarePlugInRef?, CMIOStreamID, Float64, DarwinBoolean) -> OSStatus)!)
}
@available(macOS 10.7, *)
func CMIOObjectCreate(_ owningPlugIn: CMIOHardwarePlugInRef!, _ owningObjectID: CMIOObjectID, _ classID: CMIOClassID, _ objectID: UnsafeMutablePointer<CMIOObjectID>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectsPublishedAndDied(_ owningPlugIn: CMIOHardwarePlugInRef!, _ owningObjectID: CMIOObjectID, _ numberPublishedCMIOObjects: UInt32, _ publishedCMIOObjects: UnsafePointer<CMIOObjectID>!, _ numberDeadCMIOObjects: UInt32, _ deadCMIOObjects: UnsafePointer<CMIOObjectID>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOObjectPropertiesChanged(_ owningPlugIn: CMIOHardwarePlugInRef!, _ objectID: CMIOObjectID, _ numberAddresses: UInt32, _ addresses: UnsafePointer<CMIOObjectPropertyAddress>!) -> OSStatus
