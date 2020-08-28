
@available(tvOS 8.0, *)
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
  @available(tvOS 10.11, *)
  case source1Color
  @available(tvOS 10.11, *)
  case oneMinusSource1Color
  @available(tvOS 10.11, *)
  case source1Alpha
  @available(tvOS 10.11, *)
  case oneMinusSource1Alpha
}
@available(tvOS 8.0, *)
enum MTLBlendOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case add
  case subtract
  case reverseSubtract
  case min
  case max
}
@available(tvOS 8.0, *)
struct MTLColorWriteMask : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var red: MTLColorWriteMask { get }
  static var green: MTLColorWriteMask { get }
  static var blue: MTLColorWriteMask { get }
  static var alpha: MTLColorWriteMask { get }
  static var all: MTLColorWriteMask { get }
}
@available(tvOS 12.0, *)
enum MTLPrimitiveTopologyClass : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unspecified
  case point
  case line
  case triangle
}
@available(tvOS 10.0, *)
enum MTLTessellationPartitionMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case pow2
  case integer
  case fractionalOdd
  case fractionalEven
}
@available(tvOS 10.0, *)
enum MTLTessellationFactorStepFunction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case constant
  case perPatch
  case perInstance
  case perPatchAndPerInstance
}
@available(tvOS 10.0, *)
enum MTLTessellationFactorFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case half
}
@available(tvOS 10.0, *)
enum MTLTessellationControlPointIndexType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case uint16
  case uint32
}
@available(tvOS 8.0, *)
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
@available(tvOS 8.0, *)
class MTLRenderPipelineReflection : NSObject {
  var vertexArguments: [MTLArgument]? { get }
  var fragmentArguments: [MTLArgument]? { get }
}
@available(tvOS 8.0, *)
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
  var colorAttachments: MTLRenderPipelineColorAttachmentDescriptorArray { get }
  var depthAttachmentPixelFormat: MTLPixelFormat
  var stencilAttachmentPixelFormat: MTLPixelFormat
  @available(tvOS 10.0, *)
  var tessellationPartitionMode: MTLTessellationPartitionMode
  @available(tvOS 10.0, *)
  var maxTessellationFactor: Int
  @available(tvOS 10.0, *)
  var isTessellationFactorScaleEnabled: Bool
  @available(tvOS 10.0, *)
  var tessellationFactorFormat: MTLTessellationFactorFormat
  @available(tvOS 10.0, *)
  var tessellationControlPointIndexType: MTLTessellationControlPointIndexType
  @available(tvOS 10.0, *)
  var tessellationFactorStepFunction: MTLTessellationFactorStepFunction
  @available(tvOS 10.0, *)
  var tessellationOutputWindingOrder: MTLWinding
  @available(tvOS 11.0, *)
  var vertexBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(tvOS 11.0, *)
  var fragmentBuffers: MTLPipelineBufferDescriptorArray { get }
  @available(tvOS 12.0, *)
  var supportIndirectCommandBuffers: Bool
  @available(tvOS 14.0, *)
  var binaryArchives: [MTLBinaryArchive]?
  func reset()
}
@available(tvOS 8.0, *)
protocol MTLRenderPipelineState : NSObjectProtocol {
  var label: String? { get }
  var device: MTLDevice { get }
  @available(tvOS 12.0, *)
  var supportIndirectCommandBuffers: Bool { get }
}
@available(tvOS 8.0, *)
class MTLRenderPipelineColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPipelineColorAttachmentDescriptor!
}
