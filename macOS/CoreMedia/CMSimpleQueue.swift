
var kCMSimpleQueueError_AllocationFailed: OSStatus { get }
var kCMSimpleQueueError_RequiredParameterMissing: OSStatus { get }
var kCMSimpleQueueError_ParameterOutOfRange: OSStatus { get }
var kCMSimpleQueueError_QueueIsFull: OSStatus { get }
@available(macOS 10.7, *)
class CMSimpleQueue : _CFObject {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSimpleQueue : _CMSimpleQueueInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMSimpleQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let allocationFailed: NSError
    static let requiredParameterMissing: NSError
    static let parameterOutOfRange: NSError
    static let queueIsFull: NSError
  }
}

@available(watchOS 6.0, *)
extension CMSimpleQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func enqueue(_ element: UnsafeRawPointer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dequeue() -> UnsafeRawPointer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var head: UnsafeRawPointer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func reset() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var capacity: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var count: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var fullness: Float { get }
}
@available(macOS 10.7, *)
func CMSimpleQueueGetTypeID() -> CFTypeID
@available(macOS 10.7, *)
func CMSimpleQueueCreate(allocator: CFAllocator?, capacity: Int32, queueOut: UnsafeMutablePointer<CMSimpleQueue?>) -> OSStatus
@available(macOS 10.7, *)
func CMSimpleQueueEnqueue(_ queue: CMSimpleQueue, element: UnsafeRawPointer) -> OSStatus
@available(macOS 10.7, *)
func CMSimpleQueueDequeue(_ queue: CMSimpleQueue) -> UnsafeRawPointer?
@available(macOS 10.7, *)
func CMSimpleQueueGetHead(_ queue: CMSimpleQueue) -> UnsafeRawPointer?
@available(macOS 10.7, *)
func CMSimpleQueueReset(_ queue: CMSimpleQueue) -> OSStatus
@available(macOS 10.7, *)
func CMSimpleQueueGetCapacity(_ queue: CMSimpleQueue) -> Int32
@available(macOS 10.7, *)
func CMSimpleQueueGetCount(_ queue: CMSimpleQueue) -> Int32
