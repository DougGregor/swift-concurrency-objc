
@available(macOS 10.14, *)
struct MTLIndirectCommandType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var draw: MTLIndirectCommandType { get }
  static var drawIndexed: MTLIndirectCommandType { get }
  static var drawPatches: MTLIndirectCommandType { get }
  static var drawIndexedPatches: MTLIndirectCommandType { get }
  @available(macOS 11.0, *)
  static var concurrentDispatch: MTLIndirectCommandType { get }
  @available(macOS 11.0, *)
  static var concurrentDispatchThreads: MTLIndirectCommandType { get }
}
@available(macOS 10.14, *)
struct MTLIndirectCommandBufferExecutionRange {
  var location: UInt32
  var length: UInt32
  init()
  init(location: UInt32, length: UInt32)
}
@available(macOS 10.14, *)
func MTLIndirectCommandBufferExecutionRangeMake(_ location: UInt32, _ length: UInt32) -> MTLIndirectCommandBufferExecutionRange
@available(macOS 10.14, *)
class MTLIndirectCommandBufferDescriptor : NSObject, NSCopying {
  var commandTypes: MTLIndirectCommandType
  @available(macOS 10.14, *)
  var inheritPipelineState: Bool
  var inheritBuffers: Bool
  var maxVertexBufferBindCount: Int
  var maxFragmentBufferBindCount: Int
  @available(macOS 11.0, *)
  var maxKernelBufferBindCount: Int
}
@available(macOS 10.14, *)
protocol MTLIndirectCommandBuffer : MTLResource {
  var size: Int { get }
  func __reset(with range: NSRange)
  func indirectRenderCommandAt(_ commandIndex: Int) -> MTLIndirectRenderCommand
  @available(macOS 11.0, *)
  func indirectComputeCommandAt(_ commandIndex: Int) -> MTLIndirectComputeCommand
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
extension MTLIndirectCommandBuffer {
  func reset(_ range: Range<Int>)
}
