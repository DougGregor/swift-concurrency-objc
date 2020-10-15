
@available(macOS 10.8, *)
class CMClock : _CFObject {
}

@available(watchOS 6.0, *)
extension CMClock {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let missingRequiredParameter: NSError
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let unsupportedOperation: NSError
  }
}

@available(watchOS 6.0, *)
extension CMClock {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var hostTimeClock: CMClock { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static func convertHostTimeToSystemUnits(_ hostTime: CMTime) -> UInt64
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static func convertSystemUnitsToHostTime(_ systemUnits: UInt64) -> CMTime
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func anchorTime() throws -> (anchorTime: CMTime, referenceTime: CMTime)
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func mightDrift(relativeTo otherClock: CMClock) -> Bool
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func invalidate()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMClock : CMSyncProtocol {
}

@available(macOS 10.15, macCatalyst 13.0, *)
@available(iOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension CMClock : _CMAudioDeviceClockInitTrampoline {
}

extension CMClock {
  @available(macOS 10.15, macCatalyst 13.0, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  func setAudioDeviceUID(_ deviceUID: String?) throws
  @available(macOS 10.15, macCatalyst 13.0, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  func setAudioDeviceID(_ deviceID: AudioDeviceID) throws
  @available(macOS 10.15, macCatalyst 13.0, *)
  @available(iOS, unavailable)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  func audioDevice() throws -> (deviceUID: String?, deviceID: AudioDeviceID, trackingDefaultDevice: Bool)
}
@available(macOS 10.8, *)
class CMTimebase : _CFObject {
}

@available(watchOS 6.0, *)
extension CMTimebase {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let missingRequiredParameter: NSError
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let timerIntervalTooShort: NSError
    static let readOnly: NSError
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMTimebase : _CMTimebaseInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMTimebase {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var masterTimebase: CMTimebase? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var masterClock: CMClock? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var master: CMSyncProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var ultimateMasterClock: CMClock { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func time(withTimescale timescale: CMTimeScale, rounding: CMTimeRoundingMethod = .`default`) -> CMTime
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTime(_ time: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setAnchorTime(_ anchorTime: CMTime, referenceTime: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var rate: Double { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var timeAndRate: (time: CMTime, rate: Double) { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setRate(_ rate: Double) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setRateAndAnchorTime(rate: Double, anchorTime: CMTime, referenceTime: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var effectiveRate: Double { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func addTimer(_ timer: Timer, on runloop: RunLoop) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let veryLongTimeInterval: CFTimeInterval
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let farFuture: CFAbsoluteTime
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeTimer(_ timer: Timer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerNextFireTime(_ timer: Timer, fireTime: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerToFireImmediately(_ timer: Timer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func addTimer<T>(_ timer: T) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeTimer<T>(_ timer: T) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerNextFireTime<T>(_ timer: T, fireTime: CMTime) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerToFireImmediately<T>(_ timer: T) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func notificationBarrier() throws
}

@available(watchOS 6.0, *)
extension CMTimebase {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let effectiveRateChanged: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let timeJumped: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct NotificationKey : _CMObjectiveCBridgeableWithRawValue {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    static let eventTime: CMTimebase.NotificationKey
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMTimebase : CMSyncProtocol {
}
@available(macOS 10.8, *)
typealias CMClockOrTimebase = CFTypeRef
var kCMClockError_MissingRequiredParameter: OSStatus { get }
var kCMClockError_InvalidParameter: OSStatus { get }
var kCMClockError_AllocationFailed: OSStatus { get }
var kCMClockError_UnsupportedOperation: OSStatus { get }
var kCMTimebaseError_MissingRequiredParameter: OSStatus { get }
var kCMTimebaseError_InvalidParameter: OSStatus { get }
var kCMTimebaseError_AllocationFailed: OSStatus { get }
var kCMTimebaseError_TimerIntervalTooShort: OSStatus { get }
var kCMTimebaseError_ReadOnly: OSStatus { get }
var kCMSyncError_MissingRequiredParameter: OSStatus { get }
var kCMSyncError_InvalidParameter: OSStatus { get }
var kCMSyncError_AllocationFailed: OSStatus { get }
var kCMSyncError_RateMustBeNonZero: OSStatus { get }
@available(macOS 10.8, *)
func CMClockGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
func CMClockGetHostTimeClock() -> CMClock
@available(macOS 10.8, *)
func CMClockConvertHostTimeToSystemUnits(_ hostTime: CMTime) -> UInt64
@available(macOS 10.8, *)
func CMClockMakeHostTimeFromSystemUnits(_ hostTime: UInt64) -> CMTime
@available(macOS 10.8, *)
func CMClockGetTime(_ clock: CMClock) -> CMTime
@available(macOS 10.8, *)
func CMClockGetAnchorTime(_ clock: CMClock, clockTimeOut: UnsafeMutablePointer<CMTime>, referenceClockTimeOut: UnsafeMutablePointer<CMTime>) -> OSStatus
@available(macOS 10.8, *)
func CMClockMightDrift(_ clock: CMClock, otherClock: CMClock) -> Bool
@available(macOS 10.8, *)
func CMClockInvalidate(_ clock: CMClock)
@available(macOS 10.8, *)
func CMTimebaseGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
func CMTimebaseCreateWithMasterClock(allocator: CFAllocator?, masterClock: CMClock, timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseCreateWithMasterTimebase(allocator: CFAllocator?, masterTimebase: CMTimebase, timebaseOut: UnsafeMutablePointer<CMTimebase?>) -> OSStatus
@available(macOS 10.11, *)
func CMTimebaseCopyMasterTimebase(_ timebase: CMTimebase) -> CMTimebase?
@available(macOS 10.11, *)
func CMTimebaseCopyMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(macOS 10.11, *)
func CMTimebaseCopyMaster(_ timebase: CMTimebase) -> CMClockOrTimebase
@available(macOS 10.11, *)
func CMTimebaseCopyUltimateMasterClock(_ timebase: CMTimebase) -> CMClock
@available(macOS, introduced: 10.8, deprecated: 10.11, renamed: "CMTimebaseCopyMasterTimebase(_:)")
func CMTimebaseGetMasterTimebase(_ timebase: CMTimebase) -> CMTimebase?
@available(macOS, introduced: 10.8, deprecated: 10.11, renamed: "CMTimebaseCopyMasterClock(_:)")
func CMTimebaseGetMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(macOS, introduced: 10.8, deprecated: 10.11, renamed: "CMTimebaseCopyMaster(_:)")
func CMTimebaseGetMaster(_ timebase: CMTimebase) -> CMClockOrTimebase?
@available(macOS, introduced: 10.8, deprecated: 10.11, renamed: "CMTimebaseCopyUltimateMasterClock(_:)")
func CMTimebaseGetUltimateMasterClock(_ timebase: CMTimebase) -> CMClock?
@available(macOS 10.8, *)
func CMTimebaseSetMasterClock(_ timebase: CMTimebase, _ newMasterClock: CMClock) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetMasterTimebase(_ timebase: CMTimebase, _ newMasterTimebase: CMTimebase) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseGetTime(_ timebase: CMTimebase) -> CMTime
@available(macOS 10.8, *)
func CMTimebaseGetTimeWithTimeScale(_ timebase: CMTimebase, timescale: CMTimeScale, method: CMTimeRoundingMethod) -> CMTime
@available(macOS 10.8, *)
func CMTimebaseSetTime(_ timebase: CMTimebase, time: CMTime) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetAnchorTime(_ timebase: CMTimebase, timebaseTime: CMTime, immediateMasterTime: CMTime) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseGetRate(_ timebase: CMTimebase) -> Float64
@available(macOS 10.8, *)
func CMTimebaseGetTimeAndRate(_ timebase: CMTimebase, timeOut: UnsafeMutablePointer<CMTime>?, rateOut: UnsafeMutablePointer<Float64>?) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetRate(_ timebase: CMTimebase, rate: Float64) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetRateAndAnchorTime(_ timebase: CMTimebase, rate: Float64, anchorTime timebaseTime: CMTime, immediateMasterTime: CMTime) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseGetEffectiveRate(_ timebase: CMTimebase) -> Float64
@available(macOS 10.8, *)
func CMTimebaseAddTimer(_ timebase: CMTimebase, timer: CFRunLoopTimer, runloop: CFRunLoop) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseRemoveTimer(_ timebase: CMTimebase, timer: CFRunLoopTimer) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetTimerNextFireTime(_ timebase: CMTimebase, timer: CFRunLoopTimer, fireTime: CMTime, flags: UInt32) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetTimerToFireImmediately(_ timebase: CMTimebase, timer: CFRunLoopTimer) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseAddTimerDispatchSource(_ timebase: CMTimebase, timerSource: DispatchSource) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseRemoveTimerDispatchSource(_ timebase: CMTimebase, timerSource: DispatchSource) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetTimerDispatchSourceNextFireTime(_ timebase: CMTimebase, timerSource: DispatchSource, fireTime: CMTime, flags: UInt32) -> OSStatus
@available(macOS 10.8, *)
func CMTimebaseSetTimerDispatchSourceToFireImmediately(_ timebase: CMTimebase, timerSource: DispatchSource) -> OSStatus
@available(macOS 10.8, *)
func CMSyncGetRelativeRate(_ ofClockOrTimebase: CMClockOrTimebase, relativeTo relativeToClockOrTimebase: CMClockOrTimebase) -> Float64
@available(macOS 10.8, *)
func CMSyncGetRelativeRateAndAnchorTime(_ ofClockOrTimebase: CMClockOrTimebase, relativeTo relativeToClockOrTimebase: CMClockOrTimebase, relativeRateOut outRelativeRate: UnsafeMutablePointer<Float64>?, anchorTimeOut outOfClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>?, relativeToAnchorTimeOut outRelativeToClockOrTimebaseAnchorTime: UnsafeMutablePointer<CMTime>?) -> OSStatus
@available(macOS 10.8, *)
func CMSyncConvertTime(_ time: CMTime, from fromClockOrTimebase: CMClockOrTimebase, to toClockOrTimebase: CMClockOrTimebase) -> CMTime
@available(macOS 10.8, *)
func CMSyncMightDrift(_ clockOrTimebase1: CMClockOrTimebase, _ clockOrTimebase2: CMClockOrTimebase) -> Bool
@available(macOS 10.8, *)
func CMSyncGetTime(_ clockOrTimebase: CMClockOrTimebase) -> CMTime
@available(macOS 10.8, *)
func CMTimebaseNotificationBarrier(_ timebase: CMTimebase) -> OSStatus
@available(macOS 10.8, *)
let kCMTimebaseNotification_EffectiveRateChanged: CFString
@available(macOS 10.8, *)
let kCMTimebaseNotification_TimeJumped: CFString
@available(macOS 10.9, *)
let kCMTimebaseNotificationKey_EventTime: CFString
