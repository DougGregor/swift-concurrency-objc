
@available(iOS 14.0, *)
protocol MTLAccelerationStructureCommandEncoder : MTLCommandEncoder {
  func build(accelerationStructure: MTLAccelerationStructure, descriptor: MTLAccelerationStructureDescriptor, scratchBuffer: MTLBuffer, scratchBufferOffset: Int)
  func refit(sourceAccelerationStructure: MTLAccelerationStructure, descriptor: MTLAccelerationStructureDescriptor, destinationAccelerationStructure: MTLAccelerationStructure?, scratchBuffer: MTLBuffer, scratchBufferOffset: Int)
  func copy(sourceAccelerationStructure: MTLAccelerationStructure, destinationAccelerationStructure: MTLAccelerationStructure)
  func writeCompactedSize(accelerationStructure: MTLAccelerationStructure, buffer: MTLBuffer, offset: Int)
  func copyAndCompact(sourceAccelerationStructure: MTLAccelerationStructure, destinationAccelerationStructure: MTLAccelerationStructure)
  func updateFence(_ fence: MTLFence)
  func waitForFence(_ fence: MTLFence)
  func useResource(_ resource: MTLResource, usage: MTLResourceUsage)
  func __use(_ resources: UnsafePointer<MTLResource>, count: Int, usage: MTLResourceUsage)
  func useHeap(_ heap: MTLHeap)
  func __use(_ heaps: UnsafePointer<MTLHeap>, count: Int)
  @available(iOS 14.0, *)
  func sampleCounters(sampleBuffer: MTLCounterSampleBuffer, sampleIndex: Int, barrier: Bool)
}

@available(macOS 11.0, iOS 14.0, *)
@available(tvOS, unavailable)
extension MTLAccelerationStructureCommandEncoder {
  func useResources(_ resources: [MTLResource], usage: MTLResourceUsage)
  func useHeaps(_ heaps: [MTLHeap])
}
