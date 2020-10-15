
var MTLMaxRenderPassSampleBuffers: Int32 { get }
@available(macOS 10.11, *)
enum MTLLoadAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case dontCare
  case load
  case clear
}
@available(macOS 10.11, *)
enum MTLStoreAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case dontCare
  case store
  case multisampleResolve
  @available(macOS 10.12, *)
  case storeAndMultisampleResolve
  @available(macOS 10.12, *)
  case unknown
  @available(macOS 10.13, *)
  case customSampleDepthStore
}
@available(macOS 10.13, *)
struct MTLStoreActionOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var customSamplePositions: MTLStoreActionOptions { get }
}
struct MTLClearColor {
  var red: Double
  var green: Double
  var blue: Double
  var alpha: Double
  init()
  init(red: Double, green: Double, blue: Double, alpha: Double)
}
@available(macOS 10.11, *)
class MTLRenderPassAttachmentDescriptor : NSObject, NSCopying {
  var texture: MTLTexture?
  var level: Int
  var slice: Int
  var depthPlane: Int
  var resolveTexture: MTLTexture?
  var resolveLevel: Int
  var resolveSlice: Int
  var resolveDepthPlane: Int
  var loadAction: MTLLoadAction
  var storeAction: MTLStoreAction
  @available(macOS 10.13, *)
  var storeActionOptions: MTLStoreActionOptions
}
@available(macOS 10.11, *)
class MTLRenderPassColorAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearColor: MTLClearColor
}
@available(macOS 10.14, *)
enum MTLMultisampleDepthResolveFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case sample0
  case min
  case max
}
@available(macOS 10.11, *)
class MTLRenderPassDepthAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearDepth: Double
  @available(macOS 10.14, *)
  var depthResolveFilter: MTLMultisampleDepthResolveFilter
}
@available(macOS 10.14, *)
enum MTLMultisampleStencilResolveFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case sample0
  case depthResolvedSample
}
@available(macOS 10.11, *)
class MTLRenderPassStencilAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearStencil: UInt32
  @available(macOS 10.14, *)
  var stencilResolveFilter: MTLMultisampleStencilResolveFilter
}
@available(macOS 10.11, *)
class MTLRenderPassColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPassColorAttachmentDescriptor!
}
@available(macOS 11.0, *)
class MTLRenderPassSampleBufferAttachmentDescriptor : NSObject, NSCopying {
  @available(macOS 11.0, *)
  var sampleBuffer: MTLCounterSampleBuffer?
  @available(macOS 11.0, *)
  var startOfVertexSampleIndex: Int
  @available(macOS 11.0, *)
  var endOfVertexSampleIndex: Int
  @available(macOS 11.0, *)
  var startOfFragmentSampleIndex: Int
  @available(macOS 11.0, *)
  var endOfFragmentSampleIndex: Int
}
@available(macOS 11.0, *)
class MTLRenderPassSampleBufferAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPassSampleBufferAttachmentDescriptor!
}
@available(macOS 10.11, *)
class MTLRenderPassDescriptor : NSObject, NSCopying {
  var colorAttachments: MTLRenderPassColorAttachmentDescriptorArray { get }
  @NSCopying var depthAttachment: MTLRenderPassDepthAttachmentDescriptor!
  @NSCopying var stencilAttachment: MTLRenderPassStencilAttachmentDescriptor!
  var visibilityResultBuffer: MTLBuffer?
  @available(macOS 10.11, *)
  var renderTargetArrayLength: Int
  @available(macOS 11.0, *)
  var imageblockSampleLength: Int
  @available(macOS 11.0, *)
  var threadgroupMemoryLength: Int
  @available(macOS 11.0, *)
  var tileWidth: Int
  @available(macOS 11.0, *)
  var tileHeight: Int
  @available(macOS 10.15, *)
  var defaultRasterSampleCount: Int
  @available(macOS 10.15, *)
  var renderTargetWidth: Int
  @available(macOS 10.15, *)
  var renderTargetHeight: Int
  @available(macOS 10.13, *)
  func __setSamplePositions(_ positions: UnsafePointer<MTLSamplePosition>?, count: Int)
  @available(macOS 10.13, *)
  func __getSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>?, count: Int) -> Int
  @available(macOS 10.15.4, *)
  var rasterizationRateMap: MTLRasterizationRateMap?
  @available(macOS 11.0, *)
  var sampleBufferAttachments: MTLRenderPassSampleBufferAttachmentDescriptorArray { get }
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLRenderPassDescriptor {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func setSamplePositions(_ positions: [MTLSamplePosition])
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func getSamplePositions() -> [MTLSamplePosition]
}
func MTLClearColorMake(_ red: Double, _ green: Double, _ blue: Double, _ alpha: Double) -> MTLClearColor
