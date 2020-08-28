
@available(macOS 10.13, *)
enum MTLMutability : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case mutable
  case immutable
}
@available(macOS 10.13, *)
class MTLPipelineBufferDescriptor : NSObject, NSCopying {
  var mutability: MTLMutability
}
@available(macOS 10.13, *)
class MTLPipelineBufferDescriptorArray : NSObject {
  subscript(bufferIndex: Int) -> MTLPipelineBufferDescriptor!
}
