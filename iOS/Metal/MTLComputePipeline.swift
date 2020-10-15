
@available(iOS 8.0, *)
class MTLComputePipelineReflection : NSObject {
  var arguments: [MTLArgument] { get }
}
@available(iOS 9.0, *)
class MTLComputePipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  @available(iOS 12.0, *)
  var maxTotalThreadsPerThreadgroup: Int
  @available(iOS 10.0, *)
  @NSCopying var stageInputDescriptor: MTLStageInputOutputDescriptor?
  @available(iOS 11.0, *)
  var buffers: MTLPipelineBufferDescriptorArray { get }
  @available(iOS 13.0, *)
  var supportIndirectCommandBuffers: Bool
  @available(iOS 14.0, *)
  var insertLibraries: [MTLDynamicLibrary]?
  @available(iOS 14.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
  @available(iOS 14.0, *)
  @NSCopying var linkedFunctions: MTLLinkedFunctions?
  @available(iOS 14.0, *)
  var supportAddingBinaryFunctions: Bool
  @available(iOS 14.0, *)
  var maxCallStackDepth: Int
}
@available(iOS 8.0, *)
protocol MTLComputePipelineState : NSObjectProtocol {
  @available(iOS 11.0, *)
  var label: String? { get }
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
  @available(iOS 11.0, *)
  var staticThreadgroupMemoryLength: Int { get }
  @available(iOS 11.0, *)
  func imageblockMemoryLength(forDimensions imageblockDimensions: MTLSize) -> Int
  @available(iOS 13.0, *)
  var supportIndirectCommandBuffers: Bool { get }
  @available(iOS 14.0, *)
  func functionHandle(function: MTLFunction) -> MTLFunctionHandle?
  @available(iOS 14.0, *)
  func makeComputePipelineStateWithAdditionalBinaryFunctions(functions: [MTLFunction]) throws -> MTLComputePipelineState
  @available(iOS 14.0, *)
  func makeVisibleFunctionTable(descriptor: MTLVisibleFunctionTableDescriptor) -> MTLVisibleFunctionTable?
  @available(iOS 14.0, *)
  func makeIntersectionFunctionTable(descriptor: MTLIntersectionFunctionTableDescriptor) -> MTLIntersectionFunctionTable?
}
