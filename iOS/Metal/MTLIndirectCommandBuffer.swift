
@available(iOS 12.0, *)
struct MTLIndirectCommandType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var draw: MTLIndirectCommandType { get }
  static var drawIndexed: MTLIndirectCommandType { get }
  static var drawPatches: MTLIndirectCommandType { get }
  static var drawIndexedPatches: MTLIndirectCommandType { get }
  @available(iOS 13.0, *)
  static var concurrentDispatch: MTLIndirectCommandType { get }
  @available(iOS 13.0, *)
  static var concurrentDispatchThreads: MTLIndirectCommandType { get }
}
@available(iOS 13.0, *)
struct MTLIndirectCommandBufferExecutionRange {
  var location: UInt32
  var length: UInt32
  init()
  init(location: UInt32, length: UInt32)
}
@available(iOS 13.0, *)
func MTLIndirectCommandBufferExecutionRangeMake(_ location: UInt32, _ length: UInt32) -> MTLIndirectCommandBufferExecutionRange
@available(iOS 12.0, *)
class MTLIndirectCommandBufferDescriptor : NSObject, NSCopying {
  var commandTypes: MTLIndirectCommandType
  @available(iOS 13.0, *)
  var inheritPipelineState: Bool
  var inheritBuffers: Bool
  var maxVertexBufferBindCount: Int
  var maxFragmentBufferBindCount: Int
  @available(iOS 13.0, *)
  var maxKernelBufferBindCount: Int
}
@available(iOS 12.0, *)
protocol MTLIndirectCommandBuffer : MTLResource {
  var size: Int { get }
  func __reset(with range: NSRange)
  func indirectRenderCommandAt(_ commandIndex: Int) -> MTLIndirectRenderCommand
  @available(iOS 13.0, *)
  func indirectComputeCommandAt(_ commandIndex: Int) -> MTLIndirectComputeCommand
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
extension MTLIndirectCommandBuffer {
  func reset(_ range: Range<Int>)
  @available(macOS, unavailable)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "indirectComputeCommandAt")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "indirectComputeCommandAt")
  @_alwaysEmitIntoClient func indirectComputeCommand(at Index: Int) -> MTLIndirectComputeCommand
}
