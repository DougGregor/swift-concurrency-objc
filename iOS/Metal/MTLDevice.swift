
@available(iOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(iOS 8.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(iOS 8.0, *)
  case iOS_GPUFamily1_v1
  @available(iOS 8.0, *)
  case iOS_GPUFamily2_v1
  @available(iOS 9.0, *)
  case iOS_GPUFamily1_v2
  @available(iOS 9.0, *)
  case iOS_GPUFamily2_v2
  @available(iOS 9.0, *)
  case iOS_GPUFamily3_v1
  @available(iOS 10.0, *)
  case iOS_GPUFamily1_v3
  @available(iOS 10.0, *)
  case iOS_GPUFamily2_v3
  @available(iOS 10.0, *)
  case iOS_GPUFamily3_v2
  @available(iOS 11.0, *)
  case iOS_GPUFamily1_v4
  @available(iOS 11.0, *)
  case iOS_GPUFamily2_v4
  @available(iOS 11.0, *)
  case iOS_GPUFamily3_v3
  @available(iOS 11.0, *)
  case iOS_GPUFamily4_v1
  @available(iOS 12.0, *)
  case iOS_GPUFamily1_v5
  @available(iOS 12.0, *)
  case iOS_GPUFamily2_v5
  @available(iOS 12.0, *)
  case iOS_GPUFamily3_v4
  @available(iOS 12.0, *)
  case iOS_GPUFamily4_v2
  @available(iOS 12.0, *)
  case iOS_GPUFamily5_v1
}
@available(iOS 13.0, *)
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
@available(iOS 8.0, *)
struct MTLPipelineOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var argumentInfo: MTLPipelineOption { get }
  static var bufferTypeInfo: MTLPipelineOption { get }
  @available(iOS 14.0, *)
  static var failOnBinaryArchiveMiss: MTLPipelineOption { get }
}
@available(iOS 11.0, *)
enum MTLReadWriteTextureTier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case tierNone
  case tier1
  case tier2
}
@available(iOS 11.0, *)
enum MTLArgumentBuffersTier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case tier1
  case tier2
}
@available(iOS 13.0, *)
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
@available(iOS 14.0, *)
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
@available(iOS 11.0, *)
class MTLArgumentDescriptor : NSObject, NSCopying {
  var dataType: MTLDataType
  var index: Int
  var arrayLength: Int
  var access: MTLArgumentAccess
  var textureType: MTLTextureType
  var constantBlockAlignment: Int
}
@available(iOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String { get }
  @available(iOS 11.0, *)
  var registryID: UInt64 { get }
  @available(iOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  @available(iOS 13.0, *)
  var hasUnifiedMemory: Bool { get }
  @available(iOS 11.0, *)
  var readWriteTextureSupport: MTLReadWriteTextureTier { get }
  @available(iOS 11.0, *)
  var argumentBuffersSupport: MTLArgumentBuffersTier { get }
  @available(iOS 11.0, *)
  var areRasterOrderGroupsSupported: Bool { get }
  @available(iOS 14.0, *)
  var supportsPullModelInterpolation: Bool { get }
  @available(iOS 14.0, *)
  var areBarycentricCoordsSupported: Bool { get }
  @available(iOS 14.0, *)
  var supportsShaderBarycentricCoordinates: Bool { get }
  @available(iOS 11.0, *)
  var currentAllocatedSize: Int { get }
  func makeCommandQueue() -> MTLCommandQueue?
  func makeCommandQueue(maxCommandBufferCount: Int) -> MTLCommandQueue?
  @available(iOS 10.0, *)
  func heapTextureSizeAndAlign(descriptor desc: MTLTextureDescriptor) -> MTLSizeAndAlign
  @available(iOS 10.0, *)
  func heapBufferSizeAndAlign(length: Int, options: MTLResourceOptions = []) -> MTLSizeAndAlign
  @available(iOS 10.0, *)
  func makeHeap(descriptor: MTLHeapDescriptor) -> MTLHeap?
  func makeBuffer(length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeBuffer(bytes pointer: UnsafeRawPointer, length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeBuffer(bytesNoCopy pointer: UnsafeMutableRawPointer, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil) -> MTLBuffer?
  func makeDepthStencilState(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState?
  func makeTexture(descriptor: MTLTextureDescriptor) -> MTLTexture?
  @available(iOS 11.0, *)
  func makeTexture(descriptor: MTLTextureDescriptor, iosurface: IOSurfaceRef, plane: Int) -> MTLTexture?
  @available(iOS 13.0, *)
  func makeSharedTexture(descriptor: MTLTextureDescriptor) -> MTLTexture?
  @available(iOS 13.0, *)
  func makeSharedTexture(handle sharedHandle: MTLSharedTextureHandle) -> MTLTexture?
  func makeSamplerState(descriptor: MTLSamplerDescriptor) -> MTLSamplerState?
  func makeDefaultLibrary() -> MTLLibrary?
  @available(iOS 10.0, *)
  func makeDefaultLibrary(bundle: Bundle) throws -> MTLLibrary
  func makeLibrary(filepath: String) throws -> MTLLibrary
  @available(iOS 11.0, *)
  func makeLibrary(URL url: URL) throws -> MTLLibrary
  func makeLibrary(data: __DispatchData) throws -> MTLLibrary
  func makeLibrary(source: String, options: MTLCompileOptions?) throws -> MTLLibrary
  func makeLibrary(source: String, options: MTLCompileOptions?, completionHandler: @escaping MTLNewLibraryCompletionHandler)
  func makeLibrary(source: String, options: MTLCompileOptions?) async throws -> MTLLibrary
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) throws -> MTLRenderPipelineState
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> MTLRenderPipelineState
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, completionHandler: @escaping MTLNewRenderPipelineStateCompletionHandler)
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor) async throws -> MTLRenderPipelineState
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  func makeRenderPipelineState(descriptor: MTLRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (MTLRenderPipelineState, MTLRenderPipelineReflection)
  func makeComputePipelineState(function computeFunction: MTLFunction) throws -> MTLComputePipelineState
  func makeComputePipelineState(function computeFunction: MTLFunction, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> MTLComputePipelineState
  func makeComputePipelineState(function computeFunction: MTLFunction, completionHandler: @escaping MTLNewComputePipelineStateCompletionHandler)
  func makeComputePipelineState(function computeFunction: MTLFunction) async throws -> MTLComputePipelineState
  func makeComputePipelineState(function computeFunction: MTLFunction, options: MTLPipelineOption, completionHandler: @escaping MTLNewComputePipelineStateWithReflectionCompletionHandler)
  func makeComputePipelineState(function computeFunction: MTLFunction, options: MTLPipelineOption) async throws -> (MTLComputePipelineState, MTLComputePipelineReflection)
  @available(iOS 9.0, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> MTLComputePipelineState
  @available(iOS 9.0, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(iOS 9.0, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption) async throws -> (MTLComputePipelineState, MTLComputePipelineReflection)
  @available(iOS 10.0, *)
  func makeFence() -> MTLFence?
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool
  @available(iOS 13.0, *)
  func supportsFamily(_ gpuFamily: MTLGPUFamily) -> Bool
  @available(iOS 9.0, *)
  func supportsTextureSampleCount(_ sampleCount: Int) -> Bool
  @available(iOS 11.0, *)
  func minimumLinearTextureAlignment(for format: MTLPixelFormat) -> Int
  @available(iOS 12.0, *)
  func minimumTextureBufferAlignment(for format: MTLPixelFormat) -> Int
  @available(iOS 11.0, *)
  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedRenderPipelineReflection?>?) throws -> MTLRenderPipelineState
  @available(iOS 11.0, *)
  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewRenderPipelineStateWithReflectionCompletionHandler)
  @available(iOS 11.0, *)
  func makeRenderPipelineState(tileDescriptor descriptor: MTLTileRenderPipelineDescriptor, options: MTLPipelineOption) async throws -> (MTLRenderPipelineState, MTLRenderPipelineReflection)
  @available(iOS 11.0, *)
  var maxThreadgroupMemoryLength: Int { get }
  @available(iOS 12.0, *)
  var maxArgumentBufferSamplerCount: Int { get }
  @available(iOS 11.0, *)
  var areProgrammableSamplePositionsSupported: Bool { get }
  @available(iOS 11.0, *)
  func __getDefaultSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>, count: Int)
  @available(iOS 11.0, *)
  func makeArgumentEncoder(arguments: [MTLArgumentDescriptor]) -> MTLArgumentEncoder?
  @available(iOS 13.0, *)
  func supportsRasterizationRateMap(layerCount: Int) -> Bool
  @available(iOS 13.0, *)
  func makeRasterizationRateMap(descriptor: MTLRasterizationRateMapDescriptor) -> MTLRasterizationRateMap?
  @available(iOS 12.0, *)
  func makeIndirectCommandBuffer(descriptor: MTLIndirectCommandBufferDescriptor, maxCommandCount maxCount: Int, options: MTLResourceOptions = []) -> MTLIndirectCommandBuffer?
  @available(iOS 12.0, *)
  func makeEvent() -> MTLEvent?
  @available(iOS 12.0, *)
  func makeSharedEvent() -> MTLSharedEvent?
  @available(iOS 12.0, *)
  func makeSharedEvent(handle sharedEventHandle: MTLSharedEventHandle) -> MTLSharedEvent?
  @available(iOS 13.0, *)
  func sparseTileSize(with textureType: MTLTextureType, pixelFormat: MTLPixelFormat, sampleCount: Int) -> MTLSize
  @available(iOS 13.0, *)
  var sparseTileSizeInBytes: Int { get }
  @available(iOS 13.0, *)
  optional func convertSparsePixelRegions(_ pixelRegions: UnsafePointer<MTLRegion>, toTileRegions tileRegions: UnsafeMutablePointer<MTLRegion>, withTileSize tileSize: MTLSize, alignmentMode mode: MTLSparseTextureRegionAlignmentMode, numRegions: Int)
  @available(iOS 13.0, *)
  optional func convertSparseTileRegions(_ tileRegions: UnsafePointer<MTLRegion>, toPixelRegions pixelRegions: UnsafeMutablePointer<MTLRegion>, withTileSize tileSize: MTLSize, numRegions: Int)
  @available(iOS 12.0, *)
  var maxBufferLength: Int { get }
  @available(iOS 14.0, *)
  var counterSets: [MTLCounterSet]? { get }
  @available(iOS 14.0, *)
  func makeCounterSampleBuffer(descriptor: MTLCounterSampleBufferDescriptor) throws -> MTLCounterSampleBuffer
  @available(iOS 14.0, *)
  func __sampleTimestamps(_ cpuTimestamp: UnsafeMutablePointer<MTLTimestamp>, gpuTimestamp: UnsafeMutablePointer<MTLTimestamp>)
  @available(iOS 14.0, *)
  func supportsCounterSampling(_ samplingPoint: MTLCounterSamplingPoint) -> Bool
  @available(iOS 13.0, *)
  func supportsVertexAmplificationCount(_ count: Int) -> Bool
  @available(iOS 14.0, *)
  var supportsDynamicLibraries: Bool { get }
  @available(iOS 14.0, *)
  func makeDynamicLibrary(library: MTLLibrary) throws -> MTLDynamicLibrary
  @available(iOS 14.0, *)
  func makeDynamicLibrary(url: URL) throws -> MTLDynamicLibrary
  @available(iOS 14.0, *)
  func makeBinaryArchive(descriptor: MTLBinaryArchiveDescriptor) throws -> MTLBinaryArchive
  @available(iOS 14.0, *)
  var supportsRaytracing: Bool { get }
  @available(iOS 14.0, *)
  func accelerationStructureSizes(descriptor: MTLAccelerationStructureDescriptor) -> MTLAccelerationStructureSizes
  @available(iOS 14.0, *)
  func makeAccelerationStructure(size: Int) -> MTLAccelerationStructure?
  @available(iOS 14.0, *)
  func makeAccelerationStructure(descriptor: MTLAccelerationStructureDescriptor) -> MTLAccelerationStructure?
  @available(iOS 14.0, *)
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
