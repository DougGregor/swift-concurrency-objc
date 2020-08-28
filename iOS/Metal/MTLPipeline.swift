
@available(iOS 11.0, *)
enum MTLMutability : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case mutable
  case immutable
}
@available(iOS 11.0, *)
class MTLPipelineBufferDescriptor : NSObject, NSCopying {
  var mutability: MTLMutability
}
@available(iOS 11.0, *)
class MTLPipelineBufferDescriptorArray : NSObject {
  subscript(bufferIndex: Int) -> MTLPipelineBufferDescriptor!
}
