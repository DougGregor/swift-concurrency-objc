
@available(tvOS 8.0, *)
enum MTLDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case `struct`
  case array
  case float
  case float2
  case float3
  case float4
  case float2x2
  case float2x3
  case float2x4
  case float3x2
  case float3x3
  case float3x4
  case float4x2
  case float4x3
  case float4x4
  case half
  case half2
  case half3
  case half4
  case half2x2
  case half2x3
  case half2x4
  case half3x2
  case half3x3
  case half3x4
  case half4x2
  case half4x3
  case half4x4
  case int
  case int2
  case int3
  case int4
  case uint
  case uint2
  case uint3
  case uint4
  case short
  case short2
  case short3
  case short4
  case ushort
  case ushort2
  case ushort3
  case ushort4
  case char
  case char2
  case char3
  case char4
  case uchar
  case uchar2
  case uchar3
  case uchar4
  case bool
  case bool2
  case bool3
  case bool4
  @available(tvOS 11.0, *)
  case texture
  @available(tvOS 11.0, *)
  case sampler
  @available(tvOS 11.0, *)
  case pointer
  @available(tvOS 13.0, *)
  case renderPipeline
  @available(tvOS 13.0, *)
  case computePipeline
  @available(tvOS 12.0, *)
  case indirectCommandBuffer
}
@available(tvOS 8.0, *)
enum MTLArgumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case buffer
  case threadgroupMemory
  case texture
  case sampler
}
@available(tvOS 8.0, *)
enum MTLArgumentAccess : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case readOnly
  case readWrite
  case writeOnly
}
@available(tvOS 11.0, *)
class MTLType : NSObject {
  var dataType: MTLDataType { get }
}
@available(tvOS 8.0, *)
class MTLStructMember : NSObject {
  var name: String { get }
  var offset: Int { get }
  var dataType: MTLDataType { get }
  func structType() -> MTLStructType?
  func arrayType() -> MTLArrayType?
  @available(tvOS 11.0, *)
  func textureReferenceType() -> MTLTextureReferenceType?
  @available(tvOS 11.0, *)
  func pointerType() -> MTLPointerType?
  @available(tvOS 11.0, *)
  var argumentIndex: Int { get }
}
@available(tvOS 8.0, *)
class MTLStructType : MTLType {
  var members: [MTLStructMember] { get }
  func memberByName(_ name: String) -> MTLStructMember?
}
@available(tvOS 8.0, *)
class MTLArrayType : MTLType {
  var elementType: MTLDataType { get }
  var arrayLength: Int { get }
  var stride: Int { get }
  @available(tvOS 11.0, *)
  var argumentIndexStride: Int { get }
  func elementStructType() -> MTLStructType?
  func element() -> MTLArrayType?
  @available(tvOS 11.0, *)
  func elementTextureReferenceType() -> MTLTextureReferenceType?
  @available(tvOS 11.0, *)
  func elementPointerType() -> MTLPointerType?
}
@available(tvOS 11.0, *)
class MTLPointerType : MTLType {
  var elementType: MTLDataType { get }
  var access: MTLArgumentAccess { get }
  var alignment: Int { get }
  var dataSize: Int { get }
  @available(tvOS 11.0, *)
  var elementIsArgumentBuffer: Bool { get }
  @available(tvOS 11.0, *)
  func elementStructType() -> MTLStructType?
  @available(tvOS 11.0, *)
  func elementArrayType() -> MTLArrayType?
}
@available(tvOS 11.0, *)
class MTLTextureReferenceType : MTLType {
  var textureDataType: MTLDataType { get }
  var textureType: MTLTextureType { get }
  var access: MTLArgumentAccess { get }
  var isDepthTexture: Bool { get }
}
@available(tvOS 8.0, *)
class MTLArgument : NSObject {
  var name: String { get }
  var type: MTLArgumentType { get }
  var access: MTLArgumentAccess { get }
  var index: Int { get }
  var isActive: Bool { get }
  var bufferAlignment: Int { get }
  var bufferDataSize: Int { get }
  var bufferDataType: MTLDataType { get }
  var bufferStructType: MTLStructType? { get }
  @available(tvOS 11.0, *)
  var bufferPointerType: MTLPointerType? { get }
  var threadgroupMemoryAlignment: Int { get }
  var threadgroupMemoryDataSize: Int { get }
  var textureType: MTLTextureType { get }
  var textureDataType: MTLDataType { get }
  @available(tvOS 10.0, *)
  var isDepthTexture: Bool { get }
  @available(tvOS 10.0, *)
  var arrayLength: Int { get }
}
