
@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
struct MTLLogContainer : Sequence {
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLBlitCommandEncoder {
  func fill(buffer: MTLBuffer, range: Range<Int>, value: UInt8)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
  func resetCommandsInBuffer(_ buffer: MTLIndirectCommandBuffer, range: Range<Int>)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
  func copyIndirectCommandBuffer(_ buffer: MTLIndirectCommandBuffer, sourceRange: Range<Int>, destination: MTLIndirectCommandBuffer, destinationIndex: Int)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
  func optimizeIndirectCommandBuffer(_ buffer: MTLIndirectCommandBuffer, range: Range<Int>)
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func resolveCounters(_ sampleBuffer: MTLCounterSampleBuffer, range: Range<Int>, destinationBuffer: MTLBuffer, destinationOffset: Int)
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLBuffer {
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
  func addDebugMarker(_ marker: String, range: Range<Int>)
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLCommandBuffer {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  var logs: MTLLogContainer { get }
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLComputeCommandEncoder {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func useResources(_ resources: [MTLResource], usage: MTLResourceUsage)
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func useHeaps(_ heaps: [MTLHeap])
  func setBuffers(_ buffers: [MTLBuffer?], offsets: [Int], range: Range<Int>)
  func setTextures(_ textures: [MTLTexture?], range: Range<Int>)
  func setSamplerStates(_ samplers: [MTLSamplerState?], range: Range<Int>)
  func setSamplerStates(_ samplers: [MTLSamplerState?], lodMinClamps: [Float], lodMaxClamps: [Float], range: Range<Int>)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
  func memoryBarrier(resources: [MTLResource])
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "executeCommandsInBuffer")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "executeCommandsInBuffer")
  @_alwaysEmitIntoClient func executeCommands(in indirectCommandBuffer: MTLIndirectCommandBuffer, with executionRange: NSRange)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "executeCommandsInBuffer")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "executeCommandsInBuffer")
  @_alwaysEmitIntoClient func executeCommands(in indirectCommandbuffer: MTLIndirectCommandBuffer, indirectBuffer indirectRangeBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(iOS 13.0, tvOS 13.0, *)
  @_alwaysEmitIntoClient func executeCommandsInBuffer(_ buffer: MTLIndirectCommandBuffer, range: Range<Int>)
  @available(iOS 13.0, tvOS 13.0, *)
  @_alwaysEmitIntoClient func executeCommandsInBuffer(_ buffer: MTLIndirectCommandBuffer, indirectBuffer indirectRangeBuffer: MTLBuffer, offset: Int)
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLDevice {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func getDefaultSamplePositions(sampleCount: Int) -> [MTLSamplePosition]
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func sampleTimestamps() -> (cpu: MTLTimestamp, gpu: MTLTimestamp)
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension MTLCounterSampleBuffer {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func resolveCounterRange(_ range: Range<Int>) throws -> Data?
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, *)
extension MTLFunctionConstantValues {
  func setConstantValues(_ values: UnsafeRawPointer, type: MTLDataType, range: Range<Int>)
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
extension MTLArgumentEncoder {
  func setBuffers(_ buffers: [MTLBuffer?], offsets: [Int], range: Range<Int>)
  func setTextures(_ textures: [MTLTexture?], range: Range<Int>)
  func setSamplerStates(_ samplers: [MTLSamplerState?], range: Range<Int>)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "setComputePipelineState")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "setComputePipelineState")
  @_alwaysEmitIntoClient func setComputePipelineState(_ pipeline: MTLComputePipelineState?, at index: Int)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "setComputePipelineStates")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "setComputePipelineStates")
  @_alwaysEmitIntoClient func setComputePipelineStates(_ pipelines: UnsafePointer<MTLComputePipelineState?>, with range: NSRange)
  @available(iOS 13.0, tvOS 13.0, *)
  @_alwaysEmitIntoClient func setComputePipelineStates(_ pipelines: [MTLComputePipelineState?], range: Range<Int>)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
  func setIndirectCommandBuffers(_ buffers: [MTLIndirectCommandBuffer?], range: Range<Int>)
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLRenderCommandEncoder {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func useResources(_ resources: [MTLResource], usage: MTLResourceUsage)
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func useHeaps(_ heaps: [MTLHeap])
  func setVertexBuffers(_ buffers: [MTLBuffer?], offsets: [Int], range: Range<Int>)
  func setVertexTextures(_ textures: [MTLTexture?], range: Range<Int>)
  func setVertexSamplerStates(_ samplers: [MTLSamplerState?], range: Range<Int>)
  func setVertexSamplerStates(_ samplers: [MTLSamplerState?], lodMinClamps: [Float], lodMaxClamps: [Float], range: Range<Int>)
  func setFragmentBuffers(_ buffers: [MTLBuffer?], offsets: [Int], range: Range<Int>)
  func setFragmentTextures(_ textures: [MTLTexture?], range: Range<Int>)
  func setFragmentSamplerStates(_ samplers: [MTLSamplerState?], range: Range<Int>)
  func setFragmentSamplerStates(_ samplers: [MTLSamplerState?], lodMinClamps: [Float], lodMaxClamps: [Float], range: Range<Int>)
  @available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
  func executeCommandsInBuffer(_ buffer: MTLIndirectCommandBuffer, range: Range<Int>)
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, *)
extension MTLIndirectCommandBuffer {
  func reset(_ range: Range<Int>)
  @available(macOS, unavailable)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "indirectComputeCommandAt")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "indirectComputeCommandAt")
  @_alwaysEmitIntoClient func indirectComputeCommand(at Index: Int) -> MTLIndirectComputeCommand
}

@available(macOS 11.0, iOS 13.0, tvOS 13.0, *)
extension MTLIndirectComputeCommand {
  @available(macOS, unavailable)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "setStageInRegion")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "setStageInRegion")
  @_alwaysEmitIntoClient func setStageIn(_ region: MTLRegion)
  @available(macOS, unavailable)
  @available(iOS, introduced: 13.0, deprecated: 14.0, renamed: "setThreadgroupMemoryLength")
  @available(tvOS, introduced: 13.0, deprecated: 14.0, renamed: "setThreadgroupMemoryLength")
  @_alwaysEmitIntoClient func setThreadgroupMemoryLength(_ length: Int, at Index: Int)
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLRenderPassDescriptor {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func setSamplePositions(_ positions: [MTLSamplePosition])
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func getSamplePositions() -> [MTLSamplePosition]
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLTexture {
  @available(macOS 10.11, iOS 9.0, tvOS 9.0, *)
  func makeTextureView(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: Range<Int>, slices sliceRange: Range<Int>) -> MTLTexture?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
  func makeTextureView(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: Range<Int>, slices sliceRange: Range<Int>, swizzle: MTLTextureSwizzleChannels) -> MTLTexture?
}

