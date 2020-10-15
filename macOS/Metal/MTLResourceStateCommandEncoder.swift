
@available(macOS 11.0, *)
enum MTLSparseTextureMappingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case map
  case unmap
}
struct MTLMapIndirectArguments {
  var regionOriginX: UInt32
  var regionOriginY: UInt32
  var regionOriginZ: UInt32
  var regionSizeWidth: UInt32
  var regionSizeHeight: UInt32
  var regionSizeDepth: UInt32
  var mipMapLevel: UInt32
  var sliceId: UInt32
  init()
  init(regionOriginX: UInt32, regionOriginY: UInt32, regionOriginZ: UInt32, regionSizeWidth: UInt32, regionSizeHeight: UInt32, regionSizeDepth: UInt32, mipMapLevel: UInt32, sliceId: UInt32)
}
@available(macOS 10.15, *)
protocol MTLResourceStateCommandEncoder : MTLCommandEncoder {
  @available(macOS 11.0, *)
  optional func updateTextureMappings(_ texture: MTLTexture, mode: MTLSparseTextureMappingMode, regions: UnsafePointer<MTLRegion>, mipLevels: UnsafePointer<Int>, slices: UnsafePointer<Int>, numRegions: Int)
  @available(macOS 11.0, *)
  optional func updateTextureMapping(_ texture: MTLTexture, mode: MTLSparseTextureMappingMode, region: MTLRegion, mipLevel: Int, slice: Int)
  @available(macOS 11.0, *)
  optional func updateTextureMapping(_ texture: MTLTexture, mode: MTLSparseTextureMappingMode, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(macOS 11.0, *)
  optional func update(_ fence: MTLFence)
  @available(macOS 11.0, *)
  optional func wait(for fence: MTLFence)
}
