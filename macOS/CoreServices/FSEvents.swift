
typealias FSEventStreamCreateFlags = UInt32
var kFSEventStreamCreateFlagNone: Int { get }
var kFSEventStreamCreateFlagUseCFTypes: Int { get }
var kFSEventStreamCreateFlagNoDefer: Int { get }
var kFSEventStreamCreateFlagWatchRoot: Int { get }
@available(macOS 10.6, *)
var kFSEventStreamCreateFlagIgnoreSelf: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamCreateFlagFileEvents: Int { get }
@available(macOS 10.9, *)
var kFSEventStreamCreateFlagMarkSelf: Int { get }
@available(macOS 10.13, *)
var kFSEventStreamCreateFlagUseExtendedData: Int { get }
@available(macOS 10.15, *)
var kFSEventStreamCreateFlagFullHistory: Int { get }
var kFSEventStreamEventExtendedDataPathKey: String { get }
var kFSEventStreamEventExtendedFileIDKey: String { get }
typealias FSEventStreamEventFlags = UInt32
var kFSEventStreamEventFlagNone: Int { get }
var kFSEventStreamEventFlagMustScanSubDirs: Int { get }
var kFSEventStreamEventFlagUserDropped: Int { get }
var kFSEventStreamEventFlagKernelDropped: Int { get }
var kFSEventStreamEventFlagEventIdsWrapped: Int { get }
var kFSEventStreamEventFlagHistoryDone: Int { get }
var kFSEventStreamEventFlagRootChanged: Int { get }
var kFSEventStreamEventFlagMount: Int { get }
var kFSEventStreamEventFlagUnmount: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemCreated: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemRemoved: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemInodeMetaMod: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemRenamed: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemModified: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemFinderInfoMod: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemChangeOwner: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemXattrMod: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemIsFile: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemIsDir: Int { get }
@available(macOS 10.7, *)
var kFSEventStreamEventFlagItemIsSymlink: Int { get }
@available(macOS 10.9, *)
var kFSEventStreamEventFlagOwnEvent: Int { get }
@available(macOS 10.10, *)
var kFSEventStreamEventFlagItemIsHardlink: Int { get }
@available(macOS 10.10, *)
var kFSEventStreamEventFlagItemIsLastHardlink: Int { get }
@available(macOS 10.13, *)
var kFSEventStreamEventFlagItemCloned: Int { get }
typealias FSEventStreamEventId = UInt64
var kFSEventStreamEventIdSinceNow: UInt { get }
typealias FSEventStreamRef = OpaquePointer
typealias ConstFSEventStreamRef = OpaquePointer
struct FSEventStreamContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: CFAllocatorRetainCallBack?
  var release: CFAllocatorReleaseCallBack?
  var copyDescription: CFAllocatorCopyDescriptionCallBack?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: CFAllocatorRetainCallBack?, release: CFAllocatorReleaseCallBack?, copyDescription: CFAllocatorCopyDescriptionCallBack?)
}
typealias FSEventStreamCallback = @convention(c) (ConstFSEventStreamRef, UnsafeMutableRawPointer?, Int, UnsafeMutableRawPointer, UnsafePointer<FSEventStreamEventFlags>, UnsafePointer<FSEventStreamEventId>) -> Void
@available(macOS 10.5, *)
func FSEventStreamCreate(_ allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>?, _ pathsToWatch: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef?
@available(macOS 10.5, *)
func FSEventStreamCreateRelativeToDevice(_ allocator: CFAllocator?, _ callback: FSEventStreamCallback, _ context: UnsafeMutablePointer<FSEventStreamContext>?, _ deviceToWatch: dev_t, _ pathsToWatchRelativeToDevice: CFArray, _ sinceWhen: FSEventStreamEventId, _ latency: CFTimeInterval, _ flags: FSEventStreamCreateFlags) -> FSEventStreamRef?
@available(macOS 10.5, *)
func FSEventStreamGetLatestEventId(_ streamRef: ConstFSEventStreamRef) -> FSEventStreamEventId
@available(macOS 10.5, *)
func FSEventStreamGetDeviceBeingWatched(_ streamRef: ConstFSEventStreamRef) -> dev_t
@available(macOS 10.5, *)
func FSEventStreamCopyPathsBeingWatched(_ streamRef: ConstFSEventStreamRef) -> CFArray
@available(macOS 10.5, *)
func FSEventsGetCurrentEventId() -> FSEventStreamEventId
@available(macOS 10.5, *)
func FSEventsCopyUUIDForDevice(_ dev: dev_t) -> CFUUID?
@available(macOS 10.5, *)
func FSEventsGetLastEventIdForDeviceBeforeTime(_ dev: dev_t, _ time: CFAbsoluteTime) -> FSEventStreamEventId
@available(macOS 10.5, *)
func FSEventsPurgeEventsForDeviceUpToEventId(_ dev: dev_t, _ eventId: FSEventStreamEventId) -> Bool
@available(macOS 10.5, *)
func FSEventStreamRetain(_ streamRef: FSEventStreamRef)
@available(macOS 10.5, *)
func FSEventStreamRelease(_ streamRef: FSEventStreamRef)
@available(macOS 10.5, *)
func FSEventStreamScheduleWithRunLoop(_ streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.5, *)
func FSEventStreamUnscheduleFromRunLoop(_ streamRef: FSEventStreamRef, _ runLoop: CFRunLoop, _ runLoopMode: CFString)
@available(macOS 10.6, *)
func FSEventStreamSetDispatchQueue(_ streamRef: FSEventStreamRef, _ q: DispatchQueue?)
@available(macOS 10.5, *)
func FSEventStreamInvalidate(_ streamRef: FSEventStreamRef)
@available(macOS 10.5, *)
func FSEventStreamStart(_ streamRef: FSEventStreamRef) -> Bool
@available(macOS 10.5, *)
func FSEventStreamFlushAsync(_ streamRef: FSEventStreamRef) -> FSEventStreamEventId
@available(macOS 10.5, *)
func FSEventStreamFlushSync(_ streamRef: FSEventStreamRef)
@available(macOS 10.5, *)
func FSEventStreamStop(_ streamRef: FSEventStreamRef)
@available(macOS 10.5, *)
func FSEventStreamShow(_ streamRef: ConstFSEventStreamRef)
@available(macOS 10.5, *)
func FSEventStreamCopyDescription(_ streamRef: ConstFSEventStreamRef) -> CFString
@available(macOS 10.9, *)
func FSEventStreamSetExclusionPaths(_ streamRef: FSEventStreamRef, _ pathsToExclude: CFArray) -> Bool
