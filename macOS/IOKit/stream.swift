
typealias IOStreamBufferID = UInt32
var kIOStreamBufferIDInvalid: Int32 { get }
struct __IOStreamBufferQueueEntry {
  var bufferID: IOStreamBufferID
  var dataOffset: UInt32
  var dataLength: UInt32
  var controlOffset: UInt32
  var controlLength: UInt32
  var reserved: (UInt32, UInt32, UInt32)
  init()
  init(bufferID: IOStreamBufferID, dataOffset: UInt32, dataLength: UInt32, controlOffset: UInt32, controlLength: UInt32, reserved: (UInt32, UInt32, UInt32))
}
typealias IOStreamBufferQueueEntry = __IOStreamBufferQueueEntry
struct __IOStreamBufferQueue {
  var entryCount: UInt32
  var headIndex: UInt32
  var tailIndex: UInt32
  var reserved: UInt32
  var queue: ()
  init()
  init(entryCount: UInt32, headIndex: UInt32, tailIndex: UInt32, reserved: UInt32, queue: ())
}
typealias IOStreamBufferQueue = __IOStreamBufferQueue
var kIOStreamMemoryTypeOutputQueue: UInt32 { get }
var kIOStreamMemoryTypeInputQueue: UInt32 { get }
var kIOStreamMemoryTypeBufferData: UInt32 { get }
var kIOStreamMemoryTypeBufferControl: UInt32 { get }
var kIOStreamBufferIDMask: UInt32 { get }
var kIOStreamMemoryTypeMask: UInt32 { get }
var kIOStreamPortTypeOutput: Int { get }
var kIOStreamPortTypeInput: Int { get }
var kIOStreamOptionOpenExclusive: Int { get }
var kIOStreamOptionOpenShared: Int { get }
var kIOStreamMethodOpen: Int { get }
var kIOStreamMethodClose: Int { get }
var kIOStreamMethodStart: Int { get }
var kIOStreamMethodStop: Int { get }
var kIOStreamMethodSuspend: Int { get }
var kIOStreamMethodGetMode: Int { get }
var kIOStreamMethodSetMode: Int { get }
var kIOStreamMethodGetBufferCount: Int { get }
var kIOStreamEnqueueInputTrap: Int { get }
var kIOStreamEnqueueInputSyncTrap: Int { get }
struct IOStreamMode : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOStreamModeInput: IOStreamMode { get }
var kIOStreamModeOutput: IOStreamMode { get }
var kIOStreamModeInputOutput: IOStreamMode { get }
typealias IOStreamRef = UnsafeMutablePointer<UnsafeMutablePointer<IOStreamInterface_v1_t>?>
typealias IOStreamOutputCallback = @convention(c) (IOStreamRef?, UnsafeMutableRawPointer?) -> Void
struct IOStreamInterface_v1_t {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Version: UInt32
  var Revision: UInt32
  var Open: (@convention(c) (IOStreamRef?, IOOptionBits) -> IOReturn)!
  var Close: (@convention(c) (IOStreamRef?) -> IOReturn)!
  var GetBufferCount: (@convention(c) (IOStreamRef?) -> IOItemCount)!
  var GetBufferInfo: (@convention(c) (IOStreamRef?, IOStreamBufferID, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutablePointer<IOByteCount>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutablePointer<IOByteCount>?) -> IOReturn)!
  var GetOutputPort: (@convention(c) (IOStreamRef?) -> Unmanaged<CFMachPort>?)!
  var GetInputPort: (@convention(c) (IOStreamRef?) -> Unmanaged<CFMachPort>?)!
  var GetOutputQueue: (@convention(c) (IOStreamRef?) -> UnsafeMutablePointer<IOStreamBufferQueue>?)!
  var GetInputQueue: (@convention(c) (IOStreamRef?) -> UnsafeMutablePointer<IOStreamBufferQueue>?)!
  var SetOutputCallback: (@convention(c) (IOStreamRef?, IOStreamOutputCallback?, UnsafeMutableRawPointer?) -> IOReturn)!
  var GetRunLoopSource: (@convention(c) (IOStreamRef?) -> Unmanaged<CFRunLoopSource>?)!
  var AddToRunLoop: (@convention(c) (IOStreamRef?, CFRunLoop?) -> IOReturn)!
  var RemoveFromRunLoop: (@convention(c) (IOStreamRef?, CFRunLoop?) -> IOReturn)!
  var DequeueOutputEntry: (@convention(c) (IOStreamRef?, UnsafeMutablePointer<IOStreamBufferQueueEntry>?) -> IOReturn)!
  var EnqueueInputEntry: (@convention(c) (IOStreamRef?, UnsafeMutablePointer<IOStreamBufferQueueEntry>?) -> IOReturn)!
  var EnqueueInputBuffer: (@convention(c) (IOStreamRef?, IOStreamBufferID, IOByteCount, IOByteCount, IOByteCount, IOByteCount) -> IOReturn)!
  var SendInputNotification: (@convention(c) (IOStreamRef?, UInt32) -> IOReturn)!
  var SendInputSyncNotification: (@convention(c) (IOStreamRef?, UInt32) -> IOReturn)!
  var GetDataBuffer: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> UnsafeMutableRawPointer?)!
  var GetDataBufferLength: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> IOByteCount)!
  var GetControlBuffer: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> UnsafeMutableRawPointer?)!
  var GetControlBufferLength: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> IOByteCount)!
  var StartStream: (@convention(c) (IOStreamRef?) -> IOReturn)!
  var StopStream: (@convention(c) (IOStreamRef?) -> IOReturn)!
  var SuspendStream: (@convention(c) (IOStreamRef?) -> IOReturn)!
  var GetMode: (@convention(c) (IOStreamRef?) -> IOStreamMode)!
  var SetMode: (@convention(c) (IOStreamRef?, IOStreamMode) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Version: UInt32, Revision: UInt32, Open: (@convention(c) (IOStreamRef?, IOOptionBits) -> IOReturn)!, Close: (@convention(c) (IOStreamRef?) -> IOReturn)!, GetBufferCount: (@convention(c) (IOStreamRef?) -> IOItemCount)!, GetBufferInfo: (@convention(c) (IOStreamRef?, IOStreamBufferID, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutablePointer<IOByteCount>?, UnsafeMutablePointer<UnsafeMutableRawPointer?>?, UnsafeMutablePointer<IOByteCount>?) -> IOReturn)!, GetOutputPort: (@convention(c) (IOStreamRef?) -> Unmanaged<CFMachPort>?)!, GetInputPort: (@convention(c) (IOStreamRef?) -> Unmanaged<CFMachPort>?)!, GetOutputQueue: (@convention(c) (IOStreamRef?) -> UnsafeMutablePointer<IOStreamBufferQueue>?)!, GetInputQueue: (@convention(c) (IOStreamRef?) -> UnsafeMutablePointer<IOStreamBufferQueue>?)!, SetOutputCallback: (@convention(c) (IOStreamRef?, IOStreamOutputCallback?, UnsafeMutableRawPointer?) -> IOReturn)!, GetRunLoopSource: (@convention(c) (IOStreamRef?) -> Unmanaged<CFRunLoopSource>?)!, AddToRunLoop: (@convention(c) (IOStreamRef?, CFRunLoop?) -> IOReturn)!, RemoveFromRunLoop: (@convention(c) (IOStreamRef?, CFRunLoop?) -> IOReturn)!, DequeueOutputEntry: (@convention(c) (IOStreamRef?, UnsafeMutablePointer<IOStreamBufferQueueEntry>?) -> IOReturn)!, EnqueueInputEntry: (@convention(c) (IOStreamRef?, UnsafeMutablePointer<IOStreamBufferQueueEntry>?) -> IOReturn)!, EnqueueInputBuffer: (@convention(c) (IOStreamRef?, IOStreamBufferID, IOByteCount, IOByteCount, IOByteCount, IOByteCount) -> IOReturn)!, SendInputNotification: (@convention(c) (IOStreamRef?, UInt32) -> IOReturn)!, SendInputSyncNotification: (@convention(c) (IOStreamRef?, UInt32) -> IOReturn)!, GetDataBuffer: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> UnsafeMutableRawPointer?)!, GetDataBufferLength: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> IOByteCount)!, GetControlBuffer: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> UnsafeMutableRawPointer?)!, GetControlBufferLength: (@convention(c) (IOStreamRef?, IOStreamBufferID) -> IOByteCount)!, StartStream: (@convention(c) (IOStreamRef?) -> IOReturn)!, StopStream: (@convention(c) (IOStreamRef?) -> IOReturn)!, SuspendStream: (@convention(c) (IOStreamRef?) -> IOReturn)!, GetMode: (@convention(c) (IOStreamRef?) -> IOStreamMode)!, SetMode: (@convention(c) (IOStreamRef?, IOStreamMode) -> IOReturn)!)
}
typealias IOStreamInterface = IOStreamInterface_v1_t
