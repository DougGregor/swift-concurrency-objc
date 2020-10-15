
struct CFRunLoopMode : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
class CFRunLoop : _CFObject {
}
class CFRunLoopSource : _CFObject {
}
class CFRunLoopObserver : _CFObject {
}
class CFRunLoopTimer : _CFObject {
}
enum CFRunLoopRunResult : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case finished
  case stopped
  case timedOut
  case handledSource
}
struct CFRunLoopActivity : OptionSet {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var entry: CFRunLoopActivity { get }
  static var beforeTimers: CFRunLoopActivity { get }
  static var beforeSources: CFRunLoopActivity { get }
  static var beforeWaiting: CFRunLoopActivity { get }
  static var afterWaiting: CFRunLoopActivity { get }
  static var exit: CFRunLoopActivity { get }
  static var allActivities: CFRunLoopActivity { get }
}
extension CFRunLoopMode {
  static let defaultMode: CFRunLoopMode!
  static let commonModes: CFRunLoopMode!
}
func CFRunLoopGetTypeID() -> CFTypeID
func CFRunLoopGetCurrent() -> CFRunLoop!
func CFRunLoopGetMain() -> CFRunLoop!
func CFRunLoopCopyCurrentMode(_ rl: CFRunLoop!) -> CFRunLoopMode!
func CFRunLoopCopyAllModes(_ rl: CFRunLoop!) -> CFArray!
func CFRunLoopAddCommonMode(_ rl: CFRunLoop!, _ mode: CFRunLoopMode!)
func CFRunLoopGetNextTimerFireDate(_ rl: CFRunLoop!, _ mode: CFRunLoopMode!) -> CFAbsoluteTime
func CFRunLoopRun()
func CFRunLoopRunInMode(_ mode: CFRunLoopMode!, _ seconds: CFTimeInterval, _ returnAfterSourceHandled: Bool) -> CFRunLoopRunResult
func CFRunLoopIsWaiting(_ rl: CFRunLoop!) -> Bool
func CFRunLoopWakeUp(_ rl: CFRunLoop!)
func CFRunLoopStop(_ rl: CFRunLoop!)
@available(watchOS 2.0, *)
func CFRunLoopPerformBlock(_ rl: CFRunLoop!, _ mode: CFTypeRef!, _ block: (() -> Void)!)
func CFRunLoopContainsSource(_ rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFRunLoopMode!) -> Bool
func CFRunLoopAddSource(_ rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFRunLoopMode!)
func CFRunLoopRemoveSource(_ rl: CFRunLoop!, _ source: CFRunLoopSource!, _ mode: CFRunLoopMode!)
func CFRunLoopContainsObserver(_ rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFRunLoopMode!) -> Bool
func CFRunLoopAddObserver(_ rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFRunLoopMode!)
func CFRunLoopRemoveObserver(_ rl: CFRunLoop!, _ observer: CFRunLoopObserver!, _ mode: CFRunLoopMode!)
func CFRunLoopContainsTimer(_ rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFRunLoopMode!) -> Bool
func CFRunLoopAddTimer(_ rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFRunLoopMode!)
func CFRunLoopRemoveTimer(_ rl: CFRunLoop!, _ timer: CFRunLoopTimer!, _ mode: CFRunLoopMode!)
struct CFRunLoopSourceContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  var equal: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafeRawPointer?) -> CFHashCode)!
  var schedule: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?, CFRunLoopMode?) -> Void)!
  var cancel: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?, CFRunLoopMode?) -> Void)!
  var perform: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!, equal: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean)!, hash: (@convention(c) (UnsafeRawPointer?) -> CFHashCode)!, schedule: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?, CFRunLoopMode?) -> Void)!, cancel: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?, CFRunLoopMode?) -> Void)!, perform: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!)
}
struct CFRunLoopSourceContext1 {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  var equal: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean)!
  var hash: (@convention(c) (UnsafeRawPointer?) -> CFHashCode)!
  var getPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!
  var perform: (@convention(c) (UnsafeMutableRawPointer?, CFIndex, CFAllocator?, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!, equal: (@convention(c) (UnsafeRawPointer?, UnsafeRawPointer?) -> DarwinBoolean)!, hash: (@convention(c) (UnsafeRawPointer?) -> CFHashCode)!, getPort: (@convention(c) (UnsafeMutableRawPointer?) -> mach_port_t)!, perform: (@convention(c) (UnsafeMutableRawPointer?, CFIndex, CFAllocator?, UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!)
}
func CFRunLoopSourceGetTypeID() -> CFTypeID
func CFRunLoopSourceCreate(_ allocator: CFAllocator!, _ order: CFIndex, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>!) -> CFRunLoopSource!
func CFRunLoopSourceGetOrder(_ source: CFRunLoopSource!) -> CFIndex
func CFRunLoopSourceInvalidate(_ source: CFRunLoopSource!)
func CFRunLoopSourceIsValid(_ source: CFRunLoopSource!) -> Bool
func CFRunLoopSourceGetContext(_ source: CFRunLoopSource!, _ context: UnsafeMutablePointer<CFRunLoopSourceContext>!)
func CFRunLoopSourceSignal(_ source: CFRunLoopSource!)
struct CFRunLoopObserverContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!)
}
typealias CFRunLoopObserverCallBack = @convention(c) (CFRunLoopObserver?, CFRunLoopActivity, UnsafeMutableRawPointer?) -> Void
func CFRunLoopObserverGetTypeID() -> CFTypeID
func CFRunLoopObserverCreate(_ allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ callout: CFRunLoopObserverCallBack!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>!) -> CFRunLoopObserver!
@available(watchOS 2.0, *)
func CFRunLoopObserverCreateWithHandler(_ allocator: CFAllocator!, _ activities: CFOptionFlags, _ repeats: Bool, _ order: CFIndex, _ block: ((CFRunLoopObserver?, CFRunLoopActivity) -> Void)!) -> CFRunLoopObserver!
func CFRunLoopObserverGetActivities(_ observer: CFRunLoopObserver!) -> CFOptionFlags
func CFRunLoopObserverDoesRepeat(_ observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetOrder(_ observer: CFRunLoopObserver!) -> CFIndex
func CFRunLoopObserverInvalidate(_ observer: CFRunLoopObserver!)
func CFRunLoopObserverIsValid(_ observer: CFRunLoopObserver!) -> Bool
func CFRunLoopObserverGetContext(_ observer: CFRunLoopObserver!, _ context: UnsafeMutablePointer<CFRunLoopObserverContext>!)
struct CFRunLoopTimerContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer!
  var retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!
  var release: (@convention(c) (UnsafeRawPointer?) -> Void)!
  var copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer!, retain: (@convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?)!, release: (@convention(c) (UnsafeRawPointer?) -> Void)!, copyDescription: (@convention(c) (UnsafeRawPointer?) -> Unmanaged<CFString>?)!)
}
typealias CFRunLoopTimerCallBack = @convention(c) (CFRunLoopTimer?, UnsafeMutableRawPointer?) -> Void
func CFRunLoopTimerGetTypeID() -> CFTypeID
func CFRunLoopTimerCreate(_ allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ callout: CFRunLoopTimerCallBack!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>!) -> CFRunLoopTimer!
@available(watchOS 2.0, *)
func CFRunLoopTimerCreateWithHandler(_ allocator: CFAllocator!, _ fireDate: CFAbsoluteTime, _ interval: CFTimeInterval, _ flags: CFOptionFlags, _ order: CFIndex, _ block: ((CFRunLoopTimer?) -> Void)!) -> CFRunLoopTimer!
func CFRunLoopTimerGetNextFireDate(_ timer: CFRunLoopTimer!) -> CFAbsoluteTime
func CFRunLoopTimerSetNextFireDate(_ timer: CFRunLoopTimer!, _ fireDate: CFAbsoluteTime)
func CFRunLoopTimerGetInterval(_ timer: CFRunLoopTimer!) -> CFTimeInterval
func CFRunLoopTimerDoesRepeat(_ timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetOrder(_ timer: CFRunLoopTimer!) -> CFIndex
func CFRunLoopTimerInvalidate(_ timer: CFRunLoopTimer!)
func CFRunLoopTimerIsValid(_ timer: CFRunLoopTimer!) -> Bool
func CFRunLoopTimerGetContext(_ timer: CFRunLoopTimer!, _ context: UnsafeMutablePointer<CFRunLoopTimerContext>!)
@available(watchOS 2.0, *)
func CFRunLoopTimerGetTolerance(_ timer: CFRunLoopTimer!) -> CFTimeInterval
@available(watchOS 2.0, *)
func CFRunLoopTimerSetTolerance(_ timer: CFRunLoopTimer!, _ tolerance: CFTimeInterval)
