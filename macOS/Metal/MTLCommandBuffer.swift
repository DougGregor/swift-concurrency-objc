
@available(macOS 10.11, *)
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
@available(macOS 10.11, *)
let MTLCommandBufferErrorDomain: String
@available(macOS 10.11, *)
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
  @available(macOS 11.0, *)
  static var memoryless: MTLCommandBufferError.Code { get }
  @available(macOS 10.13, *)
  static var deviceRemoved: MTLCommandBufferError.Code { get }
}
@available(macOS 11.0, *)
let MTLCommandBufferEncoderInfoErrorKey: String
@available(macOS 11.0, *)
struct MTLCommandBufferErrorOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var encoderExecutionStatus: MTLCommandBufferErrorOption { get }
}
@available(macOS 11.0, *)
enum MTLCommandEncoderErrorState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case completed
  case affected
  case pending
  case faulted
}
@available(macOS 11.0, *)
class MTLCommandBufferDescriptor : NSObject, NSCopying {
  var retainedReferences: Bool
  var errorOptions: MTLCommandBufferErrorOption
}
@available(macOS 11.0, *)
protocol MTLCommandBufferEncoderInfo : NSObjectProtocol {
  var label: String { get }
  var debugSignposts: [String] { get }
  var errorState: MTLCommandEncoderErrorState { get }
}
typealias MTLCommandBufferHandler = (MTLCommandBuffer) -> Void
@available(macOS 10.14, *)
enum MTLDispatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case serial
  case concurrent
}
@available(macOS 10.11, *)
protocol MTLCommandBuffer : NSObjectProtocol {
  var device: MTLDevice { get }
  var commandQueue: MTLCommandQueue { get }
  var retainedReferences: Bool { get }
  @available(macOS 11.0, *)
  var errorOptions: MTLCommandBufferErrorOption { get }
  var label: String? { get set }
  @available(macOS 10.15, *)
  var kernelStartTime: CFTimeInterval { get }
  @available(macOS 10.15, *)
  var kernelEndTime: CFTimeInterval { get }
  @available(macOS 11.0, *)
  var __logs: __MTLLogContainer { get }
  @available(macOS 10.15, *)
  var gpuStartTime: CFTimeInterval { get }
  @available(macOS 10.15, *)
  var gpuEndTime: CFTimeInterval { get }
  func enqueue()
  func commit()
  func addScheduledHandler(_ block: @escaping MTLCommandBufferHandler)
  func present(_ drawable: MTLDrawable)
  func present(_ drawable: MTLDrawable, atTime presentationTime: CFTimeInterval)
  @available(macOS 10.15.4, *)
  func present(_ drawable: MTLDrawable, afterMinimumDuration duration: CFTimeInterval)
  func waitUntilScheduled()
  func addCompletedHandler(_ block: @escaping MTLCommandBufferHandler)
  func waitUntilCompleted()
  var status: MTLCommandBufferStatus { get }
  var error: Error? { get }
  func makeBlitCommandEncoder() -> MTLBlitCommandEncoder?
  func makeRenderCommandEncoder(descriptor renderPassDescriptor: MTLRenderPassDescriptor) -> MTLRenderCommandEncoder?
  @available(macOS 11.0, *)
  func makeComputeCommandEncoder(descriptor computePassDescriptor: MTLComputePassDescriptor) -> MTLComputeCommandEncoder?
  @available(macOS 11.0, *)
  func makeBlitCommandEncoder(descriptor blitPassDescriptor: MTLBlitPassDescriptor) -> MTLBlitCommandEncoder?
  func makeComputeCommandEncoder() -> MTLComputeCommandEncoder?
  @available(macOS 10.14, *)
  func makeComputeCommandEncoder(dispatchType: MTLDispatchType) -> MTLComputeCommandEncoder?
  @available(macOS 10.14, *)
  func encodeWaitForEvent(_ event: MTLEvent, value: UInt64)
  @available(macOS 10.14, *)
  func encodeSignalEvent(_ event: MTLEvent, value: UInt64)
  func makeParallelRenderCommandEncoder(descriptor renderPassDescriptor: MTLRenderPassDescriptor) -> MTLParallelRenderCommandEncoder?
  @available(macOS 11.0, *)
  func makeResourceStateCommandEncoder() -> MTLResourceStateCommandEncoder?
  @available(macOS 11.0, *)
  func resourceStateCommandEncoder(with resourceStatePassDescriptor: MTLResourceStatePassDescriptor) -> MTLResourceStateCommandEncoder?
  @available(macOS 11.0, *)
  func makeAccelerationStructureCommandEncoder() -> MTLAccelerationStructureCommandEncoder?
  @available(macOS 10.13, *)
  func pushDebugGroup(_ string: String)
  @available(macOS 10.13, *)
  func popDebugGroup()
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLCommandBuffer {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  var logs: MTLLogContainer { get }
}
