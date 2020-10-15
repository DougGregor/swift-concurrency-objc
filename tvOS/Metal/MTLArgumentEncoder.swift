
@available(tvOS 11.0, *)
protocol MTLArgumentEncoder : NSObjectProtocol {
  var device: MTLDevice { get }
  var label: String? { get set }
  var encodedLength: Int { get }
  var alignment: Int { get }
  func setArgumentBuffer(_ argumentBuffer: MTLBuffer?, offset: Int)
  func setArgumentBuffer(_ argumentBuffer: MTLBuffer?, startOffset: Int, arrayElement: Int)
  func setBuffer(_ buffer: MTLBuffer?, offset: Int, index: Int)
  func __setBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, with range: NSRange)
  func setTexture(_ texture: MTLTexture?, index: Int)
  func __setTextures(_ textures: UnsafePointer<MTLTexture?>, with range: NSRange)
  func setSamplerState(_ sampler: MTLSamplerState?, index: Int)
  func __setSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, with range: NSRange)
  func constantData(at index: Int) -> UnsafeMutableRawPointer
  @available(tvOS 13.0, *)
  func setRenderPipelineState(_ pipeline: MTLRenderPipelineState?, index: Int)
  @available(tvOS 13.0, *)
  func __setRenderPipelineStates(_ pipelines: UnsafePointer<MTLRenderPipelineState?>, with range: NSRange)
  @available(tvOS 13.0, *)
  func setComputePipelineState(_ pipeline: MTLComputePipelineState?, index: Int)
  @available(tvOS 13.0, *)
  func __setComputePipelineStates(_ pipelines: UnsafePointer<MTLComputePipelineState?>, with range: NSRange)
  @available(tvOS 12.0, *)
  func setIndirectCommandBuffer(_ indirectCommandBuffer: MTLIndirectCommandBuffer?, index: Int)
  @available(tvOS 12.0, *)
  func __setIndirectCommandBuffers(_ buffers: UnsafePointer<MTLIndirectCommandBuffer?>, with range: NSRange)
  @available(tvOS 11.0, *)
  func makeArgumentEncoderForBuffer(atIndex index: Int) -> MTLArgumentEncoder?
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
