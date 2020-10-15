
@available(tvOS 8.0, *)
enum MTLPrimitiveType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case point
  case line
  case lineStrip
  case triangle
  case triangleStrip
}
@available(tvOS 8.0, *)
enum MTLVisibilityResultMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case disabled
  case boolean
  @available(tvOS 9.0, *)
  case counting
}
struct MTLScissorRect {
  var x: Int
  var y: Int
  var width: Int
  var height: Int
  init()
  init(x: Int, y: Int, width: Int, height: Int)
}
struct MTLViewport {
  var originX: Double
  var originY: Double
  var width: Double
  var height: Double
  var znear: Double
  var zfar: Double
  init()
  init(originX: Double, originY: Double, width: Double, height: Double, znear: Double, zfar: Double)
}
@available(tvOS 8.0, *)
enum MTLCullMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case front
  case back
}
@available(tvOS 8.0, *)
enum MTLWinding : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clockwise
  case counterClockwise
}
@available(tvOS 9.0, *)
enum MTLDepthClipMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case clip
  case clamp
}
@available(tvOS 8.0, *)
enum MTLTriangleFillMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case fill
  case lines
}
struct MTLDrawPrimitivesIndirectArguments {
  var vertexCount: UInt32
  var instanceCount: UInt32
  var vertexStart: UInt32
  var baseInstance: UInt32
  init()
  init(vertexCount: UInt32, instanceCount: UInt32, vertexStart: UInt32, baseInstance: UInt32)
}
struct MTLDrawIndexedPrimitivesIndirectArguments {
  var indexCount: UInt32
  var instanceCount: UInt32
  var indexStart: UInt32
  var baseVertex: Int32
  var baseInstance: UInt32
  init()
  init(indexCount: UInt32, instanceCount: UInt32, indexStart: UInt32, baseVertex: Int32, baseInstance: UInt32)
}
struct MTLDrawPatchIndirectArguments {
  var patchCount: UInt32
  var instanceCount: UInt32
  var patchStart: UInt32
  var baseInstance: UInt32
  init()
  init(patchCount: UInt32, instanceCount: UInt32, patchStart: UInt32, baseInstance: UInt32)
}
struct MTLQuadTessellationFactorsHalf {
  var edgeTessellationFactor: (UInt16, UInt16, UInt16, UInt16)
  var insideTessellationFactor: (UInt16, UInt16)
  init()
  init(edgeTessellationFactor: (UInt16, UInt16, UInt16, UInt16), insideTessellationFactor: (UInt16, UInt16))
}
struct MTLTriangleTessellationFactorsHalf {
  var edgeTessellationFactor: (UInt16, UInt16, UInt16)
  var insideTessellationFactor: UInt16
  init()
  init(edgeTessellationFactor: (UInt16, UInt16, UInt16), insideTessellationFactor: UInt16)
}
@available(tvOS 10.0, *)
struct MTLRenderStages : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var vertex: MTLRenderStages { get }
  static var fragment: MTLRenderStages { get }
}
@available(tvOS 8.0, *)
protocol MTLRenderCommandEncoder : MTLCommandEncoder {
  func setRenderPipelineState(_ pipelineState: MTLRenderPipelineState)
  @available(tvOS 8.3, *)
  func setVertexBytes(_ bytes: UnsafeRawPointer, length: Int, index: Int)
  func setVertexBuffer(_ buffer: MTLBuffer?, offset: Int, index: Int)
  @available(tvOS 8.3, *)
  func setVertexBufferOffset(_ offset: Int, index: Int)
  func __setVertexBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, with range: NSRange)
  func setVertexTexture(_ texture: MTLTexture?, index: Int)
  func __setVertexTextures(_ textures: UnsafePointer<MTLTexture?>, with range: NSRange)
  func setVertexSamplerState(_ sampler: MTLSamplerState?, index: Int)
  func __setVertexSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, with range: NSRange)
  func setVertexSamplerState(_ sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, index: Int)
  func __setVertexSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, with range: NSRange)
  func setViewport(_ viewport: MTLViewport)
  func setFrontFacing(_ frontFacingWinding: MTLWinding)
  func setCullMode(_ cullMode: MTLCullMode)
  @available(tvOS 11.0, *)
  func setDepthClipMode(_ depthClipMode: MTLDepthClipMode)
  func setDepthBias(_ depthBias: Float, slopeScale: Float, clamp: Float)
  func setScissorRect(_ rect: MTLScissorRect)
  func setTriangleFillMode(_ fillMode: MTLTriangleFillMode)
  @available(tvOS 8.3, *)
  func setFragmentBytes(_ bytes: UnsafeRawPointer, length: Int, index: Int)
  func setFragmentBuffer(_ buffer: MTLBuffer?, offset: Int, index: Int)
  @available(tvOS 8.3, *)
  func setFragmentBufferOffset(_ offset: Int, index: Int)
  func __setFragmentBuffers(_ buffers: UnsafePointer<MTLBuffer?>, offsets: UnsafePointer<Int>, with range: NSRange)
  func setFragmentTexture(_ texture: MTLTexture?, index: Int)
  func __setFragmentTextures(_ textures: UnsafePointer<MTLTexture?>, with range: NSRange)
  func setFragmentSamplerState(_ sampler: MTLSamplerState?, index: Int)
  func __setFragmentSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, with range: NSRange)
  func setFragmentSamplerState(_ sampler: MTLSamplerState?, lodMinClamp: Float, lodMaxClamp: Float, index: Int)
  func __setFragmentSamplerStates(_ samplers: UnsafePointer<MTLSamplerState?>, lodMinClamps: UnsafePointer<Float>, lodMaxClamps: UnsafePointer<Float>, with range: NSRange)
  func setBlendColor(red: Float, green: Float, blue: Float, alpha: Float)
  func setDepthStencilState(_ depthStencilState: MTLDepthStencilState?)
  func setStencilReferenceValue(_ referenceValue: UInt32)
  @available(tvOS 9.0, *)
  func setStencilReferenceValues(front frontReferenceValue: UInt32, back backReferenceValue: UInt32)
  func setVisibilityResultMode(_ mode: MTLVisibilityResultMode, offset: Int)
  @available(tvOS 10.0, *)
  func setColorStoreAction(_ storeAction: MTLStoreAction, index colorAttachmentIndex: Int)
  @available(tvOS 10.0, *)
  func setDepthStoreAction(_ storeAction: MTLStoreAction)
  @available(tvOS 10.0, *)
  func setStencilStoreAction(_ storeAction: MTLStoreAction)
  @available(tvOS 11.0, *)
  func setColorStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions, index colorAttachmentIndex: Int)
  @available(tvOS 11.0, *)
  func setDepthStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
  @available(tvOS 11.0, *)
  func setStencilStoreActionOptions(_ storeActionOptions: MTLStoreActionOptions)
  func drawPrimitives(type primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int)
  func drawPrimitives(type primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int)
  func drawIndexedPrimitives(type primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int)
  func drawIndexedPrimitives(type primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int)
  @available(tvOS 9.0, *)
  func drawPrimitives(type primitiveType: MTLPrimitiveType, vertexStart: Int, vertexCount: Int, instanceCount: Int, baseInstance: Int)
  @available(tvOS 9.0, *)
  func drawIndexedPrimitives(type primitiveType: MTLPrimitiveType, indexCount: Int, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, instanceCount: Int, baseVertex: Int, baseInstance: Int)
  @available(tvOS 9.0, *)
  func drawPrimitives(type primitiveType: MTLPrimitiveType, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(tvOS 9.0, *)
  func drawIndexedPrimitives(type primitiveType: MTLPrimitiveType, indexType: MTLIndexType, indexBuffer: MTLBuffer, indexBufferOffset: Int, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(tvOS 10.0, *)
  func updateFence(_ fence: MTLFence, after stages: MTLRenderStages)
  @available(tvOS 10.0, *)
  func waitForFence(_ fence: MTLFence, before stages: MTLRenderStages)
  @available(tvOS 10.0, *)
  func setTessellationFactorBuffer(_ buffer: MTLBuffer?, offset: Int, instanceStride: Int)
  @available(tvOS 10.0, *)
  func setTessellationFactorScale(_ scale: Float)
  @available(tvOS 10.0, *)
  func drawPatches(numberOfPatchControlPoints: Int, patchStart: Int, patchCount: Int, patchIndexBuffer: MTLBuffer?, patchIndexBufferOffset: Int, instanceCount: Int, baseInstance: Int)
  @available(tvOS 10.0, *)
  func drawIndexedPatches(numberOfPatchControlPoints: Int, patchStart: Int, patchCount: Int, patchIndexBuffer: MTLBuffer?, patchIndexBufferOffset: Int, controlPointIndexBuffer: MTLBuffer, controlPointIndexBufferOffset: Int, instanceCount: Int, baseInstance: Int)
  @available(tvOS 11.0, *)
  func useResource(_ resource: MTLResource, usage: MTLResourceUsage)
  @available(tvOS 11.0, *)
  func __use(_ resources: UnsafePointer<MTLResource>, count: Int, usage: MTLResourceUsage)
  @available(tvOS 13.0, *)
  func use(_ resource: MTLResource, usage: MTLResourceUsage, stages: MTLRenderStages)
  @available(tvOS 13.0, *)
  func use(_ resources: UnsafePointer<MTLResource>, count: Int, usage: MTLResourceUsage, stages: MTLRenderStages)
  @available(tvOS 11.0, *)
  func useHeap(_ heap: MTLHeap)
  @available(tvOS 11.0, *)
  func __use(_ heaps: UnsafePointer<MTLHeap>, count: Int)
  @available(tvOS 13.0, *)
  func use(_ heap: MTLHeap, stages: MTLRenderStages)
  @available(tvOS 13.0, *)
  func use(_ heaps: UnsafePointer<MTLHeap>, count: Int, stages: MTLRenderStages)
  @available(tvOS 12.0, *)
  func __executeCommands(in indirectCommandBuffer: MTLIndirectCommandBuffer, with executionRange: NSRange)
  @available(tvOS 13.0, *)
  func __executeCommands(in indirectCommandbuffer: MTLIndirectCommandBuffer, indirectBuffer indirectRangeBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(tvOS 14.0, *)
  func sampleCounters(sampleBuffer: MTLCounterSampleBuffer, sampleIndex: Int, barrier: Bool)
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
