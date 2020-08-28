
@available(macOS 10.11, *)
class MTLComputePipelineReflection : NSObject {
  var arguments: [MTLArgument] { get }
}
@available(macOS 10.11, *)
class MTLComputePipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  @available(macOS 10.14, *)
  var maxTotalThreadsPerThreadgroup: Int
  @available(macOS 10.12, *)
  @NSCopying var stageInputDescriptor: MTLStageInputOutputDescriptor?
  @available(macOS 10.13, *)
  var buffers: MTLPipelineBufferDescriptorArray { get }
  @available(macOS 11.0, *)
  var supportIndirectCommandBuffers: Bool
  @available(macOS 11.0, *)
  var insertLibraries: [MTLDynamicLibrary]?
  @available(macOS 11.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
  @available(macOS 11.0, *)
  @NSCopying var linkedFunctions: MTLLinkedFunctions?
  @available(macOS 11.0, *)
  var supportAddingBinaryFunctions: Bool
  @available(macOS 11.0, *)
  var maxCallStackDepth: Int
}
@available(macOS 10.11, *)
protocol MTLComputePipelineState : NSObjectProtocol {
  @available(macOS 10.13, *)
  var label: String? { get }
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
  @available(macOS 10.13, *)
  var staticThreadgroupMemoryLength: Int { get }
  @available(macOS 11.0, *)
  func imageblockMemoryLength(forDimensions imageblockDimensions: MTLSize) -> Int
  @available(macOS 11.0, *)
  var supportIndirectCommandBuffers: Bool { get }
  @available(macOS 11.0, *)
  func functionHandle(function: MTLFunction) -> MTLFunctionHandle?
  @available(macOS 11.0, *)
  func makeComputePipelineStateWithAdditionalBinaryFunctions(functions: [MTLFunction]) throws -> MTLComputePipelineState
  @available(macOS 11.0, *)
  func makeVisibleFunctionTable(descriptor: MTLVisibleFunctionTableDescriptor) -> MTLVisibleFunctionTable?
  @available(macOS 11.0, *)
  func makeIntersectionFunctionTable(descriptor: MTLIntersectionFunctionTableDescriptor) -> MTLIntersectionFunctionTable?
}
