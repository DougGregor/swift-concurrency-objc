
var kCMBufferQueueError_AllocationFailed: OSStatus { get }
var kCMBufferQueueError_RequiredParameterMissing: OSStatus { get }
var kCMBufferQueueError_InvalidCMBufferCallbacksStruct: OSStatus { get }
var kCMBufferQueueError_EnqueueAfterEndOfData: OSStatus { get }
var kCMBufferQueueError_QueueIsFull: OSStatus { get }
var kCMBufferQueueError_BadTriggerDuration: OSStatus { get }
var kCMBufferQueueError_CannotModifyQueueFromTriggerCallback: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerCondition: OSStatus { get }
var kCMBufferQueueError_InvalidTriggerToken: OSStatus { get }
var kCMBufferQueueError_InvalidBuffer: OSStatus { get }
@available(macOS 10.7, *)
class CMBufferQueue : _CFObject {
}

@available(watchOS 6.0, *)
extension CMBufferQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Handlers {
    let getDecodeTimeStamp: CMBufferGetTimeHandler?
    let getPresentationTimeStamp: CMBufferGetTimeHandler?
    let getDuration: CMBufferGetTimeHandler
    let isDataReady: CMBufferGetBooleanHandler?
    let compare: CMBufferCompareHandler?
    let dataBecameReadyNotification: String?
    let getSize: CMBufferGetSizeHandler?
    struct Builder {
      var dataBecameReadyNotification: String?
      mutating func getDecodeTimeStamp(_ body: @escaping CMBufferGetTimeHandler)
      mutating func getPresentationTimeStamp(_ body: @escaping CMBufferGetTimeHandler)
      mutating func getDuration(_ body: @escaping CMBufferGetTimeHandler)
      mutating func isDataReady(_ body: @escaping CMBufferGetBooleanHandler)
      mutating func compare(_ body: @escaping CMBufferCompareHandler)
      mutating func getSize(_ body: @escaping CMBufferGetSizeHandler)
    }
    init(withHandlers body: (inout CMBufferQueue.Handlers.Builder) -> Void)
    func withHandlers(_ body: (inout CMBufferQueue.Handlers.Builder) -> Void) -> CMBufferQueue.Handlers
    static let unsortedSampleBuffers: CMBufferQueue.Handlers
    static let outputPTSSortedSampleBuffers: CMBufferQueue.Handlers
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBufferQueue : _CMBufferQueueInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMBufferQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let allocationFailed: NSError
    static let requiredParameterMissing: NSError
    static let invalidCMBufferCallbacksStruct: NSError
    static let enqueueAfterEndOfData: NSError
    static let queueIsFull: NSError
    static let badTriggerDuration: NSError
    static let cannotModifyQueueFromTriggerCallback: NSError
    static let invalidTriggerCondition: NSError
    static let invalidTriggerToken: NSError
    static let invalidBuffer: NSError
  }
}

