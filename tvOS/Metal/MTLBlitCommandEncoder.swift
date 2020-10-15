
@available(tvOS 9.0, *)
struct MTLBlitOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var depthFromDepthStencil: MTLBlitOption { get }
  static var stencilFromDepthStencil: MTLBlitOption { get }
  @available(tvOS 9.0, *)
  static var rowLinearPVRTC: MTLBlitOption { get }
}
@available(tvOS 8.0, *)
protocol MTLBlitCommandEncoder : MTLCommandEncoder {
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  func copy(from sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin)
  @available(tvOS 9.0, *)
  func copy(from sourceBuffer: MTLBuffer, sourceOffset: Int, sourceBytesPerRow: Int, sourceBytesPerImage: Int, sourceSize: MTLSize, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, destinationOrigin: MTLOrigin, options: MTLBlitOption)
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int)
  @available(tvOS 9.0, *)
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, sourceOrigin: MTLOrigin, sourceSize: MTLSize, to destinationBuffer: MTLBuffer, destinationOffset: Int, destinationBytesPerRow: Int, destinationBytesPerImage: Int, options: MTLBlitOption)
  func generateMipmaps(for texture: MTLTexture)
  func __fill(_ buffer: MTLBuffer, range: NSRange, value: UInt8)
  @available(tvOS 13.0, *)
  func copy(from sourceTexture: MTLTexture, sourceSlice: Int, sourceLevel: Int, to destinationTexture: MTLTexture, destinationSlice: Int, destinationLevel: Int, sliceCount: Int, levelCount: Int)
  @available(tvOS 13.0, *)
  func copy(from sourceTexture: MTLTexture, to destinationTexture: MTLTexture)
  func copy(from sourceBuffer: MTLBuffer, sourceOffset: Int, to destinationBuffer: MTLBuffer, destinationOffset: Int, size: Int)
  @available(tvOS 10.0, *)
  func updateFence(_ fence: MTLFence)
  @available(tvOS 10.0, *)
  func waitForFence(_ fence: MTLFence)
  @available(tvOS 12.0, *)
  func optimizeContentsForGPUAccess(texture: MTLTexture)
  @available(tvOS 12.0, *)
  func optimizeContentsForGPUAccess(texture: MTLTexture, slice: Int, level: Int)
  @available(tvOS 12.0, *)
  func optimizeContentsForCPUAccess(texture: MTLTexture)
  @available(tvOS 12.0, *)
  func optimizeContentsForCPUAccess(texture: MTLTexture, slice: Int, level: Int)
  @available(tvOS 12.0, *)
  func __resetCommands(in buffer: MTLIndirectCommandBuffer, with range: NSRange)
  @available(tvOS 12.0, *)
  func __copy(_ source: MTLIndirectCommandBuffer, sourceRange: NSRange, destination: MTLIndirectCommandBuffer, destinationIndex: Int)
  @available(tvOS 12.0, *)
  func __optimizeIndirectCommandBuffer(_ indirectCommandBuffer: MTLIndirectCommandBuffer, with range: NSRange)
  @available(tvOS 14.0, *)
  func sampleCounters(sampleBuffer: MTLCounterSampleBuffer, sampleIndex: Int, barrier: Bool)
  @available(tvOS 14.0, *)
  func __resolveCounters(_ sampleBuffer: MTLCounterSampleBuffer, in range: NSRange, destinationBuffer: MTLBuffer, destinationOffset: Int)
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
