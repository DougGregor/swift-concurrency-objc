
@available(tvOS 8.0, *)
enum MTLTextureType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case type1D
  case type1DArray
  case type2D
  case type2DArray
  case type2DMultisample
  case typeCube
  @available(tvOS 11.0, *)
  case typeCubeArray
  case type3D
  @available(tvOS 12.0, *)
  case typeTextureBuffer
}
@available(tvOS 13.0, *)
enum MTLTextureSwizzle : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case zero
  case one
  case red
  case green
  case blue
  case alpha
}
@available(tvOS 13.0, *)
struct MTLTextureSwizzleChannels {
  var red: MTLTextureSwizzle
  var green: MTLTextureSwizzle
  var blue: MTLTextureSwizzle
  var alpha: MTLTextureSwizzle
  init()
  init(red: MTLTextureSwizzle, green: MTLTextureSwizzle, blue: MTLTextureSwizzle, alpha: MTLTextureSwizzle)
}
@available(tvOS 13.0, *)
class MTLSharedTextureHandle : NSObject, NSSecureCoding {
  var device: MTLDevice { get }
  var label: String? { get }
}
@available(tvOS 9.0, *)
struct MTLTextureUsage : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var unknown: MTLTextureUsage { get }
  static var shaderRead: MTLTextureUsage { get }
  static var shaderWrite: MTLTextureUsage { get }
  static var renderTarget: MTLTextureUsage { get }
  static var pixelFormatView: MTLTextureUsage { get }
}
@available(tvOS 8.0, *)
class MTLTextureDescriptor : NSObject, NSCopying {
  class func texture2DDescriptor(pixelFormat: MTLPixelFormat, width: Int, height: Int, mipmapped: Bool) -> MTLTextureDescriptor
  class func textureCubeDescriptor(pixelFormat: MTLPixelFormat, size: Int, mipmapped: Bool) -> MTLTextureDescriptor
  @available(tvOS 12.0, *)
  class func textureBufferDescriptor(with pixelFormat: MTLPixelFormat, width: Int, resourceOptions: MTLResourceOptions = [], usage: MTLTextureUsage) -> MTLTextureDescriptor
  var textureType: MTLTextureType
  var pixelFormat: MTLPixelFormat
  var width: Int
  var height: Int
  var depth: Int
  var mipmapLevelCount: Int
  var sampleCount: Int
  var arrayLength: Int
  var resourceOptions: MTLResourceOptions
  @available(tvOS 9.0, *)
  var cpuCacheMode: MTLCPUCacheMode
  @available(tvOS 9.0, *)
  var storageMode: MTLStorageMode
  @available(tvOS 13.0, *)
  var hazardTrackingMode: MTLHazardTrackingMode
  @available(tvOS 9.0, *)
  var usage: MTLTextureUsage
  @available(tvOS 12.0, *)
  var allowGPUOptimizedContents: Bool
  @available(tvOS 13.0, *)
  var swizzle: MTLTextureSwizzleChannels
}
@available(tvOS 8.0, *)
protocol MTLTexture : MTLResource {
  @available(tvOS, introduced: 8.0, deprecated: 10.0, message: "Use parentTexture or buffer instead")
  var rootResource: MTLResource? { get }
  @available(tvOS 9.0, *)
  var parent: MTLTexture? { get }
  @available(tvOS 9.0, *)
  var parentRelativeLevel: Int { get }
  @available(tvOS 9.0, *)
  var parentRelativeSlice: Int { get }
  @available(tvOS 9.0, *)
  var buffer: MTLBuffer? { get }
  @available(tvOS 9.0, *)
  var bufferOffset: Int { get }
  @available(tvOS 9.0, *)
  var bufferBytesPerRow: Int { get }
  @available(tvOS 11.0, *)
  var iosurface: IOSurfaceRef? { get }
  @available(tvOS 11.0, *)
  var iosurfacePlane: Int { get }
  var textureType: MTLTextureType { get }
  var pixelFormat: MTLPixelFormat { get }
  var width: Int { get }
  var height: Int { get }
  var depth: Int { get }
  var mipmapLevelCount: Int { get }
  var sampleCount: Int { get }
  var arrayLength: Int { get }
  var usage: MTLTextureUsage { get }
  @available(tvOS 13.0, *)
  var isShareable: Bool { get }
  var isFramebufferOnly: Bool { get }
  @available(tvOS 12.0, *)
  var allowGPUOptimizedContents: Bool { get }
  func getBytes(_ pixelBytes: UnsafeMutableRawPointer, bytesPerRow: Int, bytesPerImage: Int, from region: MTLRegion, mipmapLevel level: Int, slice: Int)
  func replace(region: MTLRegion, mipmapLevel level: Int, slice: Int, withBytes pixelBytes: UnsafeRawPointer, bytesPerRow: Int, bytesPerImage: Int)
  func getBytes(_ pixelBytes: UnsafeMutableRawPointer, bytesPerRow: Int, from region: MTLRegion, mipmapLevel level: Int)
  func replace(region: MTLRegion, mipmapLevel level: Int, withBytes pixelBytes: UnsafeRawPointer, bytesPerRow: Int)
  func makeTextureView(pixelFormat: MTLPixelFormat) -> MTLTexture?
  @available(tvOS 9.0, *)
  func __newTextureView(with pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange) -> MTLTexture?
  @available(tvOS 13.0, *)
  func makeSharedTextureHandle() -> MTLSharedTextureHandle?
  @available(tvOS 13.0, *)
  var swizzle: MTLTextureSwizzleChannels { get }
  @available(tvOS 13.0, *)
  func __newTextureView(with pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: NSRange, slices sliceRange: NSRange, swizzle: MTLTextureSwizzleChannels) -> MTLTexture?
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLTexture {
  @available(macOS 10.11, iOS 9.0, tvOS 9.0, *)
  func makeTextureView(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: Range<Int>, slices sliceRange: Range<Int>) -> MTLTexture?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, *)
  func makeTextureView(pixelFormat: MTLPixelFormat, textureType: MTLTextureType, levels levelRange: Range<Int>, slices sliceRange: Range<Int>, swizzle: MTLTextureSwizzleChannels) -> MTLTexture?
}
