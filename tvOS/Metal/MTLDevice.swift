
@available(tvOS 8.0, *)
func MTLCreateSystemDefaultDevice() -> MTLDevice?
@available(tvOS 9.0, *)
enum MTLFeatureSet : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 9.0, *)
  case tvOS_GPUFamily1_v1
  @available(tvOS 9.0, *)
  static var tvos_GPUFamily1_v1: MTLFeatureSet { get }
  @available(tvOS 10.0, *)
  case tvOS_GPUFamily1_v2
  @available(tvOS 11.0, *)
  case tvOS_GPUFamily1_v3
  @available(tvOS 11.0, *)
  case tvOS_GPUFamily2_v1
  @available(tvOS 12.0, *)
  case tvOS_GPUFamily1_v4
  @available(tvOS 12.0, *)
  case tvOS_GPUFamily2_v2
}
@available(tvOS 13.0, *)
enum MTLGPUFamily : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case apple1
  case apple2
  case apple3
  case apple4
  case apple5
  case mac1
  case mac2
  case common1
  case common2
  case common3
  case macCatalyst1
  case macCatalyst2
}
@available(tvOS 8.0, *)
struct MTLPipelineOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var argumentInfo: MTLPipelineOption { get }
  static var bufferTypeInfo: MTLPipelineOption { get }
  @available(tvOS 14.0, *)
  static var failOnBinaryArchiveMiss: MTLPipelineOption { get }
}
@available(tvOS 11.0, *)
enum MTLReadWriteTextureTier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case tierNone
  case tier1
  case tier2
}
@available(tvOS 11.0, *)
enum MTLArgumentBuffersTier : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case tier1
  case tier2
}
@available(tvOS 14.0, *)
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
@available(tvOS 11.0, *)
class MTLArgumentDescriptor : NSObject, NSCopying {
  var dataType: MTLDataType
  var index: Int
  var arrayLength: Int
  var access: MTLArgumentAccess
  var textureType: MTLTextureType
  var constantBlockAlignment: Int
}
@available(tvOS 8.0, *)
protocol MTLDevice : NSObjectProtocol {
  var name: String { get }
  @available(tvOS 11.0, *)
  var registryID: UInt64 { get }
  @available(tvOS 9.0, *)
  var maxThreadsPerThreadgroup: MTLSize { get }
  @available(tvOS 13.0, *)
  var hasUnifiedMemory: Bool { get }
  @available(tvOS 11.0, *)
  var readWriteTextureSupport: MTLReadWriteTextureTier { get }
  @available(tvOS 11.0, *)
  var argumentBuffersSupport: MTLArgumentBuffersTier { get }
  @available(tvOS 11.0, *)
  var areRasterOrderGroupsSupported: Bool { get }
  @available(tvOS 14.0, *)
  var supportsPullModelInterpolation: Bool { get }
  @available(tvOS 11.0, *)
  var currentAllocatedSize: Int { get }
  func makeCommandQueue() -> MTLCommandQueue?
  func makeCommandQueue(maxCommandBufferCount: Int) -> MTLCommandQueue?
  @available(tvOS 10.0, *)
  func heapTextureSizeAndAlign(descriptor desc: MTLTextureDescriptor) -> MTLSizeAndAlign
  @available(tvOS 10.0, *)
  func heapBufferSizeAndAlign(length: Int, options: MTLResourceOptions = []) -> MTLSizeAndAlign
  @available(tvOS 10.0, *)
  func makeHeap(descriptor: MTLHeapDescriptor) -> MTLHeap?
  func makeBuffer(length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeBuffer(bytes pointer: UnsafeRawPointer, length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeBuffer(bytesNoCopy pointer: UnsafeMutableRawPointer, length: Int, options: MTLResourceOptions = [], deallocator: ((UnsafeMutableRawPointer, Int) -> Void)? = nil) -> MTLBuffer?
  func makeDepthStencilState(descriptor: MTLDepthStencilDescriptor) -> MTLDepthStencilState?
  func makeTexture(descriptor: MTLTextureDescriptor) -> MTLTexture?
  @available(tvOS 11.0, *)
  func makeTexture(descriptor: MTLTextureDescriptor, iosurface: IOSurfaceRef, plane: Int) -> MTLTexture?
  @available(tvOS 13.0, *)
  func makeSharedTexture(descriptor: MTLTextureDescriptor) -> MTLTexture?
  @available(tvOS 13.0, *)
  func makeSharedTexture(handle sharedHandle: MTLSharedTextureHandle) -> MTLTexture?
  func makeSamplerState(descriptor: MTLSamplerDescriptor) -> MTLSamplerState?
  func makeDefaultLibrary() -> MTLLibrary?
  @available(tvOS 10.0, *)
  func makeDefaultLibrary(bundle: Bundle) throws -> MTLLibrary
  func makeLibrary(filepath: String) throws -> MTLLibrary
  @available(tvOS 11.0, *)
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
  @available(tvOS 9.0, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, reflection: AutoreleasingUnsafeMutablePointer<MTLAutoreleasedComputePipelineReflection?>?) throws -> MTLComputePipelineState
  @available(tvOS 9.0, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption, completionHandler: @escaping MTLNewComputePipelineStateWithReflectionCompletionHandler)
  @available(tvOS 9.0, *)
  func makeComputePipelineState(descriptor: MTLComputePipelineDescriptor, options: MTLPipelineOption) async throws -> (MTLComputePipelineState, MTLComputePipelineReflection)
  @available(tvOS 10.0, *)
  func makeFence() -> MTLFence?
  func supportsFeatureSet(_ featureSet: MTLFeatureSet) -> Bool
  @available(tvOS 13.0, *)
  func supportsFamily(_ gpuFamily: MTLGPUFamily) -> Bool
  @available(tvOS 9.0, *)
  func supportsTextureSampleCount(_ sampleCount: Int) -> Bool
  @available(tvOS 11.0, *)
  func minimumLinearTextureAlignment(for format: MTLPixelFormat) -> Int
  @available(tvOS 12.0, *)
  func minimumTextureBufferAlignment(for format: MTLPixelFormat) -> Int
  @available(tvOS 11.0, *)
  var maxThreadgroupMemoryLength: Int { get }
  @available(tvOS 12.0, *)
  var maxArgumentBufferSamplerCount: Int { get }
  @available(tvOS 11.0, *)
  var areProgrammableSamplePositionsSupported: Bool { get }
  @available(tvOS 11.0, *)
  func __getDefaultSamplePositions(_ positions: UnsafeMutablePointer<MTLSamplePosition>, count: Int)
  @available(tvOS 11.0, *)
  func makeArgumentEncoder(arguments: [MTLArgumentDescriptor]) -> MTLArgumentEncoder?
  @available(tvOS 12.0, *)
  func makeIndirectCommandBuffer(descriptor: MTLIndirectCommandBufferDescriptor, maxCommandCount maxCount: Int, options: MTLResourceOptions = []) -> MTLIndirectCommandBuffer?
  @available(tvOS 12.0, *)
  func makeEvent() -> MTLEvent?
  @available(tvOS 12.0, *)
  func makeSharedEvent() -> MTLSharedEvent?
  @available(tvOS 12.0, *)
  func makeSharedEvent(handle sharedEventHandle: MTLSharedEventHandle) -> MTLSharedEvent?
  @available(tvOS 12.0, *)
  var maxBufferLength: Int { get }
  @available(tvOS 14.0, *)
  var counterSets: [MTLCounterSet]? { get }
  @available(tvOS 14.0, *)
  func makeCounterSampleBuffer(descriptor: MTLCounterSampleBufferDescriptor) throws -> MTLCounterSampleBuffer
  @available(tvOS 14.0, *)
  func __sampleTimestamps(_ cpuTimestamp: UnsafeMutablePointer<MTLTimestamp>, gpuTimestamp: UnsafeMutablePointer<MTLTimestamp>)
  @available(tvOS 14.0, *)
  func supportsCounterSampling(_ samplingPoint: MTLCounterSamplingPoint) -> Bool
  @available(tvOS 14.0, *)
  var supportsDynamicLibraries: Bool { get }
  @available(tvOS 14.0, *)
  func makeDynamicLibrary(library: MTLLibrary) throws -> MTLDynamicLibrary
  @available(tvOS 14.0, *)
  func makeDynamicLibrary(url: URL) throws -> MTLDynamicLibrary
  @available(tvOS 14.0, *)
  func makeBinaryArchive(descriptor: MTLBinaryArchiveDescriptor) throws -> MTLBinaryArchive
}

@available(macOS 10.11, iOS 8.0, tvOS 8.0, *)
extension MTLDevice {
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, *)
  func getDefaultSamplePositions(sampleCount: Int) -> [MTLSamplePosition]
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
  func sampleTimestamps() -> (cpu: MTLTimestamp, gpu: MTLTimestamp)
}
typealias MTLTimestamp = UInt64
