
@available(tvOS 8.0, *)
class MTLComputePipelineReflection : NSObject {
  var arguments: [MTLArgument] { get }
}
@available(tvOS 9.0, *)
class MTLComputePipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var computeFunction: MTLFunction?
  var threadGroupSizeIsMultipleOfThreadExecutionWidth: Bool
  @available(tvOS 12.0, *)
  var maxTotalThreadsPerThreadgroup: Int
  @available(tvOS 10.0, *)
  @NSCopying var stageInputDescriptor: MTLStageInputOutputDescriptor?
  @available(tvOS 11.0, *)
  var buffers: MTLPipelineBufferDescriptorArray { get }
  @available(tvOS 13.0, *)
  var supportIndirectCommandBuffers: Bool
  @available(tvOS 14.0, *)
  var insertLibraries: [MTLDynamicLibrary]?
  @available(tvOS 14.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
  @available(tvOS 14.0, *)
  @NSCopying var linkedFunctions: MTLLinkedFunctions?
}
@available(tvOS 8.0, *)
protocol MTLComputePipelineState : NSObjectProtocol {
  @available(tvOS 11.0, *)
  var label: String? { get }
  var device: MTLDevice { get }
  var maxTotalThreadsPerThreadgroup: Int { get }
  var threadExecutionWidth: Int { get }
  @available(tvOS 11.0, *)
  var staticThreadgroupMemoryLength: Int { get }
  @available(tvOS 13.0, *)
  var supportIndirectCommandBuffers: Bool { get }
}
