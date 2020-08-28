
var MTLMaxRenderPassSampleBuffers: Int32 { get }
@available(tvOS 8.0, *)
enum MTLLoadAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case dontCare
  case load
  case clear
}
@available(tvOS 8.0, *)
enum MTLStoreAction : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case dontCare
  case store
  case multisampleResolve
  @available(tvOS 10.0, *)
  case storeAndMultisampleResolve
  @available(tvOS 10.0, *)
  case unknown
  @available(tvOS 11.0, *)
  case customSampleDepthStore
}
@available(tvOS 11.0, *)
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
@available(tvOS 8.0, *)
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
  @available(tvOS 11.0, *)
  var storeActionOptions: MTLStoreActionOptions
}
@available(tvOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearColor: MTLClearColor
}
@available(tvOS 9.0, *)
enum MTLMultisampleDepthResolveFilter : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case sample0
  case min
  case max
}
@available(tvOS 8.0, *)
class MTLRenderPassDepthAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearDepth: Double
  @available(tvOS 9.0, *)
  var depthResolveFilter: MTLMultisampleDepthResolveFilter
}
@available(tvOS 8.0, *)
class MTLRenderPassStencilAttachmentDescriptor : MTLRenderPassAttachmentDescriptor {
  var clearStencil: UInt32
}
@available(tvOS 8.0, *)
class MTLRenderPassColorAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPassColorAttachmentDescriptor!
}
@available(tvOS 14.0, *)
class MTLRenderPassSampleBufferAttachmentDescriptor : NSObject, NSCopying {
  @available(tvOS 14.0, *)
  var sampleBuffer: MTLCounterSampleBuffer?
  @available(tvOS 14.0, *)
  var startOfVertexSampleIndex: Int
  @available(tvOS 14.0, *)
  var endOfVertexSampleIndex: Int
  @available(tvOS 14.0, *)
  var startOfFragmentSampleIndex: Int
  @available(tvOS 14.0, *)
  var endOfFragmentSampleIndex: Int
}
@available(tvOS 14.0, *)
class MTLRenderPassSampleBufferAttachmentDescriptorArray : NSObject {
  subscript(attachmentIndex: Int) -> MTLRenderPassSampleBufferAttachmentDescriptor!
}
@available(tvOS 8.0, *)
class MTLRenderPassDescriptor : NSObject, NSCopying {
  var colorAttachments: MTLRenderPassColorAttachmentDescriptorArray { get }
  @NSCopying var depthAttachment: MTLRenderPassDepthAttachmentDescriptor!
  @NSCopying var stencilAttachment: MTLRenderPassStencilAttachmentDescriptor!
  var visibilityResultBuffer: MTLBuffer?
  @available(tvOS 11.0, *)
  func __setSamplePositions(_ positions: UnsafePointer<MTLSamplePosition>?, count: Int)
  @available(tvOS 11.0, *)
  func __getSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>?, count: Int) -> Int
  @available(tvOS 14.0, *)
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
