
@available(macOS 10.14, *)
protocol MTLIndirectRenderCommand : NSObjectProtocol {
  @available(macOS 10.14, *)
  func setRenderPipelineState(_ pipelineState: MTLRenderPipelineState)
  func setVertexBuffer(_ buffer: MTLBuffer, offset: Int, at index: Int)
  func setFragmentBuffer(_ buffer: MTLBuffer, offset: Int, at index: Int)
  func drawPatches(_ numberOfPatchControlPoints: Int, patchStart: Int, patchCount: Int, patchIndexBuffer: MTLBuffer?, patchIndexBufferOffset: Int, instanceCount: Int, baseInstance: Int, tessellationFactorBuffer buffer: MTLBuffer, tessellationFactorBufferOffset offset: Int, tessellationFactorBufferInstanceStride instanceStride: Int)
  func drawIndexedPatches(_ numberOfPatchControlPoints: Int, patchStart: Int, patchCount: Int, patchIndexBuffer: MTLBuffer?, patchIndexBufferOffset: Int, controlPointIndexBuffer: MTLBuffer, controlPointIndexBufferOffset: Int, instanceCount: Int, baseInstance: Int, tessellationFactorBuffer buffer: MTLBuffer, tessellationFactorBufferOffset offset: Int, tessellationFactorBufferInstanceStride instanceStride: Int)
  func drawPrimitives(_ primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int, baseInstance: Int)
  func drawIndexedPrimitives(_ primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int, baseVertex: Int, baseInstance: Int)
  func reset()
}
@available(macOS 11.0, *)
protocol MTLIndirectComputeCommand : NSObjectProtocol {
  @available(macOS 11.0, *)
  func setComputePipelineState(_ pipelineState: MTLComputePipelineState)
  func setKernelBuffer(_ buffer: MTLBuffer, offset: Int, at index: Int)
  func concurrentDispatchThreadgroups(_ threadgroupsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  func concurrentDispatchThreads(_ threadsPerGrid: MTLSize, threadsPerThreadgroup: MTLSize)
  func setBarrier()
  func clearBarrier()
  @available(macOS 11.0, *)
  func setImageblockWidth(_ width: Int, height: Int)
  func reset()
  func setThreadgroupMemoryLength(_ length: Int, index: Int)
  func setStageInRegion(_ region: MTLRegion)
}

@available(macOS 11.0, iOS 13.0, tvOS 13.0, *)
extension MTLIndirectComputeCommand {
}
