
@available(macOS 10.11, *)
enum MTLBlendFactor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case zero
  case one
  case sourceColor
  case oneMinusSourceColor
  case sourceAlpha
  case oneMinusSourceAlpha
  case destinationColor
  case oneMinusDestinationColor
  case destinationAlpha
  case oneMinusDestinationAlpha
  case sourceAlphaSaturated
  case blendColor
  case oneMinusBlendColor
  case blendAlpha
  case oneMinusBlendAlpha
  @available(macOS 10.12, *)
  case source1Color
  @available(macOS 10.12, *)
  case oneMinusSource1Color
  @available(macOS 10.12, *)
  case source1Alpha
  @available(macOS 10.12, *)
  case oneMinusSource1Alpha
}
@available(macOS 10.11, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case subtract
  case reverseSubtract
  case min
  case max
}
@available(macOS 10.11, *)
struct MTLColorWriteMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var red: MTLColorWriteMask { get }
  static var green: MTLColorWriteMask { get }
  static var blue: MTLColorWriteMask { get }
  static var alpha: MTLColorWriteMask { get }
  static var all: MTLColorWriteMask { get }
}
@available(macOS 10.11, *)
enum MTLPrimitiveTopologyClass : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unspecified
  case point
  case line
  case triangle
}
@available(macOS 10.12, *)
enum MTLTessellationPartitionMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case pow2
  case integer
  case fractionalOdd
  case fractionalEven
}
@available(macOS 10.12, *)
enum MTLTessellationFactorStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constant
  case perPatch
  case perInstance
  case perPatchAndPerInstance
}
@available(macOS 10.12, *)
enum MTLTessellationFactorFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case half
}
@available(macOS 10.12, *)
enum MTLTessellationControlPointIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case uint16
  case uint32
}
@available(macOS 10.11, *)
class MTLRenderPipelineColorAttachmentDescriptor : NSObject, NSCopying {
  var pixelFormat: MTLPixelFormat
  var isBlendingEnabled: Bool
  var sourceRGBBlendFactor: MTLBlendFactor
  var destinationRGBBlendFactor: MTLBlendFactor
  var rgbBlendOperation: MTLBlendOperation
  var sourceAlphaBlendFactor: MTLBlendFactor
  var destinationAlphaBlendFactor: MTLBlendFactor
  var alphaBlendOperation: MTLBlendOperation
  var writeMask: MTLColorWriteMask
}
@available(macOS 10.11, *)
class MTLRenderPipelineReflection : NSObject {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  @available(macOS 11.0, *)
  var tileArguments: [MTLArgument]? { get }
}
@available(macOS 10.11, *)
class MTLRenderPipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var vertexFunction: MTLFunction?
  var fragmentFunction: MTLFunction?
  @NSCopying var vertexDescriptor: MTLVertexDescriptor?
  var sampleCount: Int
  var rasterSampleCount: Int
  var isAlphaToCoverageEnabled: Bool
  var isAlphaToOneEnabled: Bool
  var isRasterizationEnabled: Bool
  @available(macOS 10.15.4, *)
  var maxVertexAmplificationCount: Int
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat
  @available(macOS 10.11, *)
  var inputPrimitiveTopology: MTLPrimitiveTopologyClass
  @available(macOS 10.12, *)
  var tessellationPartitionMode: MTLTessellationPartitionMode
  @available(macOS 10.12, *)
  var maxTessellationFactor: Int
  @available(macOS 10.12, *)
  var isTessellationFactorScaleEnabled: Bool
  @available(macOS 10.12, *)
  var tessellationFactorFormat: MTLTessellationFactorFormat
  @available(macOS 10.12, *)
  var tessellationControlPointIndexType: MTLTessellationControlPointIndexType
  @available(macOS 10.12, *)
  var tessellationFactorStepFunction: MTLTessellationFactorStepFunction
  @available(macOS 10.12, *)
  var tessellationOutputWindingOrder: MTLWinding
  @available(macOS 10.13, *)
  var vertexBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(macOS 10.13, *)
  var fragmentBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(macOS 10.14, *)
  var supportIndirectCommandBuffers: Bool
  @available(macOS 11.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
}
@available(macOS 10.11, *)
protocol MTLRenderPipelineState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
  @available(macOS 11.0, *)
  var maxTotalThreadsPerThreadgroup: Int { get }
  @available(macOS 11.0, *)
  var threadgroupSizeMatchesTileSize: Bool { get }
  @available(macOS 11.0, *)
  var imageblockSampleLength: Int { get }
  @available(macOS 11.0, *)
  func imageblockMemoryLength(forDimensions imageblockDimensions: MTLSize) -> Int
  @available(macOS 10.14, *)
  var supportIndirectCommandBuffers: Bool { get }
}
@available(macOS 10.11, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
}
@available(macOS 11.0, *)
class MTLTileRenderPipelineColorAttachmentDescriptor : NSObject, NSCopying {
  var pixelFormat: MTLPixelFormat
}
@available(macOS 11.0, *)
class MTLTileRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLTileRenderPipelineColorAttachmentDescriptor
}
@available(macOS 11.0, *)
class MTLTileRenderPipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var tileFunction: MTLFunction
  var rasterSampleCount: Int
  var colorAttachments: MTLTileRenderPipelineColorAttachmentDescriptorArray { get }
  var threadgroupSizeMatchesTileSize: Bool
  @available(macOS 11.0, *)
  var tileBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(macOS 10.15, *)
  var maxTotalThreadsPerThreadgroup: Int
  @available(macOS 11.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
}
