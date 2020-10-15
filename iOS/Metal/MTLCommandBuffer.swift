
@available(iOS 8.0, *)
enum MTLCommandBufferStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case notEnqueued
  case enqueued
  case committed
  case scheduled
  case completed
  case error
}
@available(iOS 8.0, *)
let MTLCommandBufferErrorDomain: String
@available(iOS 8.0, *)
struct MTLCommandBufferError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var none: MTLCommandBufferError.Code { get }
  static var `internal`: MTLCommandBufferError.Code { get }
  static var timeout: MTLCommandBufferError.Code { get }
  static var pageFault: MTLCommandBufferError.Code { get }
  static var blacklisted: MTLCommandBufferError.Code { get }
  static var notPermitted: MTLCommandBufferError.Code { get }
  static var outOfMemory: MTLCommandBufferError.Code { get }
  static var invalidResource: MTLCommandBufferError.Code { get }
  @available(iOS 10.0, *)
  static var memoryless: MTLCommandBufferError.Code { get }
}
@available(iOS 14.0, *)
let MTLCommandBufferEncoderInfoErrorKey: String
@available(iOS 14.0, *)
struct MTLCommandBufferErrorOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var encoderExecutionStatus: MTLCommandBufferErrorOption { get }
}
@available(iOS 14.0, *)
enum MTLCommandEncoderErrorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case completed
  case affected
  case pending
  case faulted
}
@available(iOS 14.0, *)
class MTLCommandBufferDescriptor : NSObject, NSCopying {
  var retainedReferences: Bool
  var errorOptions: MTLCommandBufferErrorOption
}
@available(iOS 14.0, *)
protocol MTLCommandBufferEncoderInfo : NSObjectProtocol {
  var label: String { get }
  var debugSignposts: [String] { get }
  var errorState: MTLCommandEncoderErrorState { get }
}
typealias MTLCommandBufferHandler = (MTLCommandBuffer) -> Void
@available(iOS 12.0, *)
enum MTLDispatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case serial
  case concurrent
}
@available(iOS 8.0, *)
protocol MTLCommandBuffer : NSObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  @available(iOS 14.0, *)
  var errorOptions: MTLCommandBufferErrorOption { get }
  var label: String? { get set }
  @available(iOS 10.3, *)
  var kernelStartTime: CFTimeInterval { get }
  @available(iOS 10.3, *)
  var kernelEndTime: CFTimeInterval { get }
  @available(iOS 14.0, *)
  var __logs: __MTLLogContainer { get }
  @available(iOS 10.3, *)
  var gpuStartTime: CFTimeInterval { get }
  @available(iOS 10.3, *)
  var gpuEndTime: CFTimeInterval { get }
  func enqueue()
  func commit()
  func addScheduledHandler(_ block: @escaping MTLCommandBufferHandler)
  func present(_ drawable: MTLDrawable)
  func present(_ drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  @available(iOS 10.3, *)
  func present(_ drawable: MTLDrawable, afterMinimumDuration duration: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(_ block: @escaping MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: Error? { get }
  func makeBlitCommandEncoder() -> MTLBlitCommandEncoder?
  func makeRenderCommandEncoder(descriptor renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder?
  @available(iOS 14.0, *)
  func makeComputeCommandEncoder(descriptor computePassDescriptor: MTLComputePassDescriptor) -> MTLComputeCommandEncoder?
  @available(iOS 14.0, *)
  func makeBlitCommandEncoder(descriptor blitPassDescriptor: MTLBlitPassDescriptor) -> MTLBlitCommandEncoder?
  func makeComputeCommandEncoder() -> MTLComputeCommandEncoder?
  @available(iOS 12.0, *)
  func makeComputeCommandEncoder(dispatchType: MTLDispatchType) -> MTLComputeCommandEncoder?
  @available(iOS 12.0, *)
  func encodeWaitForEvent(_ event: MTLEvent, value: UInt64)
  @available(iOS 12.0, *)
  func encodeSignalEvent(_ event: MTLEvent, value: UInt64)
  func makeParallelRenderCommandEncoder(descriptor renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder?
  @available(iOS 13.0, *)
  func makeResourceStateCommandEncoder() -> MTLResourceStateCommandEncoder?
  @available(iOS 14.0, *)
  func resourceStateCommandEncoder(with resourceStatePassDescriptor: MTLResourceStatePassDescriptor) -> MTLResourceStateCommandEncoder?
  @available(iOS 14.0, *)
  func makeAccelerationStructureCommandEncoder() -> MTLAccelerationStructureCommandEncoder?
  @available(iOS 11.0, *)
  func pushDebugGroup(_ string: String)
  @available(iOS 11.0, *)
  func popDebugGroup()
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLCommandBuffer {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  var logs: MTLLogContainer { get }
}