@available(watchOS 6.0, *)
extension CMBufferQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  typealias TriggerToken = CMBufferQueueTriggerToken
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  enum TriggerCondition {
    case whenDurationBecomesLessThan(CMTime)
    case whenDurationBecomesLessThanOrEqualTo(CMTime)
    case whenDurationBecomesGreaterThan(CMTime)
    case whenDurationBecomesGreaterThanOrEqualTo(CMTime)
    case whenMinPresentationTimeStampChanges
    case whenMaxPresentationTimeStampChanges
    case whenDataBecomesReady
    case whenEndOfDataReached
    case whenReset
    case whenBufferCountBecomesLessThan(CMItemCount)
    case whenBufferCountBecomesGreaterThan(CMItemCount)
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func enqueue(_ buffer: CMBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dequeue() -> CMBuffer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dequeueIfDataReady() -> CMBuffer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var head: CMBuffer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isEmpty: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func markEndOfData() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var containsEndOfData: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isAtEndOfData: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func reset() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func reset(_ body: (CMBuffer) throws -> ()) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var bufferCount: CMItemCount { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var duration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var minDecodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var firstDecodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var minPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var firstPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var maxPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var endPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var totalSize: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func installTrigger(condition: CMBufferQueue.TriggerCondition, _ body: CMBufferQueueTriggerHandler? = nil) throws -> CMBufferQueue.TriggerToken
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeTrigger(_ triggerToken: CMBufferQueue.TriggerToken) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func testTrigger(_ triggerToken: CMBufferQueue.TriggerToken) -> Bool
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Buffers : Sequence {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var buffers: CMBufferQueue.Buffers { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setValidationHandler(_ body: @escaping (CMBufferQueue, CMBuffer) throws -> Void)
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  class var typeID: CFTypeID { get }
}
@available(macOS 10.7, *)
typealias CMBuffer = CFTypeRef
@available(macOS 10.7, *)
typealias CMBufferGetTimeCallback = @convention(c) (CMBuffer, UnsafeMutableRawPointer?) -> CMTime
@available(macOS 10.14.4, *)
typealias CMBufferGetTimeHandler = (CMBuffer) -> CMTime
@available(macOS 10.7, *)
typealias CMBufferGetBooleanCallback = @convention(c) (CMBuffer, UnsafeMutableRawPointer?) -> DarwinBoolean
@available(macOS 10.14.4, *)
typealias CMBufferGetBooleanHandler = (CMBuffer) -> Bool
@available(macOS 10.7, *)
typealias CMBufferCompareCallback = @convention(c) (CMBuffer, CMBuffer, UnsafeMutableRawPointer?) -> CFComparisonResult
@available(macOS 10.14.4, *)
typealias CMBufferCompareHandler = (CMBuffer, CMBuffer) -> CFComparisonResult
@available(macOS 10.10, *)
typealias CMBufferGetSizeCallback = @convention(c) (CMBuffer, UnsafeMutableRawPointer?) -> Int
@available(macOS 10.14.4, *)
typealias CMBufferGetSizeHandler = (CMBuffer) -> Int
@available(macOS 10.7, *)
struct CMBufferCallbacks {
  var version: UInt32
  var refcon: UnsafeMutableRawPointer?
  var getDecodeTimeStamp: CMBufferGetTimeCallback?
  var getPresentationTimeStamp: CMBufferGetTimeCallback?
  var getDuration: CMBufferGetTimeCallback
  var isDataReady: CMBufferGetBooleanCallback?
  var compare: CMBufferCompareCallback?
  var dataBecameReadyNotification: Unmanaged<CFString>?
  var getSize: CMBufferGetSizeCallback?
  init(version: UInt32, refcon: UnsafeMutableRawPointer?, getDecodeTimeStamp: CMBufferGetTimeCallback?, getPresentationTimeStamp: CMBufferGetTimeCallback?, getDuration: CMBufferGetTimeCallback, isDataReady: CMBufferGetBooleanCallback?, compare: CMBufferCompareCallback?, dataBecameReadyNotification: Unmanaged<CFString>?, getSize: CMBufferGetSizeCallback?)
}
@available(macOS 10.7, *)
func CMBufferQueueGetCallbacksForUnsortedSampleBuffers() -> UnsafePointer<CMBufferCallbacks>
@available(macOS 10.7, *)
func CMBufferQueueGetCallbacksForSampleBuffersSortedByOutputPTS() -> UnsafePointer<CMBufferCallbacks>
@available(macOS 10.7, *)
func CMBufferQueueCreate(allocator: CFAllocator?, capacity: CMItemCount, callbacks: UnsafePointer<CMBufferCallbacks>, queueOut: UnsafeMutablePointer<CMBufferQueue?>) -> OSStatus
@available(macOS 10.14.4, *)
func CMBufferQueueCreateWithHandlers(_ allocator: CFAllocator?, _ capacity: CMItemCount, _ handlers: OpaquePointer, _ queueOut: UnsafeMutablePointer<CMBufferQueue?>) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func CMBufferQueueEnqueue(_ queue: CMBufferQueue, buffer buf: CMBuffer) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueDequeue(_ queue: CMBufferQueue) -> CMBuffer?
@available(macOS 10.7, *)
func CMBufferQueueDequeueIfDataReady(_ queue: CMBufferQueue) -> CMBuffer?
@available(macOS 10.7, *)
func CMBufferQueueGetHead(_ queue: CMBufferQueue) -> CMBuffer?
@available(macOS 10.7, *)
func CMBufferQueueIsEmpty(_ queue: CMBufferQueue) -> Bool
@available(macOS 10.7, *)
func CMBufferQueueMarkEndOfData(_ queue: CMBufferQueue) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueContainsEndOfData(_ queue: CMBufferQueue) -> Bool
@available(macOS 10.7, *)
func CMBufferQueueIsAtEndOfData(_ queue: CMBufferQueue) -> Bool
@available(macOS 10.7, *)
func CMBufferQueueReset(_ queue: CMBufferQueue) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueResetWithCallback(_ queue: CMBufferQueue, callback: @convention(c) (CMBuffer, UnsafeMutableRawPointer?) -> Void, refcon: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueGetBufferCount(_ queue: CMBufferQueue) -> CMItemCount
@available(macOS 10.7, *)
func CMBufferQueueGetDuration(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.7, *)
func CMBufferQueueGetMinDecodeTimeStamp(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.7, *)
func CMBufferQueueGetFirstDecodeTimeStamp(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.7, *)
func CMBufferQueueGetMinPresentationTimeStamp(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.7, *)
func CMBufferQueueGetFirstPresentationTimeStamp(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.7, *)
func CMBufferQueueGetMaxPresentationTimeStamp(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.7, *)
func CMBufferQueueGetEndPresentationTimeStamp(_ queue: CMBufferQueue) -> CMTime
@available(macOS 10.10, *)
func CMBufferQueueGetTotalSize(_ queue: CMBufferQueue) -> Int
@available(macOS 10.7, *)
typealias CMBufferQueueTriggerToken = OpaquePointer
@available(macOS 10.7, *)
typealias CMBufferQueueTriggerCallback = @convention(c) (UnsafeMutableRawPointer?, CMBufferQueueTriggerToken) -> Void
@available(macOS 10.14.4, *)
typealias CMBufferQueueTriggerHandler = (CMBufferQueueTriggerToken) -> Void
@available(macOS 10.7, *)
typealias CMBufferQueueTriggerCondition = Int32
var kCMBufferQueueTrigger_WhenDurationBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesLessThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualTo: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMinPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenMaxPresentationTimeStampChanges: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDataBecomesReady: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenEndOfDataReached: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenReset: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesLessThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenBufferCountBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
var kCMBufferQueueTrigger_WhenDurationBecomesGreaterThanOrEqualToAndBufferCountBecomesGreaterThan: CMBufferQueueTriggerCondition { get }
@available(macOS 10.7, *)
func CMBufferQueueInstallTrigger(_ queue: CMBufferQueue, callback: CMBufferQueueTriggerCallback?, refcon: UnsafeMutableRawPointer?, condition: CMBufferQueueTriggerCondition, time: CMTime, triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken?>?) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueInstallTriggerWithIntegerThreshold(_ queue: CMBufferQueue, callback: CMBufferQueueTriggerCallback?, refcon: UnsafeMutableRawPointer?, condition: CMBufferQueueTriggerCondition, threshold: CMItemCount, triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken?>?) -> OSStatus
@available(macOS 10.14.4, *)
func CMBufferQueueInstallTriggerHandler(_ queue: CMBufferQueue, _ condition: CMBufferQueueTriggerCondition, _ time: CMTime, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken?>?, _ handler: CMBufferQueueTriggerHandler?) -> OSStatus
@available(macOS 10.14.4, *)
func CMBufferQueueInstallTriggerHandlerWithIntegerThreshold(_ queue: CMBufferQueue, _ condition: CMBufferQueueTriggerCondition, _ threshold: CMItemCount, _ triggerTokenOut: UnsafeMutablePointer<CMBufferQueueTriggerToken?>?, _ handler: CMBufferQueueTriggerHandler?) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueRemoveTrigger(_ queue: CMBufferQueue, triggerToken: CMBufferQueueTriggerToken) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueTestTrigger(_ queue: CMBufferQueue, triggerToken: CMBufferQueueTriggerToken) -> Bool
@available(macOS 10.7, *)
func CMBufferQueueCallForEachBuffer(_ queue: CMBufferQueue, callback: @convention(c) (CMBuffer, UnsafeMutableRawPointer?) -> OSStatus, refcon: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.7, *)
typealias CMBufferValidationCallback = @convention(c) (CMBufferQueue, CMBuffer, UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.14.4, *)
typealias CMBufferValidationHandler = (CMBufferQueue, CMBuffer) -> OSStatus
@available(macOS 10.7, *)
func CMBufferQueueSetValidationCallback(_ queue: CMBufferQueue, callback: CMBufferValidationCallback, refcon: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.14.4, *)
func CMBufferQueueSetValidationHandler(_ queue: CMBufferQueue, _ handler: @escaping CMBufferValidationHandler) -> OSStatus
