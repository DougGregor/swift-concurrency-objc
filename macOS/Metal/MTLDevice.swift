
@available(macOS 10.11, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(macOS 10.11, *)
func MTLCopyAllDevices() -> [MTLDevice]
@available(macOS 10.13, *)
struct MTLDeviceNotificationName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension MTLDeviceNotificationName {
  @available(macOS 10.13, *)
  static let wasAdded: MTLDeviceNotificationName
  @available(macOS 10.13, *)
  static let removalRequested: MTLDeviceNotificationName
  @available(macOS 10.13, *)
  static let wasRemoved: MTLDeviceNotificationName
}
@available(macOS 10.13, *)
typealias MTLDeviceNotificationHandler = (MTLDevice, MTLDeviceNotificationName) -> Void
@available(macOS 10.13, *)
func __MTLCopyAllDevicesWithObserver(_ observer: UnsafeMutablePointer<NSObjectProtocol?>, _ handler: @escaping MTLDeviceNotificationHandler) -> [MTLDevice]
@available(macOS 10.13, *)
func MTLRemoveDeviceObserver(_ observer: NSObjectProtocol)
@available(macOS 10.11, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.11, *)
  case macOS_GPUFamily1_v1
  @available(macOS 10.11, *)
  static var osx_GPUFamily1_v1: MTLFeatureSet { get }
  @available(macOS 10.12, *)
  case macOS_GPUFamily1_v2
  @available(macOS 10.12, *)
  static var osx_GPUFamily1_v2: MTLFeatureSet { get }
  @available(macOS 10.12, *)
  case macOS_ReadWriteTextureTier2
  @available(macOS 10.12, *)
  static var osx_ReadWriteTextureTier2: MTLFeatureSet { get }
  @available(macOS 10.13, *)
  case macOS_GPUFamily1_v3
  @available(macOS 10.14, *)
  case macOS_GPUFamily1_v4
  @available(macOS 10.14, *)
  case macOS_GPUFamily2_v1
}
@available(macOS 10.15, *)
enum MTLGPUFamily : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case apple1
  case apple2
  case apple3
  case apple4
  case apple5
  case apple6
  case apple7
  case mac1
  case mac2
  case common1
  case common2
  case common3
  case macCatalyst1
  case macCatalyst2
}
@available(macOS 10.15, *)
enum MTLDeviceLocation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case builtIn
  case slot
  case external
  case unspecified
}
@available(macOS 10.11, *)
struct MTLPipelineOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var argumentInfo: MTLPipelineOption { get }
  static var bufferTypeInfo: MTLPipelineOption { get }
  @available(macOS 11.0, *)
  static var failOnBinaryArchiveMiss: MTLPipelineOption { get }
}
@available(macOS 10.13, *)
enum MTLReadWriteTextureTier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case tierNone
  case tier1
  case tier2
}
@available(macOS 10.13, *)
enum MTLArgumentBuffersTier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case tier1
  case tier2
}
@available(macOS 11.0, *)
enum MTLSparseTextureRegionAlignmentMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case outward
  case inward
}
struct MTLAccelerationStructureSizes {
  var accelerationStructureSize: Int
  var buildScratchBufferSize: Int
  var refitScratchBufferSize: Int
  init()
  init(accelerationStructureSize: Int, buildScratchBufferSize: Int, refitScratchBufferSize: Int)
}
@available(macOS 11.0, *)
enum MTLCounterSamplingPoint : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case atStageBoundary
  case atDrawBoundary
  case atDispatchBoundary
  case atTileDispatchBoundary
  case atBlitBoundary
}
struct MTLSizeAndAlign {
  var size: Int
  var align: Int
  init()
  init(size: Int, align: Int)
}
typealias MTLAutoreleasedRenderPipelineReflection = MTLRenderPipelineReflection
typealias MTLAutoreleasedComputePipelineReflection = MTLComputePipelineReflection
typealias MTLNewLibraryCompletionHandler = (MTLLibrary?, Error?) -> Void
typealias MTLNewRenderPipelineStateCompletionHandler = (MTLRenderPipelineState?, Error?) -> Void
typealias MTLNewRenderPipelineStateWithReflectionCompletionHandler = (MTLRenderPipelineState?, MTLRenderPipelineReflection?, Error?) -> Void
typealias MTLNewComputePipelineStateCompletionHandler = (MTLComputePipelineState?, Error?) -> Void
typealias MTLNewComputePipelineStateWithReflectionCompletionHandler = (MTLComputePipelineState?, MTLComputePipelineReflection?, Error?) -> Void
@available(macOS 10.13, *)
class MTLArgumentDescriptor : NSObject, NSCopying {
  var dataType: MTLDataType
  var index: Int
  var arrayLength: Int
  var access: MTLArgumentAccess
  var textureType: MTLTextureType
  var constantBlockAlignment: Int
}
@available(macOS 10.11, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String { get }
  @available(macOS 10.13, *)
  var registryID: UInt64 { get }
  @available(macOS 10.11, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  @available(macOS 10.11, *)
  var isLowPower: Bool { get }
  @available(macOS 10.11, *)
  var isHeadless: Bool { get }
  @available(macOS 10.13, *)
  var isRemovable: Bool { get }
  @available(macOS 10.15, *)
  var hasUnifiedMemory: Bool { get }
  @available(macOS 10.12, *)
  var recommendedMaxWorkingSetSize: UInt64 { get }
  @available(macOS 10.15, *)
  var location: MTLDeviceLocation { get }
  @available(macOS 10.15, *)
  var locationNumber: Int { get }
  @available(macOS 10.15, *)
  var maxTransferRate: UInt64 { get }
  @available(macOS 10.11, *)
  var isDepth24Stencil8PixelFormatSupported: Bool { get }
  @available(macOS 10.13, *)
  var readWriteTextureSupport: MTLReadWriteTextureTier { get }
  @available(macOS 10.13, *)
  var argumentBuffersSupport: MTLArgumentBuffersTier { get }
  @available(macOS 10.13, *)
  var areRasterOrderGroupsSupported: Bool { get }
  @available(macOS 11.0, *)
  var supports32BitFloatFiltering: Bool { get }
  @available(macOS 11.0, *)
  var supports32BitMSAA: Bool { get }
  @available(macOS 11.0, *)
  var supportsQueryTextureLOD: Bool { get }
  @available(macOS 11.0, *)
  var supportsBCTextureCompression: Bool { get }
  @available(macOS 11.0, *)
  var supportsPullModelInterpolation: Bool { get }
  @available(macOS 10.15, *)
  var areBarycentricCoordsSupported: Bool { get }
  @available(macOS 10.15, *)
  var supportsShaderBarycentricCoordinates: Bool { get }
  @available(macOS 10.13, *)
  var currentAllocatedSize: Int { get }
  func makeCommandQueue() -> MTLCommandQueue?
  func makeCommandQueue(maxCommandBufferCount: Int) -> MTLCommandQueue?
  @available(macOS 10.13, *)
  func heapTextureSizeAndAlign(descriptor desc: MTLTextureDescriptor) -> MTLSizeAndAlign
  @available(macOS 10.13, *)
  func heapBufferSizeAndAlign(length: Int, options: MTLResourceOptions = []) -> MTLSizeAndAlign
  @available(macOS 10.13, *)
  func makeHeap(descriptor: MTLHeapDescriptor) -> MTLHeap?
  func makeBuffer(length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeBuffer(bytes pointer: UnsafeRawPointer, length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeBuffer(bytesNoCopy pointer: UnsafeMutableRawPointer, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil) -> MTLBuffer?
  func makeDepthStencilState(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState?
  func makeTexture(descriptor: MTLTextureDescriptor) -> MTLTexture?
  @available(macOS 10.11, *)
  func makeTexture(descriptor: MTLTextureDescriptor, iosurface: IOSurfaceRef, plane: Int) -> MTLTexture?
  @available(macOS 10.14, *)
  func makeSharedTexture(descriptor: MTLTextureDescriptor) -> MTLTexture?
  @available(macOS 10.14, *)
  func makeSharedTexture(handle sharedHandle: MTLSharedTextureHandle) -> MTLTexture?
  func makeSamplerState(descriptor: MTLSamplerDescriptor) -> MTLSamplerState?
  func makeDefaultLibrary() -> MTLLibrary?
  @available(macOS 10.12, *)
  func makeDefaultLibrary(bundle: Bundle) throws -> MTLLibrary
  func makeLibrary(filepath: String) throws -> MTLLibrary
  @available(macOS 10.13, *)
  func makeLibrary(URL url: URL) throws -> MTLLibrary
  func makeLibrary(data: __DispatchData) throws -> MTLLibrary
  func makeLibrary(source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func makeLibrary(source: String, options: MTLCompileOptions?, completionHandler: @escaping MTLNewLibraryCompletionHandler)
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> MTLRenderPipelineState
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, completionHandler: @escaping MTLNewRenderPipelineStateCompletionHandler)
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func makeComputePipelineState(function computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func makeComputePipelineState(function computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> MTLComputePipelineState
  func makeComputePipelineState(function computeFunction: MTLFunction, completionHandler: @escaping MTLNewComputePipelineStateCompletionHandler)
  func makeComputePipelineState(function computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: @escaping MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(macOS 10.11, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> MTLComputePipelineState
  @available(macOS 10.11, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(macOS 10.13, *)
  func makeFence() -> MTLFence?
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool
  @available(macOS 10.15, *)
  func supportsFamily(_ gpuFamily: MTLGPUFamily) -> Bool
  @available(macOS 10.11, *)
  func supportsTextureSampleCount(_ sampleCount: Int) -> Bool
  @available(macOS 10.13, *)
  func minimumLinearTextureAlignment(for format: MTLPixelFormat) -> Int
  @available(macOS 10.14, *)
  func minimumTextureBufferAlignment(for format: MTLPixelFormat) -> Int
  @available(macOS 11.0, *)
  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> MTLRenderPipelineState
  @available(macOS 11.0, *)
  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  @available(macOS 10.13, *)
  var maxThreadgroupMemoryLength: Int { get }
  @available(macOS 10.14, *)
  var maxArgumentBufferSamplerCount: Int { get }
  @available(macOS 10.13, *)
  var areProgrammableSamplePositionsSupported: Bool { get }
  @available(macOS 10.13, *)
  func __getDefaultSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>, count: Int)
  @available(macOS 10.13, *)
  func makeArgumentEncoder(arguments: [MTLArgumentDescriptor]) -> MTLArgumentEncoder?
  @available(macOS 10.15.4, *)
  func supportsRasterizationRateMap(layerCount: Int) -> Bool
  @available(macOS 10.15.4, *)
  func makeRasterizationRateMap(descriptor: MTLRasterizationRateMapDescriptor) -> MTLRasterizationRateMap?
  @available(macOS 10.14, *)
  func makeIndirectCommandBuffer(descriptor: MTLIndirectCommandBufferDescriptor, maxCommandCount maxCount: Int, options: MTLResourceOptions = []) -> MTLIndirectCommandBuffer?
  @available(macOS 10.14, *)
  func makeEvent() -> MTLEvent?
  @available(macOS 10.14, *)
  func makeSharedEvent() -> MTLSharedEvent?
  @available(macOS 10.14, *)
  func makeSharedEvent(handle sharedEventHandle: MTLSharedEventHandle) -> MTLSharedEvent?
  @available(macOS 10.15, *)
  var peerGroupID: UInt64 { get }
  @available(macOS 10.15, *)
  var peerIndex: UInt32 { get }
  @available(macOS 10.15, *)
  var peerCount: UInt32 { get }
  @available(macOS 11.0, *)
  func sparseTileSize(with textureType: MTLTextureType, pixelFormat: MTLPixelFormat, sampleCount: Int) -> MTLSize
  @available(macOS 11.0, *)
  var sparseTileSizeInBytes: Int { get }
  @available(macOS 11.0, *)
  optional func convertSparsePixelRegions(_ pixelRegions: UnsafePointer<MTLRegion>, toTileRegions tileRegions: UnsafeMutablePointer<MTLRegion>, withTileSize tileSize: MTLSize, alignmentMode mode: MTLSparseTextureRegionAlignmentMode, numRegions: Int)
  @available(macOS 11.0, *)
  optional func convertSparseTileRegions(_ tileRegions: UnsafePointer<MTLRegion>, toPixelRegions pixelRegions: UnsafeMutablePointer<MTLRegion>, withTileSize tileSize: MTLSize, numRegions: Int)
  @available(macOS 10.14, *)
  var maxBufferLength: Int { get }
  @available(macOS 10.15, *)
  var counterSets: [MTLCounterSet]? { get }
  @available(macOS 10.15, *)
  func makeCounterSampleBuffer(descriptor: MTLCounterSampleBufferDescriptor) throws -> MTLCounterSampleBuffer
  @available(macOS 10.15, *)
  func __sampleTimestamps(_ cpuTimestamp: UnsafeMutablePointer<MTLTimestamp>, gpuTimestamp: UnsafeMutablePointer<MTLTimestamp>)
  @available(macOS 11.0, *)
  func supportsCounterSampling(_ samplingPoint: MTLCounterSamplingPoint) -> Bool
  @available(macOS 10.15.4, *)
  func supportsVertexAmplificationCount(_ count: Int) -> Bool
  @available(macOS 11.0, *)
  var supportsDynamicLibraries: Bool { get }
  @available(macOS 11.0, *)
  func makeDynamicLibrary(library: MTLLibrary) throws -> MTLDynamicLibrary
  @available(macOS 11.0, *)
  func makeDynamicLibrary(url: URL) throws -> MTLDynamicLibrary
  @available(macOS 11.0, *)
  func makeBinaryArchive(descriptor: MTLBinaryArchiveDescriptor) throws -> MTLBinaryArchive
  @available(macOS 11.0, *)
  var supportsRaytracing: Bool { get }
  @available(macOS 11.0, *)
  func accelerationStructureSizes(descriptor: MTLAccelerationStructureDescriptor) -> MTLAccelerationStructureSizes
  @available(macOS 11.0, *)
  func makeAccelerationStructure(size: Int) -> MTLAccelerationStructure?
  @available(macOS 11.0, *)
  func makeAccelerationStructure(descriptor: MTLAccelerationStructureDescriptor) -> MTLAccelerationStructure?
  @available(macOS 11.0, *)
  var supportsFunctionPointers: Bool { get }
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLDevice {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func getDefaultSamplePositions(sampleCount: Int) -> [MTLSamplePosition]
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func sampleTimestamps() -> (cpu: MTLTimestamp, gpu: MTLTimestamp)
}
typealias MTLTimestamp = UInt64
