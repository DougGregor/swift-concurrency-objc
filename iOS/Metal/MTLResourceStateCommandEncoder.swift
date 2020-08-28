
@available(iOS 13.0, *)
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
@available(iOS 13.0, *)
protocol MTLResourceStateCommandEncoder : MTLCommandEncoder {
  @available(iOS 13.0, *)
  func updateTextureMappings(_ texture: MTLTexture, mode: MTLSparseTextureMappingMode, regions: UnsafePointer<MTLRegion>, mipLevels: UnsafePointer<Int>, slices: UnsafePointer<Int>, numRegions: Int)
  @available(iOS 13.0, *)
  func updateTextureMapping(_ texture: MTLTexture, mode: MTLSparseTextureMappingMode, region: MTLRegion, mipLevel: Int, slice: Int)
  @available(iOS 13.0, *)
  func updateTextureMapping(_ texture: MTLTexture, mode: MTLSparseTextureMappingMode, indirectBuffer: MTLBuffer, indirectBufferOffset: Int)
  @available(iOS 13.0, *)
  func update(_ fence: MTLFence)
  @available(iOS 13.0, *)
  func wait(for fence: MTLFence)
}
