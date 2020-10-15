
@available(macOS 10.11, *)
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
  @available(macOS 10.13, *)
  case texture
  @available(macOS 10.13, *)
  case sampler
  @available(macOS 10.13, *)
  case pointer
  @available(macOS 11.0, *)
  case r8Unorm
  @available(macOS 11.0, *)
  case r8Snorm
  @available(macOS 11.0, *)
  case r16Unorm
  @available(macOS 11.0, *)
  case r16Snorm
  @available(macOS 11.0, *)
  case rg8Unorm
  @available(macOS 11.0, *)
  case rg8Snorm
  @available(macOS 11.0, *)
  case rg16Unorm
  @available(macOS 11.0, *)
  case rg16Snorm
  @available(macOS 11.0, *)
  case rgba8Unorm
  @available(macOS 11.0, *)
  case rgba8Unorm_srgb
  @available(macOS 11.0, *)
  case rgba8Snorm
  @available(macOS 11.0, *)
  case rgba16Unorm
  @available(macOS 11.0, *)
  case rgba16Snorm
  @available(macOS 11.0, *)
  case rgb10a2Unorm
  @available(macOS 11.0, *)
  case rg11b10Float
  @available(macOS 11.0, *)
  case rgb9e5Float
  @available(macOS 10.14, *)
  case renderPipeline
  @available(macOS 11.0, *)
  case computePipeline
  @available(macOS 10.14, *)
  case indirectCommandBuffer
  @available(macOS 11.0, *)
  case visibleFunctionTable
  @available(macOS 11.0, *)
  case intersectionFunctionTable
  @available(macOS 11.0, *)
  case primitiveAccelerationStructure
  @available(macOS 11.0, *)
  case instanceAccelerationStructure
}
@available(macOS 10.11, *)
enum MTLArgumentType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case buffer
  case threadgroupMemory
  case texture
  case sampler
  @available(macOS 11.0, *)
  case imageblockData
  @available(macOS 11.0, *)
  case imageblock
  @available(macOS 11.0, *)
  case visibleFunctionTable
  @available(macOS 11.0, *)
  case primitiveAccelerationStructure
  @available(macOS 11.0, *)
  case instanceAccelerationStructure
  @available(macOS 11.0, *)
  case intersectionFunctionTable
}
@available(macOS 10.11, *)
enum MTLArgumentAccess : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case readOnly
  case readWrite
  case writeOnly
}
@available(macOS 10.13, *)
class MTLType : NSObject {
  var dataType: MTLDataType { get }
}
@available(macOS 10.11, *)
class MTLStructMember : NSObject {
  var name: String { get }
  var offset: Int { get }
  var dataType: MTLDataType { get }
  func structType() -> MTLStructType?
  func arrayType() -> MTLArrayType?
  @available(macOS 10.13, *)
  func textureReferenceType() -> MTLTextureReferenceType?
  @available(macOS 10.13, *)
  func pointerType() -> MTLPointerType?
  @available(macOS 10.13, *)
  var argumentIndex: Int { get }
}
@available(macOS 10.11, *)
class MTLStructType : MTLType {
  var members: [MTLStructMember] { get }
  func memberByName(_ name: String) -> MTLStructMember?
}
@available(macOS 10.11, *)
class MTLArrayType : MTLType {
  var elementType: MTLDataType { get }
  var arrayLength: Int { get }
  var stride: Int { get }
  @available(macOS 10.13, *)
  var argumentIndexStride: Int { get }
  func elementStructType() -> MTLStructType?
  func element() -> MTLArrayType?
  @available(macOS 10.13, *)
  func elementTextureReferenceType() -> MTLTextureReferenceType?
  @available(macOS 10.13, *)
  func elementPointerType() -> MTLPointerType?
}
@available(macOS 10.13, *)
class MTLPointerType : MTLType {
  var elementType: MTLDataType { get }
  var access: MTLArgumentAccess { get }
  var alignment: Int { get }
  var dataSize: Int { get }
  @available(macOS 10.13, *)
  var elementIsArgumentBuffer: Bool { get }
  @available(macOS 10.13, *)
  func elementStructType() -> MTLStructType?
  @available(macOS 10.13, *)
  func elementArrayType() -> MTLArrayType?
}
@available(macOS 10.13, *)
class MTLTextureReferenceType : MTLType {
  var textureDataType: MTLDataType { get }
  var textureType: MTLTextureType { get }
  var access: MTLArgumentAccess { get }
  var isDepthTexture: Bool { get }
}
@available(macOS 10.11, *)
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
  @available(macOS 10.13, *)
  var bufferPointerType: MTLPointerType? { get }
  var threadgroupMemoryAlignment: Int { get }
  var threadgroupMemoryDataSize: Int { get }
  var textureType: MTLTextureType { get }
  var textureDataType: MTLDataType { get }
  @available(macOS 10.12, *)
  var isDepthTexture: Bool { get }
  @available(macOS 10.13, *)
  var arrayLength: Int { get }
}
