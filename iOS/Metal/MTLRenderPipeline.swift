
@available(iOS 8.0, *)
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
  @available(iOS 10.11, *)
  case source1Color
  @available(iOS 10.11, *)
  case oneMinusSource1Color
  @available(iOS 10.11, *)
  case source1Alpha
  @available(iOS 10.11, *)
  case oneMinusSource1Alpha
}
@available(iOS 8.0, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case subtract
  case reverseSubtract
  case min
  case max
}
@available(iOS 8.0, *)
struct MTLColorWriteMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var red: MTLColorWriteMask { get }
  static var green: MTLColorWriteMask { get }
  static var blue: MTLColorWriteMask { get }
  static var alpha: MTLColorWriteMask { get }
  static var all: MTLColorWriteMask { get }
}
@available(iOS 12.0, *)
enum MTLPrimitiveTopologyClass : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unspecified
  case point
  case line
  case triangle
}
@available(iOS 10.0, *)
enum MTLTessellationPartitionMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case pow2
  case integer
  case fractionalOdd
  case fractionalEven
}
@available(iOS 10.0, *)
enum MTLTessellationFactorStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constant
  case perPatch
  case perInstance
  case perPatchAndPerInstance
}
@available(iOS 10.0, *)
enum MTLTessellationFactorFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case half
}
@available(iOS 10.0, *)
enum MTLTessellationControlPointIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case uint16
  case uint32
}
@available(iOS 8.0, *)
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
@available(iOS 8.0, *)
class MTLRenderPipelineReflection : NSObject {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
  @available(iOS 11.0, *)
  var tileArguments: [MTLArgument]? { get }
}
@available(iOS 8.0, *)
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
  @available(iOS 13.0, *)
  var maxVertexAmplificationCount: Int
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat
  @available(iOS 12.0, *)
  var inputPrimitiveTopology: MTLPrimitiveTopologyClass
  @available(iOS 10.0, *)
  var tessellationPartitionMode: MTLTessellationPartitionMode
  @available(iOS 10.0, *)
  var maxTessellationFactor: Int
  @available(iOS 10.0, *)
  var isTessellationFactorScaleEnabled: Bool
  @available(iOS 10.0, *)
  var tessellationFactorFormat: MTLTessellationFactorFormat
  @available(iOS 10.0, *)
  var tessellationControlPointIndexType: MTLTessellationControlPointIndexType
  @available(iOS 10.0, *)
  var tessellationFactorStepFunction: MTLTessellationFactorStepFunction
  @available(iOS 10.0, *)
  var tessellationOutputWindingOrder: MTLWinding
  @available(iOS 11.0, *)
  var vertexBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(iOS 11.0, *)
  var fragmentBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(iOS 12.0, *)
  var supportIndirectCommandBuffers: Bool
  @available(iOS 14.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
}
@available(iOS 8.0, *)
protocol MTLRenderPipelineState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
  @available(iOS 11.0, *)
  var maxTotalThreadsPerThreadgroup: Int { get }
  @available(iOS 11.0, *)
  var threadgroupSizeMatchesTileSize: Bool { get }
  @available(iOS 11.0, *)
  var imageblockSampleLength: Int { get }
  @available(iOS 11.0, *)
  func imageblockMemoryLength(forDimensions imageblockDimensions: MTLSize) -> Int
  @available(iOS 12.0, *)
  var supportIndirectCommandBuffers: Bool { get }
}
@available(iOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
}
@available(iOS 11.0, *)
class MTLTileRenderPipelineColorAttachmentDescriptor : NSObject, NSCopying {
  var pixelFormat: MTLPixelFormat
}
@available(iOS 11.0, *)
class MTLTileRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLTileRenderPipelineColorAttachmentDescriptor
}
@available(iOS 11.0, *)
class MTLTileRenderPipelineDescriptor : NSObject, NSCopying {
  var label: String?
  var tileFunction: MTLFunction
  var rasterSampleCount: Int
  var colorAttachments: MTLTileRenderPipelineColorAttachmentDescriptorArray { get }
  var threadgroupSizeMatchesTileSize: Bool
  @available(iOS 11.0, *)
  var tileBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(iOS 12.0, *)
  var maxTotalThreadsPerThreadgroup: Int
  @available(iOS 14.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
}
