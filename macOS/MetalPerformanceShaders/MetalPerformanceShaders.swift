
struct MPSKernelOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.13, *)
  static var none: MPSKernelOptions { get }
  @available(macOS 10.13, *)
  static var skipAPIValidation: MPSKernelOptions { get }
  @available(macOS 10.13, *)
  static var allowReducedPrecision: MPSKernelOptions { get }
  @available(macOS 10.13, *)
  static var disableInternalTiling: MPSKernelOptions { get }
  @available(macOS 10.13, *)
  static var insertDebugGroups: MPSKernelOptions { get }
  @available(macOS 10.13, *)
  static var verbose: MPSKernelOptions { get }
}
enum MPSImageEdgeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case zero
  @available(macOS 10.13, *)
  case clamp
  @available(macOS 10.14.1, *)
  case mirror
  @available(macOS 10.14.1, *)
  case mirrorWithEdge
  @available(macOS 10.14.1, *)
  case constant
}
enum MPSImageFeatureChannelFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case none
  @available(macOS 10.13, *)
  case unorm8
  @available(macOS 10.13, *)
  case unorm16
  @available(macOS 10.13, *)
  case float16
  @available(macOS 10.13, *)
  case float32
  @available(macOS 10.15, *)
  case _reserved0
  @available(macOS 10.14, *)
  case count
}
enum MPSDataType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS 10.13, *)
  case invalid
  @available(macOS 10.13, *)
  case floatBit
  @available(macOS 10.13, *)
  case float32
  @available(macOS 10.13, *)
  case float16
  @available(macOS 10.13, *)
  case signedBit
  @available(*, deprecated)
  static var intBit: MPSDataType { get }
  @available(macOS 10.13, *)
  case int8
  @available(macOS 10.13, *)
  case int16
  @available(macOS 10.13, *)
  case int32
  @available(macOS 10.13, *)
  case uInt8
  @available(macOS 10.13, *)
  case uInt16
  @available(macOS 10.13, *)
  case uInt32
  @available(macOS 10.13, *)
  case normalizedBit
  @available(macOS 10.13, *)
  case unorm1
  @available(macOS 10.13, *)
  case unorm8
}
struct MPSAliasingStrategy : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.15, *)
  static var `default`: MPSAliasingStrategy { get }
  @available(macOS 10.15, *)
  static var shallAlias: MPSAliasingStrategy { get }
  @available(macOS 10.15, *)
  static var shallNotAlias: MPSAliasingStrategy { get }
  static var aliasingReserved: MPSAliasingStrategy { get }
  @available(macOS 10.15, *)
  static var preferTemporaryMemory: MPSAliasingStrategy { get }
  @available(macOS 10.15, *)
  static var preferNonTemporaryMemory: MPSAliasingStrategy { get }
}
struct MPSOffset {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
struct MPSOrigin {
  var x: Double
  var y: Double
  var z: Double
  init()
  init(x: Double, y: Double, z: Double)
}
struct MPSSize {
  var width: Double
  var height: Double
  var depth: Double
  init()
  init(width: Double, height: Double, depth: Double)
}
struct MPSDimensionSlice {
  var start: Int
  var length: Int
  init()
  init(start: Int, length: Int)
}
struct MPSRegion {
  var origin: MPSOrigin
  var size: MPSSize
  init()
  init(origin: MPSOrigin, size: MPSSize)
}
struct MPSScaleTransform {
  var scaleX: Double
  var scaleY: Double
  var translateX: Double
  var translateY: Double
  init()
  init(scaleX: Double, scaleY: Double, translateX: Double, translateY: Double)
}
struct MPSImageCoordinate {
  var x: Int
  var y: Int
  var channel: Int
  init()
  init(x: Int, y: Int, channel: Int)
}
struct MPSImageRegion {
  var offset: MPSImageCoordinate
  var size: MPSImageCoordinate
  init()
  init(offset: MPSImageCoordinate, size: MPSImageCoordinate)
}
@available(macOS 10.13, *)
let MPSRectNoClip: MTLRegion
protocol MPSDeviceProvider {
  @available(macOS 10.11, *)
  func mpsMTLDevice() -> MTLDevice!
}
@available(macOS 10.13, *)
class MPSImageDescriptor : NSObject, NSCopying {
  var width: Int
  var height: Int
  var featureChannels: Int
  var numberOfImages: Int
  var pixelFormat: MTLPixelFormat { get }
  var channelFormat: MPSImageFeatureChannelFormat
  var cpuCacheMode: MTLCPUCacheMode
  var storageMode: MTLStorageMode
  var usage: MTLTextureUsage
  convenience init(channelFormat: MPSImageFeatureChannelFormat, width: Int, height: Int, featureChannels: Int)
  convenience init(channelFormat: MPSImageFeatureChannelFormat, width: Int, height: Int, featureChannels: Int, numberOfImages: Int, usage: MTLTextureUsage)
}
@available(macOS 10.13.4, *)
func MPSImageBatchIncrementReadCount(_ batch: [MPSImage], _ amount: Int) -> Int
@available(macOS 10.13.4, *)
func MPSImageBatchSynchronize(_ batch: [MPSImage], _ cmdBuf: MTLCommandBuffer)
@available(macOS 10.14, *)
func MPSImageBatchResourceSize(_ batch: [MPSImage]) -> Int
@available(macOS 10.15, *)
func MPSImageBatchIterate(_ batch: [MPSImage], _ iteratorBlock: @escaping (MPSImage, Int) -> Int) -> Int
protocol MPSImageAllocator : NSSecureCoding, NSObjectProtocol {
  @available(macOS 10.13, *)
  func image(for cmdBuf: MTLCommandBuffer, imageDescriptor descriptor: MPSImageDescriptor, kernel: MPSKernel) -> MPSImage
  @available(macOS 10.13, *)
  optional func imageBatch(for cmdBuf: MTLCommandBuffer, imageDescriptor descriptor: MPSImageDescriptor, kernel: MPSKernel, count: Int) -> [MPSImage]
}
@available(macOS 10.11, *)
enum MPSPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case allocationDeferred
  @available(macOS 10.13, *)
  case keepCurrent
  @available(macOS 10.13, *)
  case nonVolatile
  @available(macOS 10.13, *)
  case volatile
  @available(macOS 10.13, *)
  case empty
}
@available(macOS 10.13, *)
enum MPSDataLayout : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case HeightxWidthxFeatureChannels
  @available(macOS 10.13, *)
  case featureChannelsxHeightxWidth
}
struct MPSImageReadWriteParams {
  var featureChannelOffset: Int
  var numberOfFeatureChannelsToReadWrite: Int
  init()
  init(featureChannelOffset: Int, numberOfFeatureChannelsToReadWrite: Int)
}
@available(macOS 10.13, *)
class MPSImage : NSObject {
  class func defaultAllocator() -> MPSImageAllocator
  var device: MTLDevice { get }
  var width: Int { get }
  var height: Int { get }
  var featureChannels: Int { get }
  var numberOfImages: Int { get }
  var textureType: MTLTextureType { get }
  var pixelFormat: MTLPixelFormat { get }
  var precision: Int { get }
  var usage: MTLTextureUsage { get }
  var featureChannelFormat: MPSImageFeatureChannelFormat { get }
  var pixelSize: Int { get }
  var texture: MTLTexture { get }
  var label: String?
  var parent: MPSImage? { get }
  convenience init(device: MTLDevice, imageDescriptor: MPSImageDescriptor)
  init(parentImage parent: MPSImage, sliceRange: NSRange, featureChannels: Int)
  convenience init(texture: MTLTexture, featureChannels: Int)
  func batchRepresentation(withSubRange subRange: NSRange) -> [MPSImage]
  func batchRepresentation() -> [MPSImage]
  func subImage(withFeatureChannelRange range: NSRange) -> MPSImage
  @available(macOS 10.13, *)
  func resourceSize() -> Int
  func setPurgeableState(_ state: MPSPurgeableState) -> MPSPurgeableState
  @available(macOS 10.13, *)
  func readBytes(_ dataBytes: UnsafeMutableRawPointer, dataLayout: MPSDataLayout, bytesPerRow: Int, region: MTLRegion, featureChannelInfo: MPSImageReadWriteParams, imageIndex: Int)
  @available(macOS 10.13, *)
  func writeBytes(_ dataBytes: UnsafeRawPointer, dataLayout: MPSDataLayout, bytesPerRow: Int, region: MTLRegion, featureChannelInfo: MPSImageReadWriteParams, imageIndex: Int)
  @available(macOS 10.15, *)
  func writeBytes(_ dataBytes: UnsafeRawPointer, dataLayout: MPSDataLayout, bytesPerColumn: Int, bytesPerRow: Int, bytesPerImage: Int, region: MTLRegion, featureChannelInfo: MPSImageReadWriteParams, imageIndex: Int)
  @available(macOS 10.13, *)
  func readBytes(_ dataBytes: UnsafeMutableRawPointer, dataLayout: MPSDataLayout, bytesPerRow: Int, bytesPerImage: Int, region: MTLRegion, featureChannelInfo: MPSImageReadWriteParams, imageIndex: Int)
  @available(macOS 10.13.4, *)
  func writeBytes(_ dataBytes: UnsafeRawPointer, dataLayout: MPSDataLayout, bytesPerRow: Int, bytesPerImage: Int, region: MTLRegion, featureChannelInfo: MPSImageReadWriteParams, imageIndex: Int)
  @available(macOS 10.13, *)
  func readBytes(_ dataBytes: UnsafeMutableRawPointer, dataLayout: MPSDataLayout, imageIndex: Int)
  @available(macOS 10.13, *)
  func writeBytes(_ dataBytes: UnsafeRawPointer, dataLayout: MPSDataLayout, imageIndex: Int)
  @available(macOS 10.13.4, *)
  func synchronize(on commandBuffer: MTLCommandBuffer)
}
@available(macOS 10.13, *)
class MPSTemporaryImage : MPSImage {
  convenience init(commandBuffer: MTLCommandBuffer, imageDescriptor: MPSImageDescriptor)
  convenience init(commandBuffer: MTLCommandBuffer, textureDescriptor: MTLTextureDescriptor)
  @available(macOS 10.13.4, *)
  convenience init(commandBuffer: MTLCommandBuffer, textureDescriptor: MTLTextureDescriptor, featureChannels: Int)
  class func prefetchStorage(with commandBuffer: MTLCommandBuffer, imageDescriptorList descriptorList: [MPSImageDescriptor])
  var readCount: Int
}
@available(macOS 10.15, *)
class MPSPredicate : NSObject {
  var predicateBuffer: MTLBuffer { get }
  var predicateOffset: Int { get }
  init(buffer: MTLBuffer, offset: Int)
  init(device: MTLDevice)
}
protocol MPSHeapProvider : NSObjectProtocol {
  @available(macOS 10.13, *)
  func newHeap(with descriptor: MTLHeapDescriptor) -> MTLHeap?
  @available(macOS 10.13, *)
  optional func retire(_ heap: MTLHeap, cacheDelay seconds: Double)
}
@available(macOS 10.15, *)
class MPSCommandBuffer : NSObject, MTLCommandBuffer {
  var commandBuffer: MTLCommandBuffer { get }
  var rootCommandBuffer: MTLCommandBuffer { get }
  var predicate: MPSPredicate?
  var heapProvider: MPSHeapProvider?
  convenience init(from commandQueue: MTLCommandQueue)
  init(commandBuffer: MTLCommandBuffer)
  func commitAndContinue()
  func prefetchHeap(forWorkloadSize size: Int)
}
@available(macOS 10.13, *)
class MPSKernel : NSObject, NSCopying, NSSecureCoding {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device: MTLDevice)
  func copy(with zone: NSZone? = nil, device: MTLDevice?) -> Self
  @available(macOS 10.13, *)
  init?(coder aDecoder: NSCoder, device: MTLDevice)
}
@available(macOS 10.13, *)
class MPSMatrixDescriptor : NSObject {
  var rows: Int
  var columns: Int
  @available(macOS 10.13, *)
  var matrices: Int { get }
  var dataType: MPSDataType
  var rowBytes: Int
  @available(macOS 10.13, *)
  var matrixBytes: Int { get }
  convenience init(dimensions rows: Int, columns: Int, rowBytes: Int, dataType: MPSDataType)
  @available(macOS 10.13, *)
  convenience init(rows: Int, columns: Int, rowBytes: Int, dataType: MPSDataType)
  @available(macOS 10.13, *)
  convenience init(rows: Int, columns: Int, matrices: Int, rowBytes: Int, matrixBytes: Int, dataType: MPSDataType)
  class func rowBytes(fromColumns columns: Int, dataType: MPSDataType) -> Int
  @available(macOS 10.13, *)
  class func rowBytes(forColumns columns: Int, dataType: MPSDataType) -> Int
}
@available(macOS 10.13, *)
class MPSVectorDescriptor : NSObject {
  var length: Int
  var vectors: Int { get }
  var dataType: MPSDataType
  var vectorBytes: Int { get }
  convenience init(length: Int, dataType: MPSDataType)
  convenience init(length: Int, vectors: Int, vectorBytes: Int, dataType: MPSDataType)
  class func vectorBytes(forLength length: Int, dataType: MPSDataType) -> Int
}
@available(macOS 10.13, *)
class MPSMatrix : NSObject {
  var device: MTLDevice { get }
  var rows: Int { get }
  var columns: Int { get }
  @available(macOS 10.13, *)
  var matrices: Int { get }
  var dataType: MPSDataType { get }
  var rowBytes: Int { get }
  @available(macOS 10.13, *)
  var matrixBytes: Int { get }
  @available(macOS 10.15, *)
  var offset: Int { get }
  var data: MTLBuffer { get }
  init(buffer: MTLBuffer, descriptor: MPSMatrixDescriptor)
  @available(macOS 10.15, *)
  init(buffer: MTLBuffer, offset: Int, descriptor: MPSMatrixDescriptor)
  init(device: MTLDevice, descriptor: MPSMatrixDescriptor)
  @available(macOS 10.13.4, *)
  func synchronize(on commandBuffer: MTLCommandBuffer)
  @available(macOS 10.13.4, *)
  func resourceSize() -> Int
}
@available(macOS 10.13, *)
class MPSVector : NSObject {
  var device: MTLDevice { get }
  var length: Int { get }
  var vectors: Int { get }
  var dataType: MPSDataType { get }
  var vectorBytes: Int { get }
  @available(macOS 10.15, *)
  var offset: Int { get }
  var data: MTLBuffer { get }
  init(buffer: MTLBuffer, descriptor: MPSVectorDescriptor)
  @available(macOS 10.15, *)
  init(buffer: MTLBuffer, offset: Int, descriptor: MPSVectorDescriptor)
  @available(macOS 10.13.4, *)
  init(device: MTLDevice, descriptor: MPSVectorDescriptor)
  @available(macOS 10.13.4, *)
  func synchronize(on commandBuffer: MTLCommandBuffer)
  @available(macOS 10.13.4, *)
  func resourceSize() -> Int
}
@available(macOS 10.13, *)
class MPSTemporaryMatrix : MPSMatrix {
  convenience init(commandBuffer: MTLCommandBuffer, matrixDescriptor: MPSMatrixDescriptor)
  class func prefetchStorage(with commandBuffer: MTLCommandBuffer, matrixDescriptorList descriptorList: [MPSMatrixDescriptor])
  var readCount: Int
}
@available(macOS 10.13, *)
class MPSTemporaryVector : MPSVector {
  convenience init(commandBuffer: MTLCommandBuffer, descriptor: MPSVectorDescriptor)
  class func prefetchStorage(with commandBuffer: MTLCommandBuffer, descriptorList: [MPSVectorDescriptor])
  var readCount: Int
}
@available(macOS 10.13.4, *)
class MPSStateResourceList : NSObject {
  func appendTexture(_ descriptor: MTLTextureDescriptor)
  func appendBuffer(_ size: Int)
}
struct MPSStateTextureInfo {
  var width: Int
  var height: Int
  var depth: Int
  var arrayLength: Int
  var pixelFormat: MTLPixelFormat
  var textureType: MTLTextureType
  var usage: MTLTextureUsage
  var _reserved: (Int, Int, Int, Int)
  init()
  init(width: Int, height: Int, depth: Int, arrayLength: Int, pixelFormat: MTLPixelFormat, textureType: MTLTextureType, usage: MTLTextureUsage, _reserved: (Int, Int, Int, Int))
}
enum MPSStateResourceType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13.4, *)
  case none
  @available(macOS 10.13.4, *)
  case buffer
  @available(macOS 10.13.4, *)
  case texture
}
@available(macOS 10.13, *)
class MPSState : NSObject {
  class func temporaryState(with cmdBuf: MTLCommandBuffer, bufferSize: Int) -> Self
  class func temporaryState(with cmdBuf: MTLCommandBuffer, textureDescriptor descriptor: MTLTextureDescriptor) -> Self
  class func temporaryState(with cmdBuf: MTLCommandBuffer) -> Self
  init(device: MTLDevice, bufferSize: Int)
  init(device: MTLDevice, textureDescriptor descriptor: MTLTextureDescriptor)
  init(resource: MTLResource?)
  @available(macOS 10.13.4, *)
  init(device: MTLDevice, resourceList: MPSStateResourceList)
  @available(macOS 10.13.4, *)
  class func temporaryState(with commandBuffer: MTLCommandBuffer, resourceList: MPSStateResourceList) -> Self
  init(resources: [MTLResource]?)
  var resourceCount: Int { get }
  func resource(at index: Int, allocateMemory: Bool) -> MTLResource?
  var readCount: Int
  var isTemporary: Bool { get }
  var label: String?
  func bufferSize(at index: Int) -> Int
  func textureInfo(at index: Int) -> MPSStateTextureInfo
  func resourceType(at index: Int) -> MPSStateResourceType
  @available(macOS 10.13.4, *)
  func synchronize(on commandBuffer: MTLCommandBuffer)
  @available(macOS 10.13.4, *)
  func resourceSize() -> Int
  func destinationImageDescriptor(forSourceImages sourceImages: [MPSImage], sourceStates: [MPSState]?, for kernel: MPSKernel, suggestedDescriptor inDescriptor: MPSImageDescriptor) -> MPSImageDescriptor
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  var resource: MTLResource? { get }
}
@available(macOS 10.13.4, *)
func MPSStateBatchIncrementReadCount(_ batch: [MPSState]?, _ amount: Int) -> Int
@available(macOS 10.13.4, *)
func MPSStateBatchSynchronize(_ batch: [MPSState], _ cmdBuf: MTLCommandBuffer)
@available(macOS 10.14.0, *)
func MPSStateBatchResourceSize(_ batch: [MPSState]?) -> Int
var MPSDeviceCapsIndex: Int32 { get }
var MPSFunctionConstantIndex: Int32 { get }
var MPSBatchSizeIndex: Int32 { get }
var MPSUserConstantIndex: Int32 { get }
var MPSNDArrayConstantIndex: Int32 { get }
var MPSFunctionConstantIndexReserved: Int32 { get }
var MPSUserAvailableFunctionConstantStartIndex: Int32 { get }
struct MPSDeviceCapsValues : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MPSDeviceCapsNull: MPSDeviceCapsValues { get }
var MPSDeviceSupportsReadableArrayOfTextures: MPSDeviceCapsValues { get }
var MPSDeviceSupportsWritableArrayOfTextures: MPSDeviceCapsValues { get }
var MPSDeviceSupportsReadWriteTextures: MPSDeviceCapsValues { get }
var MPSDeviceSupportsSimdgroupBarrier: MPSDeviceCapsValues { get }
var MPSDeviceSupportsQuadShuffle: MPSDeviceCapsValues { get }
var MPSDeviceSupportsSimdShuffle: MPSDeviceCapsValues { get }
var MPSDeviceSupportsSimdReduction: MPSDeviceCapsValues { get }
var MPSDeviceSupportsFloat32Filtering: MPSDeviceCapsValues { get }
var MPSDeviceSupportsNorm16BicubicFiltering: MPSDeviceCapsValues { get }
var MPSDeviceSupportsFloat16BicubicFiltering: MPSDeviceCapsValues { get }
var MPSDeviceIsAppleDevice: MPSDeviceCapsValues { get }
typealias MPSDeviceCaps = UInt32
struct MPSCustomKernelIndex : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MPSCustomKernelIndexDestIndex: MPSCustomKernelIndex { get }
var MPSCustomKernelIndexSrc0Index: MPSCustomKernelIndex { get }
var MPSCustomKernelIndexSrc1Index: MPSCustomKernelIndex { get }
var MPSCustomKernelIndexSrc2Index: MPSCustomKernelIndex { get }
var MPSCustomKernelIndexSrc3Index: MPSCustomKernelIndex { get }
var MPSCustomKernelIndexSrc4Index: MPSCustomKernelIndex { get }
var MPSCustomKernelIndexUserDataIndex: MPSCustomKernelIndex { get }
struct MPSMatrixOffset {
  var rowOffset: UInt32
  var columnOffset: UInt32
  init()
  init(rowOffset: UInt32, columnOffset: UInt32)
}
struct MPSIntegerDivisionParams {
  var divisor: UInt16
  var recip: UInt16
  var addend: UInt16
  var shift: UInt16
  init()
  init(divisor: UInt16, recip: UInt16, addend: UInt16, shift: UInt16)
}
struct MPSCustomKernelSourceInfo {
  var kernelOrigin: vector_short2
  var kernelPhase: vector_ushort2
  var kernelSize: vector_ushort2
  var offset: vector_short2
  var stride: vector_ushort2
  var dilationRate: vector_ushort2
  var featureChannelOffset: UInt16
  var featureChannels: UInt16
  var imageArrayOffset: UInt16
  var imageArraySize: UInt16
  init()
  init(kernelOrigin: vector_short2, kernelPhase: vector_ushort2, kernelSize: vector_ushort2, offset: vector_short2, stride: vector_ushort2, dilationRate: vector_ushort2, featureChannelOffset: UInt16, featureChannels: UInt16, imageArrayOffset: UInt16, imageArraySize: UInt16)
}
struct MPSCustomKernelInfo {
  var clipOrigin: vector_ushort4
  var clipSize: vector_ushort4
  var destinationFeatureChannels: UInt16
  var destImageArraySize: UInt16
  var sourceImageCount: UInt16
  var threadgroupSize: UInt16
  var subbatchIndex: UInt16
  var subbatchStride: UInt16
  var idiv: MPSIntegerDivisionParams
  init()
  init(clipOrigin: vector_ushort4, clipSize: vector_ushort4, destinationFeatureChannels: UInt16, destImageArraySize: UInt16, sourceImageCount: UInt16, threadgroupSize: UInt16, subbatchIndex: UInt16, subbatchStride: UInt16, idiv: MPSIntegerDivisionParams)
}
struct MPSImageType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var MPSImageType2d: MPSImageType { get }
var MPSImageType2d_array: MPSImageType { get }
var MPSImageTypeArray2d: MPSImageType { get }
var MPSImageTypeArray2d_array: MPSImageType { get }
var MPSImageType_ArrayMask: MPSImageType { get }
var MPSImageType_BatchMask: MPSImageType { get }
var MPSImageType_typeMask: MPSImageType { get }
var MPSImageType_noAlpha: MPSImageType { get }
var MPSImageType_texelFormatMask: MPSImageType { get }
var MPSImageType_texelFormatShift: MPSImageType { get }
var MPSImageType_texelFormatStandard: MPSImageType { get }
var MPSImageType_texelFormatUnorm8: MPSImageType { get }
var MPSImageType_texelFormatFloat16: MPSImageType { get }
var MPSImageType_texelFormatBFloat16: MPSImageType { get }
var MPSImageType_bitCount: MPSImageType { get }
var MPSImageType_mask: MPSImageType { get }
var MPSImageType2d_noAlpha: MPSImageType { get }
var MPSImageType2d_array_noAlpha: MPSImageType { get }
var MPSImageTypeArray2d_noAlpha: MPSImageType { get }
var MPSImageTypeArray2d_array_noAlpha: MPSImageType { get }
func MPSGetImageType(_ image: MPSImage) -> MPSImageType
typealias MPSFunctionConstant = Int64
typealias MPSFunctionConstantInMetal = UInt32
let MPSFunctionConstantNone: MPSFunctionConstant
func MPSFindIntegerDivisionParams(_ divisor: UInt16) -> MPSIntegerDivisionParams
struct MPSCustomKernelArgumentCount {
  var destinationTextureCount: UInt
  var sourceTextureCount: UInt
  var broadcastTextureCount: UInt
  init()
  init(destinationTextureCount: UInt, sourceTextureCount: UInt, broadcastTextureCount: UInt)
}
func MPSGetCustomKernelMaxBatchSize(_ c: MPSCustomKernelArgumentCount, _ MPSMaxTextures: UInt) -> UInt
func MPSGetCustomKernelBatchedDestinationIndex(_ c: MPSCustomKernelArgumentCount) -> UInt
func MPSGetCustomKernelBatchedSourceIndex(_ c: MPSCustomKernelArgumentCount, _ sourceIndex: UInt, _ MPSMaxTextures: UInt) -> UInt
func MPSGetCustomKernelBroadcastSourceIndex(_ c: MPSCustomKernelArgumentCount, _ sourceIndex: UInt, _ MPSMaxTextures: UInt) -> UInt
@available(macOS 10.13.4, *)
class MPSKeyedUnarchiver : NSKeyedUnarchiver, MPSDeviceProvider {
  @available(macOS 10.14, *)
  class func unarchivedObject(ofClasses classes: Set<AnyHashable>, from data: Data, device: MTLDevice) throws -> Any
  @available(macOS 10.14, *)
  class func unarchivedObject(of cls: AnyClass, from data: Data, device: MTLDevice) throws -> Any
  @available(macOS 10.14, *)
  init(forReadingFrom data: Data, device: MTLDevice, error: NSErrorPointer)
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  class func unarchiveObject(with data: Data, device: MTLDevice) -> Any?
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  class func unarchiveTopLevelObject(with data: Data, device: MTLDevice) throws -> Any
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  class func unarchiveObject(withFile path: String, device: MTLDevice) -> Any?
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  init?(device: MTLDevice)
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  init(forReadingWith data: Data, device: MTLDevice)
}
@available(macOS 10.15, *)
class MPSNDArrayDescriptor : NSObject {
  var dataType: MPSDataType
  var numberOfDimensions: Int
  func length(ofDimension dimensionIndex: Int) -> Int
  func sliceRange(forDimension dimensionIndex: Int) -> MPSDimensionSlice
  func sliceDimension(_ dimensionIndex: Int, withSubrange subRange: MPSDimensionSlice)
  func transposeDimension(_ dimensionIndex: Int, withDimension dimensionIndex2: Int)
  func dimensionOrder() -> vector_uchar16
  convenience init(dataType: MPSDataType, dimensionCount numberOfDimensions: Int, dimensionSizes: UnsafeMutablePointer<Int>)
  convenience init(dataType: MPSDataType, shape: [NSNumber])
  func reshape(withDimensionCount numberOfDimensions: Int, dimensionSizes: UnsafeMutablePointer<Int>)
  func reshape(withShape shape: [NSNumber])
}
protocol MPSNDArrayAllocator : NSCopying, NSSecureCoding, NSObjectProtocol {
  @available(macOS 10.15, *)
  func array(for cmdBuf: MTLCommandBuffer, arrayDescriptor descriptor: MPSNDArrayDescriptor, kernel: MPSKernel) -> MPSNDArray
}
@available(macOS 10.15, *)
class MPSNDArray : NSObject {
  class func defaultAllocator() -> MPSNDArrayAllocator
  var label: String?
  var dataType: MPSDataType { get }
  var dataTypeSize: Int { get }
  var numberOfDimensions: Int { get }
  func length(ofDimension dimensionIndex: Int) -> Int
  var device: MTLDevice { get }
  func descriptor() -> MPSNDArrayDescriptor
  init(device: MTLDevice, descriptor: MPSNDArrayDescriptor)
  convenience init(device: MTLDevice, scalar value: Double)
  func resourceSize() -> Int
  func arrayView(with cmdBuf: MTLCommandBuffer, descriptor: MPSNDArrayDescriptor, aliasing: MPSAliasingStrategy) -> MPSNDArray?
  var parent: MPSNDArray? { get }
  func exportData(with cmdBuf: MTLCommandBuffer, to buffer: MTLBuffer, destinationDataType: MPSDataType, offset: Int, rowStrides: UnsafeMutablePointer<Int>?)
  func importData(with cmdBuf: MTLCommandBuffer, from buffer: MTLBuffer, sourceDataType: MPSDataType, offset: Int, rowStrides: UnsafeMutablePointer<Int>?)
  func exportData(with cmdBuf: MTLCommandBuffer, to images: [MPSImage], offset: MPSImageCoordinate)
  func importData(with cmdBuf: MTLCommandBuffer, from images: [MPSImage], offset: MPSImageCoordinate)
  func readBytes(_ buffer: UnsafeMutableRawPointer, strideBytes strideBytesPerDimension: UnsafeMutablePointer<Int>?)
  func writeBytes(_ buffer: UnsafeMutableRawPointer, strideBytes strideBytesPerDimension: UnsafeMutablePointer<Int>?)
  func synchronize(on commandBuffer: MTLCommandBuffer)
}
@available(macOS 10.15, *)
class MPSTemporaryNDArray : MPSNDArray {
  convenience init(commandBuffer: MTLCommandBuffer, descriptor: MPSNDArrayDescriptor)
  var readCount: Int
}
enum MPSAlphaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case nonPremultiplied
  @available(macOS 10.13, *)
  case alphaIsOne
  @available(macOS 10.13, *)
  case premultiplied
}
typealias MPSCopyAllocator = (MPSKernel, MTLCommandBuffer, MTLTexture) -> MTLTexture
@available(macOS 10.13, *)
class MPSUnaryImageKernel : MPSKernel {
  var offset: MPSOffset
  var clipRect: MTLRegion
  var edgeMode: MPSImageEdgeMode
  func encode(commandBuffer: MTLCommandBuffer, inPlaceTexture texture: UnsafeMutablePointer<MTLTexture>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encode(commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, destinationTexture: MTLTexture)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, destinationImage: MPSImage)
  func sourceRegion(destinationSize: MTLSize) -> MPSRegion
}
@available(macOS 10.13, *)
class MPSBinaryImageKernel : MPSKernel {
  var primaryOffset: MPSOffset
  var secondaryOffset: MPSOffset
  var primaryEdgeMode: MPSImageEdgeMode
  var secondaryEdgeMode: MPSImageEdgeMode
  var clipRect: MTLRegion
  func encode(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, inPlaceSecondaryTexture: UnsafeMutablePointer<MTLTexture>, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encode(commandBuffer: MTLCommandBuffer, inPlacePrimaryTexture: UnsafeMutablePointer<MTLTexture>, secondaryTexture: MTLTexture, fallbackCopyAllocator copyAllocator: MPSCopyAllocator? = nil) -> Bool
  func encode(commandBuffer: MTLCommandBuffer, primaryTexture: MTLTexture, secondaryTexture: MTLTexture, destinationTexture: MTLTexture)
  func encode(commandBuffer: MTLCommandBuffer, primaryImage: MPSImage, secondaryImage: MPSImage, destinationImage: MPSImage)
  func primarySourceRegion(forDestinationSize destinationSize: MTLSize) -> MPSRegion
  func secondarySourceRegion(forDestinationSize destinationSize: MTLSize) -> MPSRegion
}
@available(macOS 10.13, *)
class MPSImageConversion : MPSUnaryImageKernel {
  var sourceAlpha: MPSAlphaType { get }
  var destinationAlpha: MPSAlphaType { get }
  init(device: MTLDevice, srcAlpha: MPSAlphaType, destAlpha: MPSAlphaType, backgroundColor: UnsafeMutablePointer<CGFloat>?, conversionInfo: CGColorConversionInfo?)
}
@available(macOS 10.13, *)
class MPSImageConvolution : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  var bias: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, weights kernelWeights: UnsafePointer<Float>)
}
@available(macOS 10.13, *)
class MPSImageLaplacian : MPSUnaryImageKernel {
  var bias: Float
}
@available(macOS 10.13, *)
class MPSImageBox : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
}
@available(macOS 10.13, *)
class MPSImageTent : MPSImageBox {
}
@available(macOS 10.13, *)
class MPSImageGaussianBlur : MPSUnaryImageKernel {
  init(device: MTLDevice, sigma: Float)
  var sigma: Float { get }
}
@available(macOS 10.13, *)
class MPSImageSobel : MPSUnaryImageKernel {
  init(device: MTLDevice, linearGrayColorTransform transform: UnsafePointer<Float>)
  var colorTransform: UnsafePointer<Float> { get }
}
@available(macOS 11.0, *)
class MPSImageCanny : MPSUnaryImageKernel {
  init(device: MTLDevice, linearToGrayScaleTransform transform: UnsafePointer<Float>, sigma: Float)
  var colorTransform: UnsafePointer<Float> { get }
  var sigma: Float { get }
  var highThreshold: Float
  var lowThreshold: Float
  var useFastMode: Bool
}
@available(macOS 10.13, *)
class MPSImagePyramid : MPSUnaryImageKernel {
  convenience init(device: MTLDevice, centerWeight: Float)
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, weights kernelWeights: UnsafePointer<Float>)
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
}
@available(macOS 10.13, *)
class MPSImageGaussianPyramid : MPSImagePyramid {
}
@available(macOS 10.13, *)
class MPSImageLaplacianPyramid : MPSImagePyramid {
  var laplacianBias: Float
  var laplacianScale: Float
}
@available(macOS 10.13, *)
class MPSImageLaplacianPyramidSubtract : MPSImageLaplacianPyramid {
}
@available(macOS 10.13, *)
class MPSImageLaplacianPyramidAdd : MPSImageLaplacianPyramid {
}
@available(macOS 10.13, *)
class MPSMatrixUnaryKernel : MPSKernel {
  var sourceMatrixOrigin: MTLOrigin
  var resultMatrixOrigin: MTLOrigin
  var batchStart: Int
  var batchSize: Int
}
@available(macOS 10.13, *)
class MPSMatrixBinaryKernel : MPSKernel {
  var primarySourceMatrixOrigin: MTLOrigin
  var secondarySourceMatrixOrigin: MTLOrigin
  var resultMatrixOrigin: MTLOrigin
  var batchStart: Int
  var batchSize: Int
}
@available(macOS 10.13, *)
class MPSMatrixMultiplication : MPSKernel {
  var resultMatrixOrigin: MTLOrigin
  var leftMatrixOrigin: MTLOrigin
  var rightMatrixOrigin: MTLOrigin
  var batchStart: Int
  var batchSize: Int
  init(device: MTLDevice, transposeLeft: Bool, transposeRight: Bool, resultRows: Int, resultColumns: Int, interiorColumns: Int, alpha: Double, beta: Double)
  @available(macOS 10.13, *)
  init(device: MTLDevice, resultRows: Int, resultColumns: Int, interiorColumns: Int)
  func encode(commandBuffer: MTLCommandBuffer, leftMatrix: MPSMatrix, rightMatrix: MPSMatrix, resultMatrix: MPSMatrix)
}
@available(macOS 10.13, *)
class MPSMatrixVectorMultiplication : MPSMatrixBinaryKernel {
  init(device: MTLDevice, transpose: Bool, rows: Int, columns: Int, alpha: Double, beta: Double)
  init(device: MTLDevice, rows: Int, columns: Int)
  func encode(commandBuffer: MTLCommandBuffer, inputMatrix: MPSMatrix, inputVector: MPSVector, resultVector: MPSVector)
}
@available(macOS 10.13, *)
class MPSMatrixSolveTriangular : MPSMatrixBinaryKernel {
  init(device: MTLDevice, right: Bool, upper: Bool, transpose: Bool, unit: Bool, order: Int, numberOfRightHandSides: Int, alpha: Double)
  func encode(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, rightHandSideMatrix: MPSMatrix, solutionMatrix: MPSMatrix)
}
@available(macOS 10.13, *)
class MPSMatrixSolveLU : MPSMatrixBinaryKernel {
  init(device: MTLDevice, transpose: Bool, order: Int, numberOfRightHandSides: Int)
  func encode(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, rightHandSideMatrix: MPSMatrix, pivotIndices: MPSMatrix, solutionMatrix: MPSMatrix)
}
@available(macOS 10.13, *)
class MPSMatrixSolveCholesky : MPSMatrixBinaryKernel {
  init(device: MTLDevice, upper: Bool, order: Int, numberOfRightHandSides: Int)
  func encode(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, rightHandSideMatrix: MPSMatrix, solutionMatrix: MPSMatrix)
}
enum MPSMatrixDecompositionStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS 10.13, *)
  case success
  @available(macOS 10.13, *)
  case failure
  @available(macOS 10.13, *)
  case singular
  @available(macOS 10.13, *)
  case nonPositiveDefinite
}
@available(macOS 10.13, *)
class MPSMatrixDecompositionLU : MPSMatrixUnaryKernel {
  init(device: MTLDevice, rows: Int, columns: Int)
  func encode(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, resultMatrix: MPSMatrix, pivotIndices: MPSMatrix, info status: MTLBuffer?)
}
@available(macOS 10.13, *)
class MPSMatrixDecompositionCholesky : MPSMatrixUnaryKernel {
  init(device: MTLDevice, lower: Bool, order: Int)
  func encode(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, resultMatrix: MPSMatrix, status: MTLBuffer?)
}
struct MPSMatrixCopyOffsets {
  var sourceRowOffset: UInt32
  var sourceColumnOffset: UInt32
  var destinationRowOffset: UInt32
  var destinationColumnOffset: UInt32
  init()
  init(sourceRowOffset: UInt32, sourceColumnOffset: UInt32, destinationRowOffset: UInt32, destinationColumnOffset: UInt32)
}
@available(macOS 10.13, *)
class MPSMatrixCopyDescriptor : NSObject {
  @available(macOS 10.13, *)
  convenience init(sourceMatrix: MPSMatrix, destinationMatrix: MPSMatrix, offsets: MPSMatrixCopyOffsets)
  @available(macOS 10.13, *)
  init(device: MTLDevice, count: Int)
  @available(macOS 10.13, *)
  func setCopyOperationAt(_ index: Int, sourceMatrix: MPSMatrix, destinationMatrix: MPSMatrix, offsets: MPSMatrixCopyOffsets)
  @available(macOS 10.13, *)
  init(sourceMatrices: [MPSMatrix], destinationMatrices: [MPSMatrix], offsetVector offsets: MPSVector?, offset byteOffset: Int)
}
@available(macOS 10.13, *)
class MPSMatrixCopy : MPSKernel {
  @available(macOS 10.13, *)
  init(device: MTLDevice, copyRows: Int, copyColumns: Int, sourcesAreTransposed: Bool, destinationsAreTransposed: Bool)
  var copyRows: Int { get }
  var copyColumns: Int { get }
  var sourcesAreTransposed: Bool { get }
  var destinationsAreTransposed: Bool { get }
  func encode(commandBuffer: MTLCommandBuffer, copyDescriptor: MPSMatrixCopyDescriptor)
  func encode(commandBuffer: MTLCommandBuffer, copyDescriptor: MPSMatrixCopyDescriptor, rowPermuteIndices: MPSVector?, rowPermuteOffset: Int, columnPermuteIndices: MPSVector?, columnPermuteOffset: Int)
}
@available(macOS 10.13, *)
class MPSMatrixSoftMax : MPSMatrixUnaryKernel {
  var sourceRows: Int
  var sourceColumns: Int
  func encode(commandBuffer: MTLCommandBuffer, inputMatrix: MPSMatrix, resultMatrix: MPSMatrix)
}
@available(macOS 10.13, *)
class MPSMatrixLogSoftMax : MPSMatrixSoftMax {
}
@available(macOS 10.14, *)
class MPSMatrixSoftMaxGradient : MPSMatrixBinaryKernel {
  var sourceRows: Int
  var sourceColumns: Int
  func encode(to commandBuffer: MTLCommandBuffer, gradientMatrix: MPSMatrix, forwardOutputMatrix: MPSMatrix, resultMatrix: MPSMatrix)
}
@available(macOS 10.14, *)
class MPSMatrixLogSoftMaxGradient : MPSMatrixSoftMaxGradient {
}
@available(macOS 10.13.4, *)
class MPSMatrixFindTopK : MPSMatrixUnaryKernel {
  var sourceRows: Int
  var sourceColumns: Int
  var indexOffset: Int
  var numberOfTopKValues: Int
  init(device: MTLDevice, numberOfTopKValues: Int)
  func encode(commandBuffer: MTLCommandBuffer, inputMatrix: MPSMatrix, resultIndexMatrix: MPSMatrix, resultValueMatrix: MPSMatrix)
}
struct MPSMatrixRandomDistribution : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.15, *)
  static var `default`: MPSMatrixRandomDistribution { get }
  @available(macOS 10.15, *)
  static var uniform: MPSMatrixRandomDistribution { get }
  @available(macOS 11.0, *)
  static var normal: MPSMatrixRandomDistribution { get }
}
@available(macOS 10.15, *)
class MPSMatrixRandomDistributionDescriptor : NSObject, NSCopying {
  var distributionType: MPSMatrixRandomDistribution
  var minimum: Float
  var maximum: Float
  var mean: Float
  var standardDeviation: Float
  class func uniformDistributionDescriptor(withMinimum minimum: Float, maximum: Float) -> MPSMatrixRandomDistributionDescriptor
  @available(macOS 11.0, *)
  class func normalDistributionDescriptor(withMean mean: Float, standardDeviation: Float) -> MPSMatrixRandomDistributionDescriptor
  @available(macOS 11.0, *)
  class func normalDistributionDescriptor(withMean mean: Float, standardDeviation: Float, minimum: Float, maximum: Float) -> MPSMatrixRandomDistributionDescriptor
  class func `default`() -> MPSMatrixRandomDistributionDescriptor
}
@available(macOS 10.15, *)
class MPSMatrixRandom : MPSKernel {
  var destinationDataType: MPSDataType { get }
  var distributionType: MPSMatrixRandomDistribution { get }
  var batchStart: Int
  var batchSize: Int
  func encode(commandBuffer: MTLCommandBuffer, destinationVector: MPSVector)
  func encode(commandBuffer: MTLCommandBuffer, destinationMatrix: MPSMatrix)
}
@available(macOS 10.15, *)
class MPSMatrixRandomMTGP32 : MPSMatrixRandom {
  init(device: MTLDevice, destinationDataType: MPSDataType, seed: Int, distributionDescriptor: MPSMatrixRandomDistributionDescriptor)
  func synchronizeState(on commandBuffer: MTLCommandBuffer)
  convenience init(device: MTLDevice, destinationDataType: MPSDataType, seed: Int)
}
@available(macOS 10.15, *)
class MPSMatrixRandomPhilox : MPSMatrixRandom {
  init(device: MTLDevice, destinationDataType: MPSDataType, seed: Int, distributionDescriptor: MPSMatrixRandomDistributionDescriptor)
  convenience init(device: MTLDevice, destinationDataType: MPSDataType, seed: Int)
}
@available(macOS 10.13, *)
class MPSImageCopyToMatrix : MPSKernel {
  var destinationMatrixOrigin: MTLOrigin
  var destinationMatrixBatchIndex: Int
  var dataLayout: MPSDataLayout { get }
  init(device: MTLDevice, dataLayout: MPSDataLayout)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, destinationMatrix: MPSMatrix)
  @available(macOS 10.14, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationMatrix: MPSMatrix)
}
@available(macOS 10.14, *)
class MPSMatrixCopyToImage : MPSKernel {
  var sourceMatrixOrigin: MTLOrigin
  var sourceMatrixBatchIndex: Int
  var dataLayout: MPSDataLayout { get }
  init(device: MTLDevice, dataLayout: MPSDataLayout)
  func encode(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, destinationImage: MPSImage)
  @available(macOS 10.14, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceMatrix: MPSMatrix, destinationImages: [MPSImage])
}
@available(macOS 10.13.4, *)
class MPSImageEuclideanDistanceTransform : MPSUnaryImageKernel {
  @available(macOS 11.0, *)
  var searchLimitRadius: Float
}
@available(macOS 10.15.4, *)
class MPSImageEDLines : MPSKernel {
  init(device: MTLDevice, gaussianSigma: Float, minLineLength: UInt16, maxLines: Int, detailRatio: UInt16, gradientThreshold: Float, lineErrorThreshold: Float, mergeLocalityThreshold: Float)
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, destinationTexture dest: MTLTexture?, endpointBuffer: MTLBuffer, endpointOffset: Int)
  var clipRectSource: MTLRegion
  var gaussianSigma: Float { get }
  var minLineLength: UInt16
  var maxLines: Int
  var detailRatio: UInt16
  var gradientThreshold: Float
  var lineErrorThreshold: Float
  var mergeLocalityThreshold: Float
}
@available(macOS 10.13.4, *)
class MPSImageGuidedFilter : MPSKernel {
  var kernelDiameter: Int { get }
  var epsilon: Float
  var reconstructScale: Float
  var reconstructOffset: Float
  init(device: MTLDevice, kernelDiameter: Int)
  func encodeRegression(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, guidanceTexture: MTLTexture, weightsTexture: MTLTexture?, destinationCoefficientsTexture: MTLTexture)
  func encodeReconstruction(to commandBuffer: MTLCommandBuffer, guidanceTexture: MTLTexture, coefficientsTexture: MTLTexture, destinationTexture: MTLTexture)
  @available(macOS 10.15.4, *)
  func encodeRegression(commandBuffer: MTLCommandBuffer, source sourceTexture: MTLTexture, guidance guidanceTexture: MTLTexture, weights weightsTexture: MTLTexture?, destinationCoefficientsA destinationCoefficientsTextureA: MTLTexture, destinationCoefficientsB destinationCoefficientsTextureB: MTLTexture)
  @available(macOS 10.15.4, *)
  func encodeReconstruction(commandBuffer: MTLCommandBuffer, guidance guidanceTexture: MTLTexture, coefficientsA coefficientsTextureA: MTLTexture, coefficientsB coefficientsTextureB: MTLTexture, destination destinationTexture: MTLTexture)
}
struct MPSImageKeypointRangeInfo {
  var maximumKeypoints: Int
  var minimumThresholdValue: Float
  init()
  init(maximumKeypoints: Int, minimumThresholdValue: Float)
}
struct MPSImageKeypointData {
  var keypointCoordinate: vector_ushort2
  var keypointColorValue: Float
  init()
  init(keypointCoordinate: vector_ushort2, keypointColorValue: Float)
}
@available(macOS 10.13, *)
class MPSImageFindKeypoints : MPSKernel {
  var keypointRangeInfo: MPSImageKeypointRangeInfo { get }
  init(device: MTLDevice, info: UnsafePointer<MPSImageKeypointRangeInfo>)
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, regions: UnsafePointer<MTLRegion>, numberOfRegions: Int, keypointCount keypointCountBuffer: MTLBuffer, keypointCountBufferOffset: Int, keypointDataBuffer: MTLBuffer, keypointDataBufferOffset: Int)
}
struct MPSImageHistogramInfo {
  var numberOfHistogramEntries: Int
  var histogramForAlpha: ObjCBool
  var minPixelValue: vector_float4
  var maxPixelValue: vector_float4
  init()
  init(numberOfHistogramEntries: Int, histogramForAlpha: ObjCBool, minPixelValue: vector_float4, maxPixelValue: vector_float4)
}
@available(macOS 10.13, *)
class MPSImageHistogram : MPSKernel {
  var clipRectSource: MTLRegion
  var zeroHistogram: Bool
  var minPixelThresholdValue: vector_float4
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
  func histogramSize(forSourceFormat sourceFormat: MTLPixelFormat) -> Int
}
@available(macOS 10.13, *)
class MPSImageNormalizedHistogram : MPSKernel {
  var clipRectSource: MTLRegion
  var zeroHistogram: Bool
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, minmaxTexture: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
  func histogramSize(forSourceFormat sourceFormat: MTLPixelFormat) -> Int
}
@available(macOS 10.13, *)
class MPSImageHistogramEqualization : MPSUnaryImageKernel {
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTransform(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, histogram: MTLBuffer, histogramOffset: Int)
}
@available(macOS 10.13, *)
class MPSImageHistogramSpecification : MPSUnaryImageKernel {
  var histogramInfo: MPSImageHistogramInfo { get }
  init(device: MTLDevice, histogramInfo: UnsafePointer<MPSImageHistogramInfo>)
  func encodeTransform(to commandBuffer: MTLCommandBuffer, sourceTexture source: MTLTexture, sourceHistogram: MTLBuffer, sourceHistogramOffset: Int, desiredHistogram: MTLBuffer, desiredHistogramOffset: Int)
}
@available(macOS 10.13, *)
class MPSImageIntegral : MPSUnaryImageKernel {
}
@available(macOS 10.13, *)
class MPSImageIntegralOfSquares : MPSUnaryImageKernel {
}
@available(macOS 10.13, *)
class MPSImageArithmetic : MPSBinaryImageKernel {
  var primaryScale: Float
  var secondaryScale: Float
  var bias: Float
  var primaryStrideInPixels: MTLSize
  var secondaryStrideInPixels: MTLSize
  @available(macOS 10.13.4, *)
  var minimumValue: Float
  @available(macOS 10.13.4, *)
  var maximumValue: Float
}
@available(macOS 10.13, *)
class MPSImageAdd : MPSImageArithmetic {
}
@available(macOS 10.13, *)
class MPSImageSubtract : MPSImageArithmetic {
}
@available(macOS 10.13, *)
class MPSImageMultiply : MPSImageArithmetic {
}
@available(macOS 10.13, *)
class MPSImageDivide : MPSImageArithmetic {
}
@available(macOS 10.13, *)
class MPSImageMedian : MPSUnaryImageKernel {
  var kernelDiameter: Int { get }
  init(device: MTLDevice, kernelDiameter: Int)
  class func maxKernelDiameter() -> Int
  class func minKernelDiameter() -> Int
}
@available(macOS 10.13, *)
class MPSImageAreaMax : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
}
@available(macOS 10.13, *)
class MPSImageAreaMin : MPSImageAreaMax {
}
@available(macOS 10.13, *)
class MPSImageDilate : MPSUnaryImageKernel {
  var kernelHeight: Int { get }
  var kernelWidth: Int { get }
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, values: UnsafePointer<Float>)
}
@available(macOS 10.13, *)
class MPSImageErode : MPSImageDilate {
}
@available(macOS 10.13.4, *)
class MPSImageReduceUnary : MPSUnaryImageKernel {
  var clipRectSource: MTLRegion
}
@available(macOS 10.13.4, *)
class MPSImageReduceRowMin : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceColumnMin : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceRowMax : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceColumnMax : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceRowMean : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceColumnMean : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceRowSum : MPSImageReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSImageReduceColumnSum : MPSImageReduceUnary {
}
@available(macOS 10.13, *)
class MPSImageScale : MPSUnaryImageKernel {
  var scaleTransform: UnsafePointer<MPSScaleTransform>?
}
@available(macOS 10.13, *)
class MPSImageLanczosScale : MPSImageScale {
}
@available(macOS 10.13, *)
class MPSImageBilinearScale : MPSImageScale {
}
@available(macOS 10.13, *)
class MPSImageStatisticsMinAndMax : MPSUnaryImageKernel {
  var clipRectSource: MTLRegion
}
@available(macOS 10.13, *)
class MPSImageStatisticsMeanAndVariance : MPSUnaryImageKernel {
  var clipRectSource: MTLRegion
}
@available(macOS 10.13, *)
class MPSImageStatisticsMean : MPSUnaryImageKernel {
  var clipRectSource: MTLRegion
}
@available(macOS 10.13, *)
class MPSImageThresholdBinary : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>?)
  var thresholdValue: Float { get }
  var maximumValue: Float { get }
  var transform: UnsafePointer<Float> { get }
}
@available(macOS 10.13, *)
class MPSImageThresholdBinaryInverse : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, maximumValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>?)
  var thresholdValue: Float { get }
  var maximumValue: Float { get }
  var transform: UnsafePointer<Float> { get }
}
@available(macOS 10.13, *)
class MPSImageThresholdTruncate : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>?)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
}
@available(macOS 10.13, *)
class MPSImageThresholdToZero : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>?)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
}
@available(macOS 10.13, *)
class MPSImageThresholdToZeroInverse : MPSUnaryImageKernel {
  init(device: MTLDevice, thresholdValue: Float, linearGrayColorTransform transform: UnsafePointer<Float>?)
  var thresholdValue: Float { get }
  var transform: UnsafePointer<Float> { get }
}
@available(macOS 10.13, *)
class MPSImageTranspose : MPSUnaryImageKernel {
}
enum MPSCNNConvolutionFlags : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
}
enum MPSCNNBinaryConvolutionFlags : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case none
  @available(macOS 10.13, *)
  case useBetaScaling
}
enum MPSCNNBinaryConvolutionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case binaryWeights
  @available(macOS 10.13, *)
  case XNOR
  @available(macOS 10.13, *)
  case AND
}
struct MPSNNConvolutionAccumulatorPrecisionOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.13.4, *)
  static var half: MPSNNConvolutionAccumulatorPrecisionOption { get }
  @available(macOS 10.13.4, *)
  static var float: MPSNNConvolutionAccumulatorPrecisionOption { get }
}
struct MPSNNTrainingStyle : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.13.4, *)
  static var UpdateDeviceNone: MPSNNTrainingStyle { get }
  @available(macOS 10.13.4, *)
  static var updateDeviceCPU: MPSNNTrainingStyle { get }
  @available(macOS 10.13.4, *)
  static var updateDeviceGPU: MPSNNTrainingStyle { get }
}
struct MPSCNNBatchNormalizationFlags : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.13.4, *)
  static var Default: MPSCNNBatchNormalizationFlags { get }
  @available(macOS 10.13.4, *)
  static var CalculateStatisticsAutomatic: MPSCNNBatchNormalizationFlags { get }
  @available(macOS 10.13.4, *)
  static var calculateStatisticsAlways: MPSCNNBatchNormalizationFlags { get }
  @available(macOS 10.13.4, *)
  static var calculateStatisticsNever: MPSCNNBatchNormalizationFlags { get }
  @available(macOS 10.13.4, *)
  static var calculateStatisticsMask: MPSCNNBatchNormalizationFlags { get }
}
struct MPSNNPaddingMethod : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.13, *)
  static var centered: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var alignTopLeft: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var alignBottomRight: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var align_reserved: MPSNNPaddingMethod { get }
  static var alignMask: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var topLeft: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var addRemainderToTopRight: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var addRemainderToBottomLeft: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var addRemainderToBottomRight: MPSNNPaddingMethod { get }
  static var addRemainderToMask: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var validOnly: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var sizeSame: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var sizeFull: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var size_reserved: MPSNNPaddingMethod { get }
  @available(macOS 10.14, *)
  static var customWhitelistForNodeFusion: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var custom: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var sizeMask: MPSNNPaddingMethod { get }
  @available(macOS 10.13, *)
  static var excludeEdges: MPSNNPaddingMethod { get }
}
protocol MPSNNPadding : NSSecureCoding, NSObjectProtocol {
  func paddingMethod() -> MPSNNPaddingMethod
  optional func label() -> String
  @available(macOS 10.13, *)
  optional func destinationImageDescriptor(forSourceImages sourceImages: [MPSImage], sourceStates: [MPSState]?, for kernel: MPSKernel, suggestedDescriptor inDescriptor: MPSImageDescriptor) -> MPSImageDescriptor
  @available(macOS 10.13.4, *)
  optional func inverse() -> Self?
}
@available(macOS 10.13, *)
class MPSNNDefaultPadding : NSObject, MPSNNPadding {
  convenience init(method: MPSNNPaddingMethod)
  @available(macOS 10.13.4, *)
  class func forTensorflowAveragePooling() -> Self
  @available(macOS 10.13.4, *)
  class func forTensorflowAveragePoolingValidOnly() -> Self
}
protocol MPSImageSizeEncodingState : NSObjectProtocol {
  var sourceWidth: Int { get }
  var sourceHeight: Int { get }
}
@available(macOS 10.13.4, *)
class MPSNNGradientState : MPSState {
}
@available(macOS 10.13.4, *)
class MPSNNBinaryGradientState : MPSState {
}
@available(macOS 10.15.0, *)
class MPSNNMultiaryGradientState : MPSState {
}
@available(macOS 10.13, *)
class MPSCNNKernel : MPSKernel {
  var offset: MPSOffset
  var clipRect: MTLRegion
  var destinationFeatureChannelOffset: Int
  var sourceFeatureChannelOffset: Int
  var sourceFeatureChannelMaxCount: Int
  var edgeMode: MPSImageEdgeMode
  var kernelWidth: Int { get }
  var kernelHeight: Int { get }
  var strideInPixelsX: Int { get }
  var strideInPixelsY: Int { get }
  var dilationRateX: Int { get }
  var dilationRateY: Int { get }
  @available(macOS 10.13, *)
  var isBackwards: Bool { get }
  @available(macOS 10.13.4, *)
  var isStateModified: Bool { get }
  @available(macOS 10.13, *)
  var padding: MPSNNPadding
  @available(macOS 10.13, *)
  var destinationImageAllocator: MPSImageAllocator
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, destinationImage: MPSImage)
  @available(macOS 10.13.4, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, destinationState: MPSState, destinationImage: MPSImage)
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationImages: [MPSImage])
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationStates: [MPSState]?, destinationImages: [MPSImage])
  @available(macOS 10.13, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage) -> MPSImage
  @available(macOS 10.13.4, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, destinationState outState: AutoreleasingUnsafeMutablePointer<MPSState?>, destinationStateIsTemporary isTemporary: Bool) -> MPSImage
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage]) -> [MPSImage]
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationStates outStates: AutoreleasingUnsafeMutablePointer<NSArray?>, destinationStateIsTemporary isTemporary: Bool) -> [MPSImage]
  @available(macOS 10.13.4, *)
  func resultState(sourceImage: MPSImage, sourceStates: [MPSState]?, destinationImage: MPSImage) -> MPSState?
  @available(macOS 10.13.4, *)
  func resultStateBatch(sourceImage: [MPSImage], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]) -> [MPSState]?
  @available(macOS 10.13.4, *)
  func temporaryResultState(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, sourceStates: [MPSState]?, destinationImage: MPSImage) -> MPSState?
  @available(macOS 10.13.4, *)
  func temporaryResultStateBatch(commandBuffer: MTLCommandBuffer, sourceImage: [MPSImage], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]) -> [MPSState]?
  @available(macOS 10.13.4, *)
  func isResultStateReusedAcrossBatch() -> Bool
  @available(macOS 10.13.4, *)
  func appendBatchBarrier() -> Bool
  @available(macOS 10.13, *)
  func destinationImageDescriptor(sourceImages: [MPSImage], sourceStates: [MPSState]?) -> MPSImageDescriptor
  @available(macOS 10.15, *)
  func encodingStorageSize(sourceImage: MPSImage, sourceStates: [MPSState]?, destinationImage: MPSImage?) -> Int
  @available(macOS 10.15, *)
  func batchEncodingStorageSize(sourceImage: [MPSImage], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]?) -> Int
}
@available(macOS 10.13, *)
class MPSCNNBinaryKernel : MPSKernel {
  var primaryOffset: MPSOffset
  var secondaryOffset: MPSOffset
  var clipRect: MTLRegion
  var destinationFeatureChannelOffset: Int
  @available(macOS 10.13.4, *)
  var primarySourceFeatureChannelOffset: Int
  @available(macOS 10.13.4, *)
  var secondarySourceFeatureChannelOffset: Int
  var primarySourceFeatureChannelMaxCount: Int
  var secondarySourceFeatureChannelMaxCount: Int
  var primaryEdgeMode: MPSImageEdgeMode
  var secondaryEdgeMode: MPSImageEdgeMode
  @available(macOS 10.13.4, *)
  var primaryKernelWidth: Int { get }
  @available(macOS 10.13.4, *)
  var primaryKernelHeight: Int { get }
  @available(macOS 10.13.4, *)
  var secondaryKernelWidth: Int { get }
  @available(macOS 10.13.4, *)
  var secondaryKernelHeight: Int { get }
  @available(macOS 10.13.4, *)
  var primaryStrideInPixelsX: Int
  @available(macOS 10.13.4, *)
  var primaryStrideInPixelsY: Int
  @available(macOS 10.13.4, *)
  var secondaryStrideInPixelsX: Int
  @available(macOS 10.13.4, *)
  var secondaryStrideInPixelsY: Int
  @available(macOS 10.13.4, *)
  var primaryDilationRateX: Int { get }
  @available(macOS 10.13.4, *)
  var primaryDilationRateY: Int { get }
  @available(macOS 10.13.4, *)
  var secondaryDilationRateX: Int { get }
  @available(macOS 10.13.4, *)
  var secondaryDilationRateY: Int { get }
  var isBackwards: Bool { get }
  @available(macOS 10.13.4, *)
  var isStateModified: Bool { get }
  var padding: MPSNNPadding
  var destinationImageAllocator: MPSImageAllocator
  func encode(commandBuffer: MTLCommandBuffer, primaryImage: MPSImage, secondaryImage: MPSImage, destinationImage: MPSImage)
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, primaryImages: [MPSImage], secondaryImages: [MPSImage], destinationImages: [MPSImage])
  func encode(commandBuffer: MTLCommandBuffer, primaryImage: MPSImage, secondaryImage: MPSImage) -> MPSImage
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, primaryImages primaryImage: [MPSImage], secondaryImages secondaryImage: [MPSImage]) -> [MPSImage]
  @available(macOS 10.13.4, *)
  func encode(commandBuffer: MTLCommandBuffer, primaryImage: MPSImage, secondaryImage: MPSImage, destinationState outState: AutoreleasingUnsafeMutablePointer<MPSState?>, destinationStateIsTemporary isTemporary: Bool) -> MPSImage
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, primaryImages: [MPSImage], secondaryImages: [MPSImage], destinationStates outState: AutoreleasingUnsafeMutablePointer<NSArray?>, destinationStateIsTemporary isTemporary: Bool) -> [MPSImage]
  @available(macOS 10.13.4, *)
  func resultState(primaryImage: MPSImage, secondaryImage: MPSImage, sourceStates: [MPSState]?, destinationImage: MPSImage) -> MPSState?
  @available(macOS 10.13.4, *)
  func resultStateBatch(primaryImage: [MPSImage], secondaryImage: [MPSImage], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]) -> [MPSState]?
  @available(macOS 10.13.4, *)
  func temporaryResultState(commandBuffer: MTLCommandBuffer, primaryImage: MPSImage, secondaryImage: MPSImage, sourceStates: [MPSState]?, destinationImage: MPSImage) -> MPSState?
  @available(macOS 10.13.4, *)
  func temporaryResultStateBatch(commandBuffer: MTLCommandBuffer, primaryImage: [MPSImage], secondaryImage: [MPSImage], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]) -> [MPSState]?
  @available(macOS 10.13.4, *)
  func isResultStateReusedAcrossBatch() -> Bool
  @available(macOS 10.13.4, *)
  func appendBatchBarrier() -> Bool
  func destinationImageDescriptor(forSourceImages sourceImages: [MPSImage], sourceStates: [MPSState]?) -> MPSImageDescriptor
  @available(macOS 10.15, *)
  func encodingStorageSize(primaryImage: MPSImage, secondaryImage: MPSImage, sourceStates: [MPSState]?, destinationImage: MPSImage?) -> Int
  @available(macOS 10.15, *)
  func batchEncodingStorageSize(primaryImage: [MPSImage], secondaryImage: [MPSImage], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]?) -> Int
}
@available(macOS 10.13.4, *)
class MPSCNNGradientKernel : MPSCNNBinaryKernel {
  var kernelOffsetX: Int
  var kernelOffsetY: Int
  func encode(commandBuffer: MTLCommandBuffer, sourceGradient: MPSImage, sourceImage: MPSImage, gradientState: MPSState) -> MPSImage
  func encode(commandBuffer: MTLCommandBuffer, sourceGradient: MPSImage, sourceImage: MPSImage, gradientState: MPSState, destinationGradient: MPSImage)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], gradientStates: [MPSState]) -> [MPSImage]
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], gradientStates: [MPSState], destinationGradients: [MPSImage])
}
@available(macOS 10.15, *)
class MPSCNNMultiaryKernel : MPSKernel {
  init(device: MTLDevice, sourceCount: Int)
  var sourceCount: Int { get }
  var clipRect: MTLRegion
  var destinationFeatureChannelOffset: Int
  var isBackwards: Bool { get }
  var isStateModified: Bool { get }
  var padding: MPSNNPadding
  var destinationImageAllocator: MPSImageAllocator
  func offset(at index: Int) -> MPSOffset
  func setOffset(_ offset: MPSOffset, at index: Int)
  func sourceFeatureChannelOffset(at index: Int) -> Int
  func setSourceFeatureChannelOffset(_ offset: Int, at index: Int)
  func sourceFeatureChannelMaxCount(at index: Int) -> Int
  func setSourceFeatureChannelMaxCount(_ count: Int, at index: Int)
  func edgeMode(at index: Int) -> MPSImageEdgeMode
  func setEdgeMode(_ edgeMode: MPSImageEdgeMode, at index: Int)
  func kernelWidth(at index: Int) -> Int
  func setKernelWidth(_ width: Int, at index: Int)
  func kernelHeight(at index: Int) -> Int
  func setKernelHeight(_ height: Int, at index: Int)
  func stride(inPixelsXatIndex index: Int) -> Int
  func setStrideInPixelsX(_ stride: Int, at index: Int)
  func stride(inPixelsYatIndex index: Int) -> Int
  func setStrideInPixelsY(_ stride: Int, at index: Int)
  func dilationRateXatIndex(_ index: Int) -> Int
  func setDilationRateX(_ dilationRate: Int, at index: Int)
  func dilationRateYatIndex(_ index: Int) -> Int
  func setDilationRateY(_ dilationRate: Int, at index: Int)
  func encode(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationImage: MPSImage)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [[MPSImage]], destinationImages: [MPSImage])
  func encode(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage]) -> MPSImage
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages sourceImageBatches: [[MPSImage]]) -> [MPSImage]
  func encode(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationState outState: AutoreleasingUnsafeMutablePointer<MPSState?>, destinationStateIsTemporary isTemporary: Bool) -> MPSImage
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages sourceImageBatches: [[MPSImage]], destinationStates outState: AutoreleasingUnsafeMutablePointer<NSArray?>, destinationStateIsTemporary isTemporary: Bool) -> [MPSImage]
  func isResultStateReusedAcrossBatch() -> Bool
  func appendBatchBarrier() -> Bool
  func resultState(sourceImages: [MPSImage], sourceStates: [MPSState]?, destinationImage: MPSImage) -> MPSState?
  func resultStateBatch(sourceImages: [[MPSImage]], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]) -> [MPSState]?
  func temporaryResultState(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], sourceStates: [MPSState]?, destinationImage: MPSImage) -> MPSState?
  func temporaryResultStateBatch(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [[MPSImage]], sourceStates: [[MPSState]]?, destinationImage: [MPSImage]) -> [MPSState]?
  func destinationImageDescriptor(sourceImages: [MPSImage], sourceStates: [MPSState]?) -> MPSImageDescriptor
}
@available(macOS 10.12, *)
class MPSCNNSpatialNormalization : MPSCNNKernel {
  var alpha: Float
  var beta: Float
  var delta: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNSpatialNormalizationGradient : MPSCNNGradientKernel {
  var alpha: Float
  var beta: Float
  var delta: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
}
@available(macOS 10.13, *)
class MPSCNNLocalContrastNormalization : MPSCNNKernel {
  var alpha: Float
  var beta: Float
  var delta: Float
  var p0: Float
  var pm: Float
  var ps: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNLocalContrastNormalizationGradient : MPSCNNGradientKernel {
  var alpha: Float
  var beta: Float
  var delta: Float
  var p0: Float
  var pm: Float
  var ps: Float
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
}
@available(macOS 10.13, *)
class MPSCNNCrossChannelNormalization : MPSCNNKernel {
  var alpha: Float
  var beta: Float
  var delta: Float
  var kernelSize: Int { get }
  init(device: MTLDevice, kernelSize: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNCrossChannelNormalizationGradient : MPSCNNGradientKernel {
  var alpha: Float
  var beta: Float
  var delta: Float
  var kernelSize: Int { get }
  init(device: MTLDevice, kernelSize: Int)
}
enum MPSCNNNeuronType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS 10.13, *)
  case none
  @available(macOS 10.13, *)
  case reLU
  @available(macOS 10.13, *)
  case linear
  @available(macOS 10.13, *)
  case sigmoid
  @available(macOS 10.13, *)
  case hardSigmoid
  @available(macOS 10.13, *)
  case tanH
  @available(macOS 10.13, *)
  case absolute
  @available(macOS 10.13, *)
  case softPlus
  @available(macOS 10.13, *)
  case softSign
  @available(macOS 10.13, *)
  case ELU
  @available(macOS 10.13, *)
  case pReLU
  @available(macOS 10.13, *)
  case reLUN
  @available(macOS 10.13.4, *)
  case power
  @available(macOS 10.13.4, *)
  case exponential
  @available(macOS 10.13.4, *)
  case logarithm
  @available(macOS 10.15, *)
  case geLU
  @available(macOS 10.13, *)
  case count
}
@available(macOS 10.13.4, *)
class MPSNNNeuronDescriptor : NSObject, NSCopying, NSSecureCoding {
  var neuronType: MPSCNNNeuronType
  var a: Float
  var b: Float
  var c: Float
  var data: Data?
  class func cnnNeuronDescriptor(with neuronType: MPSCNNNeuronType) -> MPSNNNeuronDescriptor
  class func cnnNeuronDescriptor(with neuronType: MPSCNNNeuronType, a: Float) -> MPSNNNeuronDescriptor
  class func cnnNeuronDescriptor(with neuronType: MPSCNNNeuronType, a: Float, b: Float) -> MPSNNNeuronDescriptor
  class func cnnNeuronDescriptor(with neuronType: MPSCNNNeuronType, a: Float, b: Float, c: Float) -> MPSNNNeuronDescriptor
  class func cnnNeuronPReLUDescriptor(with data: Data, noCopy: Bool) -> MPSNNNeuronDescriptor
}
@available(macOS 10.13, *)
class MPSCNNNeuron : MPSCNNKernel {
  @available(macOS 10.13, *)
  var neuronType: MPSCNNNeuronType { get }
  var a: Float { get }
  var b: Float { get }
  var c: Float { get }
  @available(macOS 10.13, *)
  var data: Data? { get }
  @available(macOS 10.13.4, *)
  init(device: MTLDevice, neuronDescriptor: MPSNNNeuronDescriptor)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronGradient : MPSCNNGradientKernel {
  var neuronType: MPSCNNNeuronType { get }
  var a: Float { get }
  var b: Float { get }
  var c: Float { get }
  var data: Data? { get }
  @available(macOS 10.13, *)
  init(device: MTLDevice, neuronDescriptor: MPSNNNeuronDescriptor)
}
@available(macOS 10.13, *)
class MPSCNNNeuronLinear : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronReLU : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronPReLU : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: UnsafePointer<Float>, count: Int)
}
@available(macOS 10.13, *)
class MPSCNNNeuronSigmoid : MPSCNNNeuron {
}
@available(macOS 10.13, *)
class MPSCNNNeuronHardSigmoid : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronTanH : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronAbsolute : MPSCNNNeuron {
}
@available(macOS 10.13, *)
class MPSCNNNeuronSoftPlus : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronSoftSign : MPSCNNNeuron {
}
@available(macOS 10.13, *)
class MPSCNNNeuronELU : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronReLUN : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronPower : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float, c: Float)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronExponential : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float, c: Float)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronLogarithm : MPSCNNNeuron {
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  init(device: MTLDevice, a: Float, b: Float, c: Float)
}
@available(macOS 10.13, *)
class MPSCNNConvolutionDescriptor : NSObject, NSSecureCoding, NSCopying {
  var kernelWidth: Int
  var kernelHeight: Int
  var inputFeatureChannels: Int
  var outputFeatureChannels: Int
  var strideInPixelsX: Int
  var strideInPixelsY: Int
  var groups: Int
  var dilationRateX: Int
  var dilationRateY: Int
  @available(macOS 10.13.4, *)
  var fusedNeuronDescriptor: MPSNNNeuronDescriptor
  var neuron: MPSCNNNeuron?
  convenience init(kernelWidth: Int, kernelHeight: Int, inputFeatureChannels: Int, outputFeatureChannels: Int, neuronFilter: MPSCNNNeuron?)
  @available(macOS 10.13, *)
  convenience init(kernelWidth: Int, kernelHeight: Int, inputFeatureChannels: Int, outputFeatureChannels: Int)
  @available(macOS 10.13, *)
  func setBatchNormalizationParametersForInferenceWithMean(_ mean: UnsafePointer<Float>?, variance: UnsafePointer<Float>?, gamma: UnsafePointer<Float>?, beta: UnsafePointer<Float>?, epsilon: Float)
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float)
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  func neuronType() -> MPSCNNNeuronType
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  func neuronParameterA() -> Float
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  func neuronParameterB() -> Float
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  func setNeuronToPReLUWithParametersA(_ A: Data)
}
@available(macOS 10.13, *)
class MPSCNNSubPixelConvolutionDescriptor : MPSCNNConvolutionDescriptor {
  var subPixelScaleFactor: Int
}
@available(macOS 10.13, *)
class MPSCNNDepthWiseConvolutionDescriptor : MPSCNNConvolutionDescriptor {
  var channelMultiplier: Int { get }
}
enum MPSCNNConvolutionWeightsLayout : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS 10.15, *)
  case OHWI
}
enum MPSCNNWeightsQuantizationType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS 10.14, *)
  case none
  @available(macOS 10.14, *)
  case none
  @available(macOS 10.14, *)
  case none
}
@available(macOS 10.13.4, *)
class MPSCNNConvolutionGradientState : MPSNNGradientState, MPSImageSizeEncodingState {
  var gradientForWeights: MTLBuffer { get }
  var gradientForBiases: MTLBuffer { get }
  var convolution: MPSCNNConvolution { get }
  @available(macOS 10.15, *)
  var gradientForWeightsLayout: MPSCNNConvolutionWeightsLayout { get }
}
@available(macOS 10.15.0, *)
class MPSCNNConvolutionTransposeGradientState : MPSCNNConvolutionGradientState {
  var convolutionTranspose: MPSCNNConvolutionTranspose { get }
}
@available(macOS 10.13.4, *)
class MPSCNNConvolutionWeightsAndBiasesState : MPSState {
  var weights: MTLBuffer { get }
  var biases: MTLBuffer? { get }
  var weightsOffset: Int { get }
  var biasesOffset: Int { get }
  init(weights: MTLBuffer, biases: MTLBuffer?)
  init(device: MTLDevice, cnnConvolutionDescriptor descriptor: MPSCNNConvolutionDescriptor)
  class func temporaryCNNConvolutionWeightsAndBiasesState(with commandBuffer: MTLCommandBuffer, cnnConvolutionDescriptor descriptor: MPSCNNConvolutionDescriptor) -> Self
  @available(macOS 10.15.0, *)
  init(weights: MTLBuffer, weightsOffset: Int, biases: MTLBuffer?, biasesOffset: Int, cnnConvolutionDescriptor descriptor: MPSCNNConvolutionDescriptor)
}
protocol MPSCNNConvolutionDataSource : NSCopying, NSObjectProtocol {
  func dataType() -> MPSDataType
  @available(macOS 10.13, *)
  func descriptor() -> MPSCNNConvolutionDescriptor
  func weights() -> UnsafeMutableRawPointer
  func biasTerms() -> UnsafeMutablePointer<Float>?
  func load() -> Bool
  func purge()
  func label() -> String?
  optional func rangesForUInt8Kernel() -> UnsafeMutablePointer<vector_float2>
  optional func lookupTableForUInt8Kernel() -> UnsafeMutablePointer<Float>
  optional func weightsQuantizationType() -> MPSCNNWeightsQuantizationType
  @available(macOS 10.13.4, *)
  optional func update(with commandBuffer: MTLCommandBuffer, gradientState: MPSCNNConvolutionGradientState, sourceState: MPSCNNConvolutionWeightsAndBiasesState) -> MPSCNNConvolutionWeightsAndBiasesState?
  @available(macOS 10.13.4, *)
  optional func update(with gradientState: MPSCNNConvolutionGradientState, sourceState: MPSCNNConvolutionWeightsAndBiasesState) -> Bool
  @available(macOS 10.14, *)
  optional func copy(with zone: NSZone? = nil, device: MTLDevice?) -> Self
  @available(macOS 10.15, *)
  optional func weightsLayout() -> MPSCNNConvolutionWeightsLayout
  @available(macOS 11.0, *)
  optional func kernelWeightsDataType() -> MPSDataType
}
@available(macOS 10.13, *)
class MPSCNNConvolution : MPSCNNKernel {
  var inputFeatureChannels: Int { get }
  var outputFeatureChannels: Int { get }
  var groups: Int { get }
  var dataSource: MPSCNNConvolutionDataSource { get }
  var subPixelScaleFactor: Int { get }
  var neuron: MPSCNNNeuron? { get }
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  var neuronType: MPSCNNNeuronType { get }
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  var neuronParameterA: Float { get }
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  var neuronParameterB: Float { get }
  @available(macOS, introduced: 10.13, deprecated: 10.14)
  var neuronParameterC: Float { get }
  @available(macOS 10.14, *)
  var fusedNeuronDescriptor: MPSNNNeuronDescriptor? { get }
  var channelMultiplier: Int { get }
  @available(macOS 10.13.4, *)
  var accumulatorPrecisionOption: MPSNNConvolutionAccumulatorPrecisionOption
  @available(macOS 10.13, *)
  init(device: MTLDevice, weights: MPSCNNConvolutionDataSource)
  init(device: MTLDevice, convolutionDescriptor: MPSCNNConvolutionDescriptor, kernelWeights: UnsafePointer<Float>, biasTerms: UnsafePointer<Float>?, flags: MPSCNNConvolutionFlags)
  @available(macOS 10.14, *)
  func reloadWeightsAndBiasesFromDataSource()
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  func reloadWeightsAndBiases(with dataSource: MPSCNNConvolutionDataSource)
  @available(macOS 10.13.4, *)
  func reloadWeightsAndBiases(with commandBuffer: MTLCommandBuffer, state: MPSCNNConvolutionWeightsAndBiasesState)
  @available(macOS 10.13.4, *)
  func exportWeightsAndBiases(with commandBuffer: MTLCommandBuffer, resultStateCanBeTemporary: Bool) -> MPSCNNConvolutionWeightsAndBiasesState
}
struct MPSCNNConvolutionGradientOption : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.13.4, *)
  static var gradientWithData: MPSCNNConvolutionGradientOption { get }
  @available(macOS 10.13.4, *)
  static var gradientWithWeightsAndBias: MPSCNNConvolutionGradientOption { get }
  @available(macOS 10.13.4, *)
  static var gradientWithWeightsAndBias: MPSCNNConvolutionGradientOption { get }
}
@available(macOS 10.13.4, *)
class MPSCNNConvolutionGradient : MPSCNNGradientKernel {
  var sourceGradientFeatureChannels: Int { get }
  var sourceImageFeatureChannels: Int { get }
  var groups: Int { get }
  var channelMultiplier: Int { get }
  var dataSource: MPSCNNConvolutionDataSource { get }
  var gradientOption: MPSCNNConvolutionGradientOption
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  var serializeWeightsAndBiases: Bool
  init(device: MTLDevice, weights: MPSCNNConvolutionDataSource)
  func reloadWeightsAndBiasesFromDataSource()
  @available(macOS 10.13.4, *)
  func reloadWeightsAndBiases(with commandBuffer: MTLCommandBuffer, state: MPSCNNConvolutionWeightsAndBiasesState)
}
@available(macOS 10.13, *)
class MPSCNNFullyConnected : MPSCNNConvolution {
}
@available(macOS 10.13.4, *)
class MPSCNNFullyConnectedGradient : MPSCNNConvolutionGradient {
}
@available(macOS 10.13, *)
class MPSCNNConvolutionTranspose : MPSCNNKernel {
  var inputFeatureChannels: Int { get }
  var outputFeatureChannels: Int { get }
  var kernelOffsetX: Int
  var kernelOffsetY: Int
  var groups: Int { get }
  @available(macOS 10.13.4, *)
  var accumulatorPrecisionOption: MPSNNConvolutionAccumulatorPrecisionOption
  @available(macOS 10.15.0, *)
  var dataSource: MPSCNNConvolutionDataSource { get }
  init(device: MTLDevice, weights: MPSCNNConvolutionDataSource)
  @available(macOS 10.13.4, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, convolutionGradientState: MPSCNNConvolutionGradientState?) -> MPSImage
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], convolutionGradientStates convolutionGradientState: [MPSCNNConvolutionGradientState]?) -> [MPSImage]
  @available(macOS 10.13.4, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, convolutionGradientState: MPSCNNConvolutionGradientState?, destinationImage: MPSImage)
  @available(macOS 10.13.4, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], convolutionGradientStates convolutionGradientState: [MPSCNNConvolutionGradientState]?, destinationImages destinationImage: [MPSImage])
  @available(macOS 10.15.0, *)
  func reloadWeightsAndBiasesFromDataSource()
  @available(macOS 10.15.0, *)
  func reloadWeightsAndBiases(with commandBuffer: MTLCommandBuffer, state: MPSCNNConvolutionWeightsAndBiasesState)
  @available(macOS 10.15.0, *)
  func exportWeightsAndBiases(with commandBuffer: MTLCommandBuffer, resultStateCanBeTemporary: Bool) -> MPSCNNConvolutionWeightsAndBiasesState
  @available(macOS 10.15.0, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, convolutionGradientState: MPSCNNConvolutionGradientState?, destinationState outState: AutoreleasingUnsafeMutablePointer<MPSCNNConvolutionTransposeGradientState?>, destinationStateIsTemporary isTemporary: Bool) -> MPSImage
  @available(macOS 10.15.0, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], convolutionGradientStates: [MPSCNNConvolutionGradientState]?, destinationStates outStates: AutoreleasingUnsafeMutablePointer<NSArray?>, destinationStateIsTemporary isTemporary: Bool) -> [MPSImage]
}
@available(macOS 10.15, *)
class MPSCNNConvolutionTransposeGradient : MPSCNNGradientKernel {
  var sourceGradientFeatureChannels: Int { get }
  var sourceImageFeatureChannels: Int { get }
  var groups: Int { get }
  var dataSource: MPSCNNConvolutionDataSource { get }
  var gradientOption: MPSCNNConvolutionGradientOption
  init(device: MTLDevice, weights: MPSCNNConvolutionDataSource)
  func reloadWeightsAndBiasesFromDataSource()
  func reloadWeightsAndBiases(with commandBuffer: MTLCommandBuffer, state: MPSCNNConvolutionWeightsAndBiasesState)
}
@available(macOS 10.13, *)
class MPSCNNBinaryConvolution : MPSCNNKernel {
  var inputFeatureChannels: Int { get }
  var outputFeatureChannels: Int { get }
  convenience init(device: MTLDevice, convolutionData: MPSCNNConvolutionDataSource, scaleValue: Float, type: MPSCNNBinaryConvolutionType, flags: MPSCNNBinaryConvolutionFlags)
  convenience init(device: MTLDevice, convolutionData: MPSCNNConvolutionDataSource, outputBiasTerms: UnsafePointer<Float>?, outputScaleTerms: UnsafePointer<Float>?, inputBiasTerms: UnsafePointer<Float>?, inputScaleTerms: UnsafePointer<Float>?, type: MPSCNNBinaryConvolutionType, flags: MPSCNNBinaryConvolutionFlags)
}
@available(macOS 10.13, *)
class MPSCNNBinaryFullyConnected : MPSCNNBinaryConvolution {
}
@available(macOS 10.15, *)
class MPSNNGramMatrixCalculation : MPSCNNKernel {
  var alpha: Float
  init(device: MTLDevice, alpha: Float)
}
@available(macOS 10.15, *)
class MPSNNGramMatrixCalculationGradient : MPSCNNGradientKernel {
  var alpha: Float
  init(device: MTLDevice, alpha: Float)
}
@available(macOS 10.13, *)
class MPSCNNPooling : MPSCNNKernel {
  convenience init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, strideInPixelsX: Int, strideInPixelsY: Int)
}
@available(macOS 10.13, *)
class MPSCNNPoolingMax : MPSCNNPooling {
}
@available(macOS 10.13, *)
class MPSCNNPoolingAverage : MPSCNNPooling {
  var zeroPadSizeX: Int
  var zeroPadSizeY: Int
}
@available(macOS 10.13, *)
class MPSCNNPoolingL2Norm : MPSCNNPooling {
}
@available(macOS 10.13, *)
class MPSCNNDilatedPoolingMax : MPSCNNPooling {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, dilationRateX: Int, dilationRateY: Int, strideInPixelsX: Int, strideInPixelsY: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingGradient : MPSCNNGradientKernel {
  var sourceSize: MTLSize
  convenience init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int)
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, strideInPixelsX: Int, strideInPixelsY: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingAverageGradient : MPSCNNPoolingGradient {
  var zeroPadSizeX: Int
  var zeroPadSizeY: Int
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingMaxGradient : MPSCNNPoolingGradient {
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingL2NormGradient : MPSCNNPoolingGradient {
}
@available(macOS 10.13.4, *)
class MPSCNNDilatedPoolingMaxGradient : MPSCNNPoolingGradient {
  init(device: MTLDevice, kernelWidth: Int, kernelHeight: Int, dilationRateX: Int, dilationRateY: Int, strideInPixelsX: Int, strideInPixelsY: Int)
}
enum MPSCNNLossType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  @available(macOS 10.13.4, *)
  case meanAbsoluteError
  @available(macOS 10.13.4, *)
  case meanSquaredError
  @available(macOS 10.13.4, *)
  case softMaxCrossEntropy
  @available(macOS 10.13.4, *)
  case sigmoidCrossEntropy
  @available(macOS 10.13.4, *)
  case categoricalCrossEntropy
  @available(macOS 10.13.4, *)
  case hinge
  @available(macOS 10.13.4, *)
  case huber
  @available(macOS 10.13.4, *)
  case cosineDistance
  @available(macOS 10.13.4, *)
  case log
  @available(macOS 10.13.4, *)
  case kullbackLeiblerDivergence
  case count
}
enum MPSCNNReductionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  @available(macOS 10.13.4, *)
  case none
  @available(macOS 10.13.4, *)
  case sum
  @available(macOS 10.13.4, *)
  case mean
  @available(macOS 10.13.4, *)
  case sumByNonZeroWeights
  case count
}
@available(macOS 10.13.4, *)
class MPSCNNLossDataDescriptor : NSObject, NSCopying {
  var layout: MPSDataLayout { get }
  var size: MTLSize { get }
  var bytesPerRow: Int
  var bytesPerImage: Int
  /*not inherited*/ init?(data: Data, layout: MPSDataLayout, size: MTLSize)
}
@available(macOS 10.13.4, *)
class MPSCNNLossLabels : MPSState {
  convenience init(device: MTLDevice, labelsDescriptor: MPSCNNLossDataDescriptor)
  init(device: MTLDevice, lossImageSize: MTLSize, labelsDescriptor: MPSCNNLossDataDescriptor, weightsDescriptor: MPSCNNLossDataDescriptor?)
  @available(macOS 10.15.0, *)
  init(device: MTLDevice, lossImageSize: MTLSize, labelsImage: MPSImage, weightsImage: MPSImage?)
  func lossImage() -> MPSImage
  func labelsImage() -> MPSImage
  func weightsImage() -> MPSImage
}
@available(macOS 10.13.4, *)
class MPSCNNLossDescriptor : NSObject, NSCopying {
  var lossType: MPSCNNLossType
  var reductionType: MPSCNNReductionType
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool
  var weight: Float
  var labelSmoothing: Float
  var numberOfClasses: Int
  var epsilon: Float
  var delta: Float
  /*not inherited*/ init(type lossType: MPSCNNLossType, reductionType: MPSCNNReductionType)
}
@available(macOS 10.13.4, *)
class MPSCNNLoss : MPSCNNKernel {
  var lossType: MPSCNNLossType { get }
  var reductionType: MPSCNNReductionType { get }
  var weight: Float { get }
  var labelSmoothing: Float { get }
  var numberOfClasses: Int { get }
  var epsilon: Float { get }
  var delta: Float { get }
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool { get }
  init(device: MTLDevice, lossDescriptor: MPSCNNLossDescriptor)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, labels: MPSCNNLossLabels, destinationImage: MPSImage)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, labels: MPSCNNLossLabels) -> MPSImage
  func encode(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], labels: [MPSCNNLossLabels], destinationImages destinationImage: [MPSImage])
  func encode(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], labels: [MPSCNNLossLabels]) -> [MPSImage]
}
@available(macOS 10.14, *)
class MPSCNNYOLOLossDescriptor : NSObject, NSCopying {
  var xyLossDescriptor: MPSCNNLossDescriptor
  var whLossDescriptor: MPSCNNLossDescriptor
  var confidenceLossDescriptor: MPSCNNLossDescriptor
  var classesLossDescriptor: MPSCNNLossDescriptor
  var reductionType: MPSCNNReductionType
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool
  var rescore: Bool
  var scaleXY: Float
  var scaleWH: Float
  var scaleNoObject: Float
  var scaleObject: Float
  var scaleClass: Float
  var minIOUForObjectPresence: Float
  var maxIOUForObjectAbsence: Float
  var numberOfAnchorBoxes: Int
  var anchorBoxes: Data
  class func cnnLossDescriptor(withXYLossType XYLossType: MPSCNNLossType, whLossType WHLossType: MPSCNNLossType, confidenceLossType: MPSCNNLossType, classesLossType: MPSCNNLossType, reductionType: MPSCNNReductionType, anchorBoxes: Data, numberOfAnchorBoxes: Int) -> MPSCNNYOLOLossDescriptor
}
@available(macOS 10.14, *)
class MPSCNNYOLOLoss : MPSCNNKernel {
  var lossXY: MPSCNNLoss { get }
  var lossWH: MPSCNNLoss { get }
  var lossConfidence: MPSCNNLoss { get }
  var lossClasses: MPSCNNLoss { get }
  var scaleXY: Float { get }
  var scaleWH: Float { get }
  var scaleNoObject: Float { get }
  var scaleObject: Float { get }
  var scaleClass: Float { get }
  var minIOUForObjectPresence: Float { get }
  var maxIOUForObjectAbsence: Float { get }
  var reductionType: MPSCNNReductionType { get }
  var numberOfAnchorBoxes: Int { get }
  var anchorBoxes: Data { get }
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool { get }
  init(device: MTLDevice, lossDescriptor: MPSCNNYOLOLossDescriptor)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, labels: MPSCNNLossLabels, destinationImage: MPSImage)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, labels: MPSCNNLossLabels) -> MPSImage
  func encode(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], labels: [MPSCNNLossLabels], destinationImages destinationImage: [MPSImage])
  func encode(commandBuffer: MTLCommandBuffer, sourceImages sourceImage: [MPSImage], labels: [MPSCNNLossLabels]) -> [MPSImage]
}
@available(macOS 10.15.0, *)
class MPSNNForwardLoss : MPSCNNKernel {
  var lossType: MPSCNNLossType { get }
  var reductionType: MPSCNNReductionType { get }
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool { get }
  var numberOfClasses: Int { get }
  var weight: Float
  var labelSmoothing: Float
  var epsilon: Float
  var delta: Float
  init(device: MTLDevice, lossDescriptor: MPSCNNLossDescriptor)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], labels: [MPSImage], weights: [MPSImage]?, destinationStates: [MPSState]?, destinationImages: [MPSImage])
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], labels: [MPSImage], weights: [MPSImage]?, outStates: AutoreleasingUnsafeMutablePointer<NSArray?>?, isTemporary: Bool) -> [MPSImage]
}
@available(macOS 10.15.0, *)
class MPSNNLossGradient : MPSCNNBinaryKernel {
  var lossType: MPSCNNLossType { get }
  var reductionType: MPSCNNReductionType { get }
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool { get }
  var numberOfClasses: Int { get }
  var weight: Float
  var labelSmoothing: Float
  var epsilon: Float
  var delta: Float
  var computeLabelGradients: Bool
  init(device: MTLDevice, lossDescriptor: MPSCNNLossDescriptor)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], labels: [MPSImage], weights: [MPSImage]?, sourceStates: [MPSState]?) -> [MPSImage]
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], labels: [MPSImage], weights: [MPSImage]?, sourceStates: [MPSState]?, destinationGradients: [MPSImage])
}
@available(macOS 10.15, *)
class MPSNNInitialGradient : MPSCNNKernel {
}
@available(macOS 10.13.4, *)
class MPSCNNArithmeticGradientState : MPSNNBinaryGradientState {
}
@available(macOS 10.13.4, *)
class MPSCNNArithmetic : MPSCNNBinaryKernel {
  var primaryScale: Float
  var secondaryScale: Float
  var bias: Float
  var primaryStrideInFeatureChannels: Int
  var secondaryStrideInFeatureChannels: Int
  var minimumValue: Float
  var maximumValue: Float
  func encode(commandBuffer: MTLCommandBuffer, primaryImage: MPSImage, secondaryImage: MPSImage, destinationState: MPSCNNArithmeticGradientState, destinationImage: MPSImage)
  func encodeBatch(commandBuffer: MTLCommandBuffer, primaryImages: [MPSImage], secondaryImages: [MPSImage], destinationStates: [MPSCNNArithmeticGradientState], destinationImages: [MPSImage])
}
@available(macOS 10.13.4, *)
class MPSCNNAdd : MPSCNNArithmetic {
}
@available(macOS 10.13.4, *)
class MPSCNNSubtract : MPSCNNArithmetic {
}
@available(macOS 10.13.4, *)
class MPSCNNMultiply : MPSCNNArithmetic {
}
@available(macOS 10.13.4, *)
class MPSCNNDivide : MPSCNNArithmetic {
}
struct MPSNNComparisonType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.14.1, *)
  static var equal: MPSNNComparisonType { get }
  @available(macOS 10.14.1, *)
  static var notEqual: MPSNNComparisonType { get }
  @available(macOS 10.14.1, *)
  static var less: MPSNNComparisonType { get }
  @available(macOS 10.14.1, *)
  static var lessOrEqual: MPSNNComparisonType { get }
  @available(macOS 10.14.1, *)
  static var greater: MPSNNComparisonType { get }
  @available(macOS 10.14.1, *)
  static var greaterOrEqual: MPSNNComparisonType { get }
}
@available(macOS 10.14.1, *)
class MPSNNCompare : MPSCNNArithmetic {
  var comparisonType: MPSNNComparisonType
  var threshold: Float
}
@available(macOS 10.13.4, *)
class MPSCNNArithmeticGradient : MPSCNNGradientKernel {
  var primaryScale: Float
  var secondaryScale: Float
  var bias: Float
  var secondaryStrideInFeatureChannels: Int
  var minimumValue: Float
  var maximumValue: Float
  var isSecondarySourceFilter: Bool { get }
}
@available(macOS 10.13.4, *)
class MPSCNNAddGradient : MPSCNNArithmeticGradient {
}
@available(macOS 10.13.4, *)
class MPSCNNSubtractGradient : MPSCNNArithmeticGradient {
}
@available(macOS 10.13.4, *)
class MPSCNNMultiplyGradient : MPSCNNArithmeticGradient {
}
@available(macOS 10.13, *)
class MPSCNNSoftMax : MPSCNNKernel {
}
@available(macOS 10.13.4, *)
class MPSCNNSoftMaxGradient : MPSCNNGradientKernel {
}
@available(macOS 10.13, *)
class MPSCNNLogSoftMax : MPSCNNKernel {
}
@available(macOS 10.13.4, *)
class MPSCNNLogSoftMaxGradient : MPSCNNGradientKernel {
}
@available(macOS 10.13, *)
class MPSCNNUpsampling : MPSCNNKernel {
  var scaleFactorX: Double { get }
  var scaleFactorY: Double { get }
  var alignCorners: Bool { get }
}
@available(macOS 10.13, *)
class MPSCNNUpsamplingNearest : MPSCNNUpsampling {
  init(device: MTLDevice, integerScaleFactorX: Int, integerScaleFactorY: Int)
}
@available(macOS 10.13, *)
class MPSCNNUpsamplingBilinear : MPSCNNUpsampling {
  convenience init(device: MTLDevice, integerScaleFactorX: Int, integerScaleFactorY: Int)
  init(device: MTLDevice, integerScaleFactorX: Int, integerScaleFactorY: Int, alignCorners: Bool)
}
@available(macOS 10.13.4, *)
class MPSCNNUpsamplingGradient : MPSCNNGradientKernel {
  var scaleFactorX: Double { get }
  var scaleFactorY: Double { get }
}
@available(macOS 10.13.4, *)
class MPSCNNUpsamplingNearestGradient : MPSCNNUpsamplingGradient {
  init(device: MTLDevice, integerScaleFactorX: Int, integerScaleFactorY: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNUpsamplingBilinearGradient : MPSCNNUpsamplingGradient {
  init(device: MTLDevice, integerScaleFactorX: Int, integerScaleFactorY: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNNormalizationGammaAndBetaState : MPSState {
  var gamma: MTLBuffer { get }
  var beta: MTLBuffer { get }
  init(gamma: MTLBuffer, beta: MTLBuffer)
  class func temporaryState(with commandBuffer: MTLCommandBuffer, numberOfFeatureChannels: Int) -> Self
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalizationState : MPSNNGradientState {
  var batchNormalization: MPSCNNBatchNormalization { get }
  func reset()
  func gamma() -> MTLBuffer?
  func beta() -> MTLBuffer?
  func mean() -> MTLBuffer?
  func variance() -> MTLBuffer?
  func gradientForGamma() -> MTLBuffer?
  func gradientForBeta() -> MTLBuffer?
}
@available(macOS 10.14, *)
class MPSCNNNormalizationMeanAndVarianceState : MPSState {
  var mean: MTLBuffer { get }
  var variance: MTLBuffer { get }
  init(mean: MTLBuffer, variance: MTLBuffer)
  class func temporaryState(with commandBuffer: MTLCommandBuffer, numberOfFeatureChannels: Int) -> Self
}
@available(macOS 10.13.4, *)
protocol MPSCNNBatchNormalizationDataSource : NSCopying, NSObjectProtocol {
  func numberOfFeatureChannels() -> Int
  func gamma() -> UnsafeMutablePointer<Float>?
  func beta() -> UnsafeMutablePointer<Float>?
  func mean() -> UnsafeMutablePointer<Float>?
  func variance() -> UnsafeMutablePointer<Float>?
  func load() -> Bool
  func purge()
  func label() -> String?
  optional func updateGammaAndBeta(with commandBuffer: MTLCommandBuffer, batchNormalizationState: MPSCNNBatchNormalizationState) -> MPSCNNNormalizationGammaAndBetaState?
  @available(macOS 10.14, *)
  optional func updateMeanAndVariance(with commandBuffer: MTLCommandBuffer, batchNormalizationState: MPSCNNBatchNormalizationState) -> MPSCNNNormalizationMeanAndVarianceState?
  optional func updateGammaAndBeta(with batchNormalizationState: MPSCNNBatchNormalizationState) -> Bool
  @available(macOS 10.14, *)
  optional func updateMeanAndVariance(with batchNormalizationState: MPSCNNBatchNormalizationState) -> Bool
  optional func epsilon() -> Float
  optional func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  optional static var supportsSecureCoding: Bool { get }
  @available(macOS 10.14, *)
  optional func copy(with zone: NSZone? = nil, device: MTLDevice?) -> Self
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalization : MPSCNNKernel {
  var numberOfFeatureChannels: Int { get }
  var epsilon: Float
  var dataSource: MPSCNNBatchNormalizationDataSource { get }
  convenience init(device: MTLDevice, dataSource: MPSCNNBatchNormalizationDataSource)
  @available(macOS 10.14, *)
  init(device: MTLDevice, dataSource: MPSCNNBatchNormalizationDataSource, fusedNeuronDescriptor: MPSNNNeuronDescriptor?)
  func encode(to commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, batchNormalizationState: MPSCNNBatchNormalizationState, destinationImage: MPSImage)
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], batchNormalizationState: MPSCNNBatchNormalizationState, destinationImages: [MPSImage])
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  func reloadDataSource(_ dataSource: MPSCNNBatchNormalizationDataSource)
  @available(macOS 10.14, *)
  func reloadGammaAndBetaFromDataSource()
  @available(macOS 10.14, *)
  func reloadMeanAndVarianceFromDataSource()
  func reloadGammaAndBeta(with commandBuffer: MTLCommandBuffer, gammaAndBetaState: MPSCNNNormalizationGammaAndBetaState)
  @available(macOS 10.14, *)
  func reloadMeanAndVariance(with commandBuffer: MTLCommandBuffer, meanAndVarianceState: MPSCNNNormalizationMeanAndVarianceState)
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalizationStatistics : MPSCNNKernel {
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], batchNormalizationState: MPSCNNBatchNormalizationState)
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalizationGradient : MPSCNNGradientKernel {
  @available(macOS 10.14, *)
  init(device: MTLDevice, fusedNeuronDescriptor: MPSNNNeuronDescriptor?)
  func encode(to commandBuffer: MTLCommandBuffer, sourceGradient: MPSImage, sourceImage: MPSImage, batchNormalizationState: MPSCNNBatchNormalizationState, destinationGradient: MPSImage)
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], batchNormalizationState: MPSCNNBatchNormalizationState, destinationGradients: [MPSImage])
  func encode(to commandBuffer: MTLCommandBuffer, sourceGradient: MPSImage, sourceImage: MPSImage, batchNormalizationState: MPSCNNBatchNormalizationState) -> MPSImage
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], batchNormalizationState: MPSCNNBatchNormalizationState) -> [MPSImage]
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalizationStatisticsGradient : MPSCNNGradientKernel {
  @available(macOS 10.14, *)
  init(device: MTLDevice, fusedNeuronDescriptor: MPSNNNeuronDescriptor?)
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceGradients: [MPSImage], sourceImages: [MPSImage], batchNormalizationState: MPSCNNBatchNormalizationState)
}
@available(macOS 10.13.4, *)
class MPSCNNInstanceNormalizationGradientState : MPSNNGradientState {
  var instanceNormalization: MPSCNNInstanceNormalization { get }
  var gamma: MTLBuffer? { get }
  var beta: MTLBuffer? { get }
  var gradientForGamma: MTLBuffer { get }
  var gradientForBeta: MTLBuffer { get }
}
@available(macOS 10.13.4, *)
protocol MPSCNNInstanceNormalizationDataSource : NSCopying, NSObjectProtocol {
  func gamma() -> UnsafeMutablePointer<Float>?
  func beta() -> UnsafeMutablePointer<Float>?
  var numberOfFeatureChannels: Int { get }
  func label() -> String?
  optional func updateGammaAndBeta(with commandBuffer: MTLCommandBuffer, instanceNormalizationStateBatch: [MPSCNNInstanceNormalizationGradientState]) -> MPSCNNNormalizationGammaAndBetaState?
  optional func updateGammaAndBeta(withInstanceNormalizationStateBatch instanceNormalizationStateBatch: [MPSCNNInstanceNormalizationGradientState]) -> Bool
  optional func epsilon() -> Float
  optional func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  optional static var supportsSecureCoding: Bool { get }
  @available(macOS 10.14, *)
  optional func copy(with zone: NSZone? = nil, device: MTLDevice?) -> Self
  @available(macOS 10.15, *)
  optional func load() -> Bool
  @available(macOS 10.15, *)
  optional func purge()
}
@available(macOS 10.13.4, *)
class MPSCNNInstanceNormalization : MPSCNNKernel {
  var epsilon: Float
  var dataSource: MPSCNNInstanceNormalizationDataSource { get }
  init(device: MTLDevice, dataSource: MPSCNNInstanceNormalizationDataSource)
  @available(macOS, introduced: 10.13.4, deprecated: 10.14)
  func reloadDataSource(_ dataSource: MPSCNNInstanceNormalizationDataSource)
  @available(macOS 10.14, *)
  func reloadGammaAndBetaFromDataSource()
  func reloadGammaAndBeta(with commandBuffer: MTLCommandBuffer, gammaAndBetaState: MPSCNNNormalizationGammaAndBetaState)
}
@available(macOS 10.13.4, *)
class MPSCNNInstanceNormalizationGradient : MPSCNNGradientKernel {
}
@available(macOS 10.15, *)
class MPSCNNGroupNormalizationGradientState : MPSNNGradientState {
  var groupNormalization: MPSCNNGroupNormalization { get }
  var gamma: MTLBuffer? { get }
  var beta: MTLBuffer? { get }
  var gradientForGamma: MTLBuffer { get }
  var gradientForBeta: MTLBuffer { get }
}
@available(macOS 10.15, *)
protocol MPSCNNGroupNormalizationDataSource : NSCopying, NSObjectProtocol {
  func gamma() -> UnsafeMutablePointer<Float>?
  func beta() -> UnsafeMutablePointer<Float>?
  var numberOfFeatureChannels: Int { get }
  var numberOfGroups: Int { get set }
  func label() -> String?
  optional func updateGammaAndBeta(with commandBuffer: MTLCommandBuffer, groupNormalizationStateBatch: [MPSCNNGroupNormalizationGradientState]) -> MPSCNNNormalizationGammaAndBetaState?
  optional func updateGammaAndBeta(withGroupNormalizationStateBatch groupNormalizationStateBatch: [MPSCNNGroupNormalizationGradientState]) -> Bool
  optional func epsilon() -> Float
  optional func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  optional static var supportsSecureCoding: Bool { get }
  optional func copy(with zone: NSZone? = nil, device: MTLDevice?) -> Self
}
@available(macOS 10.15, *)
class MPSCNNGroupNormalization : MPSCNNKernel {
  var epsilon: Float
  var dataSource: MPSCNNGroupNormalizationDataSource { get }
  init(device: MTLDevice, dataSource: MPSCNNGroupNormalizationDataSource)
  func reloadGammaAndBetaFromDataSource()
  func reloadGammaAndBeta(with commandBuffer: MTLCommandBuffer, gammaAndBetaState: MPSCNNNormalizationGammaAndBetaState)
}
@available(macOS 10.15, *)
class MPSCNNGroupNormalizationGradient : MPSCNNGradientKernel {
}
@available(macOS 10.13.4, *)
class MPSCNNDropoutGradientState : MPSNNGradientState {
  func maskData() -> Data
}
@available(macOS 10.13.4, *)
class MPSCNNDropout : MPSCNNKernel {
  var keepProbability: Float { get }
  var seed: Int { get }
  var maskStrideInPixels: MTLSize { get }
  init(device: MTLDevice, keepProbability: Float, seed: Int, maskStrideInPixels: MTLSize)
}
@available(macOS 10.13.4, *)
class MPSCNNDropoutGradient : MPSCNNGradientKernel {
  var keepProbability: Float { get }
  var seed: Int { get }
  var maskStrideInPixels: MTLSize { get }
  init(device: MTLDevice, keepProbability: Float, seed: Int, maskStrideInPixels: MTLSize)
}
enum MPSRNNSequenceDirection : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case forward
  @available(macOS 10.13, *)
  case backward
}
enum MPSRNNBidirectionalCombineMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.13, *)
  case none
  @available(macOS 10.13, *)
  case add
  @available(macOS 10.13, *)
  case concatenate
}
@available(macOS 10.13, *)
class MPSRNNDescriptor : NSObject {
  var inputFeatureChannels: Int
  var outputFeatureChannels: Int
  var useLayerInputUnitTransformMode: Bool
  var useFloat32Weights: Bool
  var layerSequenceDirection: MPSRNNSequenceDirection
}
@available(macOS 10.13, *)
class MPSRNNSingleGateDescriptor : MPSRNNDescriptor {
  var inputWeights: MPSCNNConvolutionDataSource?
  var recurrentWeights: MPSCNNConvolutionDataSource?
  @available(macOS 10.13, *)
  class func createRNNSingleGateDescriptor(withInputFeatureChannels inputFeatureChannels: Int, outputFeatureChannels: Int) -> Self
}
@available(macOS 10.13, *)
class MPSGRUDescriptor : MPSRNNDescriptor {
  var inputGateInputWeights: MPSCNNConvolutionDataSource?
  var inputGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var recurrentGateInputWeights: MPSCNNConvolutionDataSource?
  var recurrentGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var outputGateInputWeights: MPSCNNConvolutionDataSource?
  var outputGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var outputGateInputGateWeights: MPSCNNConvolutionDataSource?
  var gatePnormValue: Float
  var flipOutputGates: Bool
  @available(macOS 10.13, *)
  class func createGRUDescriptor(withInputFeatureChannels inputFeatureChannels: Int, outputFeatureChannels: Int) -> Self
}
@available(macOS 10.13, *)
class MPSLSTMDescriptor : MPSRNNDescriptor {
  var memoryWeightsAreDiagonal: Bool
  var inputGateInputWeights: MPSCNNConvolutionDataSource?
  var inputGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var inputGateMemoryWeights: MPSCNNConvolutionDataSource?
  var forgetGateInputWeights: MPSCNNConvolutionDataSource?
  var forgetGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var forgetGateMemoryWeights: MPSCNNConvolutionDataSource?
  var outputGateInputWeights: MPSCNNConvolutionDataSource?
  var outputGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var outputGateMemoryWeights: MPSCNNConvolutionDataSource?
  var cellGateInputWeights: MPSCNNConvolutionDataSource?
  var cellGateRecurrentWeights: MPSCNNConvolutionDataSource?
  var cellGateMemoryWeights: MPSCNNConvolutionDataSource?
  var cellToOutputNeuronType: MPSCNNNeuronType
  var cellToOutputNeuronParamA: Float
  var cellToOutputNeuronParamB: Float
  var cellToOutputNeuronParamC: Float
  @available(macOS 10.13, *)
  class func createLSTMDescriptor(withInputFeatureChannels inputFeatureChannels: Int, outputFeatureChannels: Int) -> Self
}
@available(macOS 10.13, *)
class MPSRNNRecurrentImageState : MPSState {
  func getRecurrentOutputImage(forLayerIndex layerIndex: Int) -> MPSImage?
  func getMemoryCellImage(forLayerIndex layerIndex: Int) -> MPSImage?
}
@available(macOS 10.13, *)
class MPSRNNImageInferenceLayer : MPSCNNKernel {
  var inputFeatureChannels: Int { get }
  var outputFeatureChannels: Int { get }
  var numberOfLayers: Int { get }
  var recurrentOutputIsTemporary: Bool
  var storeAllIntermediateStates: Bool
  var bidirectionalCombineMode: MPSRNNBidirectionalCombineMode
  @available(macOS 10.13, *)
  init(device: MTLDevice, rnnDescriptor: MPSRNNDescriptor)
  @available(macOS 10.13, *)
  init(device: MTLDevice, rnnDescriptors: [MPSRNNDescriptor])
  func encodeSequence(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationImages: [MPSImage], recurrentInputState: MPSRNNRecurrentImageState?, recurrentOutputStates: NSMutableArray?)
  func encodeBidirectionalSequence(commandBuffer: MTLCommandBuffer, sourceSequence: [MPSImage], destinationForwardImages: [MPSImage], destinationBackwardImages: [MPSImage]?)
}
@available(macOS 10.13, *)
class MPSRNNRecurrentMatrixState : MPSState {
  func getRecurrentOutputMatrix(forLayerIndex layerIndex: Int) -> MPSMatrix?
  func getMemoryCellMatrix(forLayerIndex layerIndex: Int) -> MPSMatrix?
}
@available(macOS 10.13, *)
class MPSRNNMatrixInferenceLayer : MPSKernel {
  var inputFeatureChannels: Int { get }
  var outputFeatureChannels: Int { get }
  var numberOfLayers: Int { get }
  var recurrentOutputIsTemporary: Bool
  var storeAllIntermediateStates: Bool
  var bidirectionalCombineMode: MPSRNNBidirectionalCombineMode
  @available(macOS 10.13, *)
  init(device: MTLDevice, rnnDescriptor: MPSRNNDescriptor)
  @available(macOS 10.13, *)
  init(device: MTLDevice, rnnDescriptors: [MPSRNNDescriptor])
  @available(macOS 10.14, *)
  func encodeSequence(commandBuffer: MTLCommandBuffer, sourceMatrices: [MPSMatrix], sourceOffsets: UnsafeMutablePointer<Int>?, destinationMatrices: [MPSMatrix], destinationOffsets: UnsafeMutablePointer<Int>?, recurrentInputState: MPSRNNRecurrentMatrixState?, recurrentOutputStates: NSMutableArray?)
  func encodeSequence(commandBuffer: MTLCommandBuffer, sourceMatrices: [MPSMatrix], destinationMatrices: [MPSMatrix], recurrentInputState: MPSRNNRecurrentMatrixState?, recurrentOutputStates: NSMutableArray?)
  func encodeBidirectionalSequence(commandBuffer: MTLCommandBuffer, sourceSequence: [MPSMatrix], destinationForwardMatrices: [MPSMatrix], destinationBackwardMatrices: [MPSMatrix]?)
}
@available(macOS 10.14, *)
class MPSRNNMatrixTrainingState : MPSState {
}
enum MPSRNNMatrixId : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.14, *)
  case SingleGateInputWeights
  @available(macOS 10.14, *)
  case singleGateRecurrentWeights
  @available(macOS 10.14, *)
  case singleGateBiasTerms
  @available(macOS 10.14, *)
  case lstmInputGateInputWeights
  @available(macOS 10.14, *)
  case lstmInputGateRecurrentWeights
  @available(macOS 10.14, *)
  case lstmInputGateMemoryWeights
  @available(macOS 10.14, *)
  case lstmInputGateBiasTerms
  @available(macOS 10.14, *)
  case lstmForgetGateInputWeights
  @available(macOS 10.14, *)
  case lstmForgetGateRecurrentWeights
  @available(macOS 10.14, *)
  case lstmForgetGateMemoryWeights
  @available(macOS 10.14, *)
  case lstmForgetGateBiasTerms
  @available(macOS 10.14, *)
  case lstmMemoryGateInputWeights
  @available(macOS 10.14, *)
  case lstmMemoryGateRecurrentWeights
  @available(macOS 10.14, *)
  case lstmMemoryGateMemoryWeights
  @available(macOS 10.14, *)
  case lstmMemoryGateBiasTerms
  @available(macOS 10.14, *)
  case lstmOutputGateInputWeights
  @available(macOS 10.14, *)
  case lstmOutputGateRecurrentWeights
  @available(macOS 10.14, *)
  case lstmOutputGateMemoryWeights
  @available(macOS 10.14, *)
  case lstmOutputGateBiasTerms
  @available(macOS 10.14, *)
  case gruInputGateInputWeights
  @available(macOS 10.14, *)
  case gruInputGateRecurrentWeights
  @available(macOS 10.14, *)
  case gruInputGateBiasTerms
  @available(macOS 10.14, *)
  case gruRecurrentGateInputWeights
  @available(macOS 10.14, *)
  case gruRecurrentGateRecurrentWeights
  @available(macOS 10.14, *)
  case gruRecurrentGateBiasTerms
  @available(macOS 10.14, *)
  case gruOutputGateInputWeights
  @available(macOS 10.14, *)
  case gruOutputGateRecurrentWeights
  @available(macOS 10.14, *)
  case gruOutputGateInputGateWeights
  @available(macOS 10.14, *)
  case gruOutputGateBiasTerms
  case _count
}
@available(macOS 10.14, *)
class MPSRNNMatrixTrainingLayer : MPSKernel {
  var inputFeatureChannels: Int { get }
  var outputFeatureChannels: Int { get }
  var storeAllIntermediateStates: Bool
  var recurrentOutputIsTemporary: Bool
  var trainingStateIsTemporary: Bool
  var accumulateWeightGradients: Bool
  @available(macOS 10.14, *)
  init(device: MTLDevice, rnnDescriptor: MPSRNNDescriptor, trainableWeights: NSMutableArray)
  @available(macOS 10.14, *)
  func createWeightGradientMatrices(_ matricesOut: NSMutableArray, dataType: MPSDataType)
  @available(macOS 10.14, *)
  func createTemporaryWeightGradientMatrices(_ matricesOut: NSMutableArray, dataType: MPSDataType, commandBuffer: MTLCommandBuffer)
  @available(macOS 10.14, *)
  func createWeightMatrices(_ matricesOut: NSMutableArray)
  func encodeCopyWeights(commandBuffer: MTLCommandBuffer, weights: [MPSMatrix], matrixId: MPSRNNMatrixId, matrix: MPSMatrix, copyFromWeightsToMatrix: Bool, matrixOffset: MTLOrigin)
  func encodeForwardSequence(commandBuffer: MTLCommandBuffer, sourceMatrices: [MPSMatrix], sourceOffsets: UnsafeMutablePointer<Int>?, destinationMatrices: [MPSMatrix], destinationOffsets: UnsafeMutablePointer<Int>?, trainingStates: NSMutableArray, recurrentInputState: MPSRNNRecurrentMatrixState?, recurrentOutputStates: NSMutableArray?, weights: [MPSMatrix])
  func encodeForwardSequence(commandBuffer: MTLCommandBuffer, sourceMatrices: [MPSMatrix], destinationMatrices: [MPSMatrix], trainingStates: NSMutableArray, weights: [MPSMatrix])
  func encodeGradientSequence(commandBuffer: MTLCommandBuffer, forwardSources: [MPSMatrix], forwardSourceOffsets: UnsafeMutablePointer<Int>?, sourceGradients: [MPSMatrix], sourceOffsets sourceGradientOffsets: UnsafeMutablePointer<Int>?, destinationGradients: [MPSMatrix]?, destinationOffsets: UnsafeMutablePointer<Int>?, weightGradients: [MPSMatrix]?, trainingStates: [MPSRNNMatrixTrainingState], recurrentInputState: MPSRNNRecurrentMatrixState?, recurrentOutputStates: NSMutableArray?, weights: [MPSMatrix])
  func encodeGradientSequence(commandBuffer: MTLCommandBuffer, forwardSources: [MPSMatrix], sourceGradients: [MPSMatrix], destinationGradients: [MPSMatrix]?, weightGradients: [MPSMatrix]?, trainingStates: [MPSRNNMatrixTrainingState], weights: [MPSMatrix])
}
@available(macOS 10.13, *)
class MPSMatrixNeuron : MPSMatrixUnaryKernel {
  var sourceNumberOfFeatureVectors: Int
  var sourceInputFeatureChannels: Int
  var alpha: Double
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float, parameterC: Float)
  func neuronType() -> MPSCNNNeuronType
  func neuronParameterA() -> Float
  func neuronParameterB() -> Float
  func neuronParameterC() -> Float
  func setNeuronToPReLUWithParametersA(_ A: Data)
  func encode(commandBuffer: MTLCommandBuffer, inputMatrix: MPSMatrix, biasVector: MPSVector?, resultMatrix: MPSMatrix)
}
@available(macOS 10.14, *)
class MPSMatrixNeuronGradient : MPSMatrixBinaryKernel {
  var sourceNumberOfFeatureVectors: Int
  var sourceInputFeatureChannels: Int
  var alpha: Double
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float, parameterC: Float)
  func neuronType() -> MPSCNNNeuronType
  func neuronParameterA() -> Float
  func neuronParameterB() -> Float
  func neuronParameterC() -> Float
  func setNeuronToPReLUWithParametersA(_ A: Data)
  func encode(to commandBuffer: MTLCommandBuffer, gradientMatrix: MPSMatrix, inputMatrix: MPSMatrix, biasVector: MPSVector?, resultGradientForDataMatrix: MPSMatrix, resultGradientForBiasVector: MPSVector?)
}
@available(macOS 10.13, *)
class MPSMatrixFullyConnected : MPSMatrixBinaryKernel {
  var sourceNumberOfFeatureVectors: Int
  var sourceInputFeatureChannels: Int
  var sourceOutputFeatureChannels: Int
  var alpha: Double
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float, parameterC: Float)
  func neuronType() -> MPSCNNNeuronType
  func neuronParameterA() -> Float
  func neuronParameterB() -> Float
  func neuronParameterC() -> Float
  func encode(commandBuffer: MTLCommandBuffer, inputMatrix: MPSMatrix, weightMatrix: MPSMatrix, biasVector: MPSVector?, resultMatrix: MPSMatrix)
}
@available(macOS 10.14, *)
class MPSMatrixFullyConnectedGradient : MPSMatrixBinaryKernel {
  var sourceNumberOfFeatureVectors: Int
  var sourceOutputFeatureChannels: Int
  var sourceInputFeatureChannels: Int
  var alpha: Double
  func encodeForData(to commandBuffer: MTLCommandBuffer, gradientMatrix: MPSMatrix, weightMatrix: MPSMatrix, resultGradientForDataMatrix: MPSMatrix)
  func encodeForWeightsAndBias(to commandBuffer: MTLCommandBuffer, gradientMatrix: MPSMatrix, inputMatrix: MPSMatrix, resultGradientForWeightMatrix: MPSMatrix, resultGradientForBiasVector: MPSVector?)
}
@available(macOS 10.13, *)
class MPSMatrixSum : MPSKernel {
  init(device: MTLDevice, count: Int, rows: Int, columns: Int, transpose: Bool)
  var rows: Int { get }
  var columns: Int { get }
  var count: Int { get }
  var transpose: Bool { get }
  var resultMatrixOrigin: MTLOrigin
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float, parameterC: Float)
  func neuronType() -> MPSCNNNeuronType
  var neuronParameterA: Float { get }
  var neuronParameterB: Float { get }
  var neuronParameterC: Float { get }
  func encode(to buffer: MTLCommandBuffer, sourceMatrices: [MPSMatrix], resultMatrix: MPSMatrix, scale scaleVector: MPSVector?, offsetVector: MPSVector?, biasVector: MPSVector?, start startIndex: Int)
}
@available(macOS 10.14, *)
class MPSMatrixBatchNormalization : MPSMatrixUnaryKernel {
  var sourceNumberOfFeatureVectors: Int
  var sourceInputFeatureChannels: Int
  var epsilon: Float
  var computeStatistics: Bool
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float, parameterC: Float)
  func neuronType() -> MPSCNNNeuronType
  func neuronParameterA() -> Float
  func neuronParameterB() -> Float
  func neuronParameterC() -> Float
  func encode(commandBuffer: MTLCommandBuffer, inputMatrix: MPSMatrix, meanVector: MPSVector, varianceVector: MPSVector, gammaVector: MPSVector?, betaVector: MPSVector?, resultMatrix: MPSMatrix)
}
@available(macOS 10.14, *)
class MPSMatrixBatchNormalizationGradient : MPSMatrixBinaryKernel {
  var sourceNumberOfFeatureVectors: Int
  var sourceInputFeatureChannels: Int
  var epsilon: Float
  func setNeuronType(_ neuronType: MPSCNNNeuronType, parameterA: Float, parameterB: Float, parameterC: Float)
  func neuronType() -> MPSCNNNeuronType
  func neuronParameterA() -> Float
  func neuronParameterB() -> Float
  func neuronParameterC() -> Float
  func encode(to commandBuffer: MTLCommandBuffer, gradientMatrix: MPSMatrix, inputMatrix: MPSMatrix, mean meanVector: MPSVector, varianceVector: MPSVector, gammaVector: MPSVector?, betaVector: MPSVector?, resultGradientForDataMatrix: MPSMatrix, resultGradientForGammaVector: MPSVector?, resultGradientForBetaVector: MPSVector?)
}
@available(macOS 10.15, *)
class MPSNNGridSample : MPSCNNBinaryKernel {
  var useGridValueAsInputCoordinate: Bool
}
@available(macOS 10.14, *)
enum MPSNNRegularizationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 10.14, *)
  case None
  @available(macOS 10.14, *)
  case L1
  @available(macOS 10.14, *)
  case L2
}
@available(macOS 10.14, *)
class MPSNNOptimizerDescriptor : NSObject {
  var learningRate: Float
  var gradientRescale: Float
  var applyGradientClipping: Bool
  var gradientClipMax: Float
  var gradientClipMin: Float
  var regularizationScale: Float
  var regularizationType: MPSNNRegularizationType
  init(learningRate: Float, gradientRescale: Float, regularizationType: MPSNNRegularizationType, regularizationScale: Float)
  init(learningRate: Float, gradientRescale: Float, applyGradientClipping: Bool, gradientClipMax: Float, gradientClipMin: Float, regularizationType: MPSNNRegularizationType, regularizationScale: Float)
}
@available(macOS 10.14, *)
class MPSNNOptimizer : MPSKernel {
  var learningRate: Float { get }
  var gradientRescale: Float { get }
  var applyGradientClipping: Bool
  var gradientClipMax: Float { get }
  var gradientClipMin: Float { get }
  var regularizationScale: Float { get }
  var regularizationType: MPSNNRegularizationType { get }
  func setLearningRate(_ newLearningRate: Float)
}
@available(macOS 10.14, *)
class MPSNNOptimizerStochasticGradientDescent : MPSNNOptimizer {
  var momentumScale: Float { get }
  @available(macOS 11.0, *)
  var useNesterovMomentum: Bool { get }
  var useNestrovMomentum: Bool { get }
  init(device: MTLDevice, learningRate: Float)
  @available(macOS 11.0, *)
  init(device: MTLDevice, momentumScale: Float, useNesterovMomentum: Bool, optimizerDescriptor: MPSNNOptimizerDescriptor)
  init(device: MTLDevice, momentumScale: Float, useNestrovMomentum: Bool, optimizerDescriptor: MPSNNOptimizerDescriptor)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientVector: MPSVector, inputValuesVector: MPSVector, inputMomentumVector: MPSVector?, resultValuesVector: MPSVector)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientMatrix: MPSMatrix, inputValuesMatrix: MPSMatrix, inputMomentumMatrix: MPSMatrix?, resultValuesMatrix: MPSMatrix)
  func encode(commandBuffer: MTLCommandBuffer, convolutionGradientState: MPSCNNConvolutionGradientState, convolutionSourceState: MPSCNNConvolutionWeightsAndBiasesState, inputMomentumVectors: [MPSVector]?, resultState: MPSCNNConvolutionWeightsAndBiasesState)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationState: MPSCNNBatchNormalizationState, inputMomentumVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationGradientState: MPSCNNBatchNormalizationState, batchNormalizationSourceState: MPSCNNBatchNormalizationState, inputMomentumVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
}
@available(macOS 10.14, *)
class MPSNNOptimizerRMSProp : MPSNNOptimizer {
  var decay: Double { get }
  var epsilon: Float { get }
  init(device: MTLDevice, learningRate: Float)
  init(device: MTLDevice, decay: Double, epsilon: Float, optimizerDescriptor: MPSNNOptimizerDescriptor)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientVector: MPSVector, inputValuesVector: MPSVector, inputSumOfSquaresVector: MPSVector, resultValuesVector: MPSVector)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientMatrix: MPSMatrix, inputValuesMatrix: MPSMatrix, inputSumOfSquaresMatrix: MPSMatrix, resultValuesMatrix: MPSMatrix)
  func encode(commandBuffer: MTLCommandBuffer, convolutionGradientState: MPSCNNConvolutionGradientState, convolutionSourceState: MPSCNNConvolutionWeightsAndBiasesState, inputSumOfSquaresVectors: [MPSVector]?, resultState: MPSCNNConvolutionWeightsAndBiasesState)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationState: MPSCNNBatchNormalizationState, inputSumOfSquaresVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationGradientState: MPSCNNBatchNormalizationState, batchNormalizationSourceState: MPSCNNBatchNormalizationState, inputSumOfSquaresVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
}
@available(macOS 10.14, *)
class MPSNNOptimizerAdam : MPSNNOptimizer {
  var beta1: Double { get }
  var beta2: Double { get }
  var epsilon: Float { get }
  var timeStep: Int
  init(device: MTLDevice, learningRate: Float)
  init(device: MTLDevice, beta1: Double, beta2: Double, epsilon: Float, timeStep: Int, optimizerDescriptor: MPSNNOptimizerDescriptor)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientVector: MPSVector, inputValuesVector: MPSVector, inputMomentumVector: MPSVector, inputVelocityVector: MPSVector, resultValuesVector: MPSVector)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientMatrix: MPSMatrix, inputValuesMatrix: MPSMatrix, inputMomentumMatrix: MPSMatrix, inputVelocityMatrix: MPSMatrix, resultValuesMatrix: MPSMatrix)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientVector: MPSVector, inputValuesVector: MPSVector, inputMomentumVector: MPSVector, inputVelocityVector: MPSVector, maximumVelocityVector: MPSVector?, resultValuesVector: MPSVector)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, inputGradientMatrix: MPSMatrix, inputValuesMatrix: MPSMatrix, inputMomentumMatrix: MPSMatrix, inputVelocityMatrix: MPSMatrix, maximumVelocityMatrix: MPSMatrix?, resultValuesMatrix: MPSMatrix)
  func encode(commandBuffer: MTLCommandBuffer, convolutionGradientState: MPSCNNConvolutionGradientState, convolutionSourceState: MPSCNNConvolutionWeightsAndBiasesState, inputMomentumVectors: [MPSVector]?, inputVelocityVectors: [MPSVector]?, resultState: MPSCNNConvolutionWeightsAndBiasesState)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, convolutionGradientState: MPSCNNConvolutionGradientState, convolutionSourceState: MPSCNNConvolutionWeightsAndBiasesState, inputMomentumVectors: [MPSVector], inputVelocityVectors: [MPSVector], maximumVelocityVectors: [MPSVector]?, resultState: MPSCNNConvolutionWeightsAndBiasesState)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationState: MPSCNNBatchNormalizationState, inputMomentumVectors: [MPSVector]?, inputVelocityVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationState: MPSCNNBatchNormalizationState, inputMomentumVectors: [MPSVector], inputVelocityVectors: [MPSVector], maximumVelocityVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationGradientState: MPSCNNBatchNormalizationState, batchNormalizationSourceState: MPSCNNBatchNormalizationState, inputMomentumVectors: [MPSVector]?, inputVelocityVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
  @available(macOS 10.15, *)
  func encode(commandBuffer: MTLCommandBuffer, batchNormalizationGradientState: MPSCNNBatchNormalizationState, batchNormalizationSourceState: MPSCNNBatchNormalizationState, inputMomentumVectors: [MPSVector], inputVelocityVectors: [MPSVector], maximumVelocityVectors: [MPSVector]?, resultState: MPSCNNNormalizationGammaAndBetaState)
}
@available(macOS 10.13.4, *)
class MPSNNReduceUnary : MPSCNNKernel {
  var clipRectSource: MTLRegion
}
@available(macOS 10.13.4, *)
class MPSNNReduceRowMin : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceColumnMin : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceFeatureChannelsMin : MPSNNReduceUnary {
}
@available(macOS 10.14, *)
class MPSNNReduceFeatureChannelsArgumentMin : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceRowMax : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceColumnMax : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceFeatureChannelsMax : MPSNNReduceUnary {
}
@available(macOS 10.14, *)
class MPSNNReduceFeatureChannelsArgumentMax : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceRowMean : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceColumnMean : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceFeatureChannelsMean : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceRowSum : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceColumnSum : MPSNNReduceUnary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceFeatureChannelsSum : MPSNNReduceUnary {
  var weight: Float
}
@available(macOS 10.13.4, *)
class MPSNNReduceBinary : MPSCNNBinaryKernel {
  var primarySourceClipRect: MTLRegion
  var secondarySourceClipRect: MTLRegion
}
@available(macOS 10.13.4, *)
class MPSNNReduceFeatureChannelsAndWeightsMean : MPSNNReduceBinary {
}
@available(macOS 10.13.4, *)
class MPSNNReduceFeatureChannelsAndWeightsSum : MPSNNReduceBinary {
  var doWeightedSumByNonZeroWeights: Bool { get }
  init(device: MTLDevice, doWeightedSumByNonZeroWeights: Bool)
}
@available(macOS 10.15.0, *)
class MPSNNLocalCorrelation : MPSNNReduceBinary {
  var windowInX: Int
  var windowInY: Int
  var strideInX: Int
  var strideInY: Int
  init(device: MTLDevice, windowInX: Int, windowInY: Int, strideInX: Int, strideInY: Int)
}
@available(macOS 10.13.4, *)
class MPSNNReshape : MPSCNNKernel {
  @available(macOS 11.0, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, reshapedWidth: Int, reshapedHeight: Int, reshapedFeatureChannels: Int) -> MPSImage
  @available(macOS 11.0, *)
  func encode(commandBuffer: MTLCommandBuffer, sourceImage: MPSImage, destinationState outState: AutoreleasingUnsafeMutablePointer<MPSState?>, destinationStateIsTemporary isTemporary: Bool, reshapedWidth: Int, reshapedHeight: Int, reshapedFeatureChannels: Int) -> MPSImage
  @available(macOS 11.0, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], reshapedWidth: Int, reshapedHeight: Int, reshapedFeatureChannels: Int) -> [MPSImage]
  @available(macOS 11.0, *)
  func encodeBatch(commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], destinationStates outStates: AutoreleasingUnsafeMutablePointer<NSArray?>, destinationStateIsTemporary isTemporary: Bool, reshapedWidth: Int, reshapedHeight: Int, reshapedFeatureChannels: Int) -> [MPSImage]
}
@available(macOS 10.14.1, *)
class MPSNNReshapeGradient : MPSCNNGradientKernel {
}
@available(macOS 10.14.1, *)
class MPSNNPad : MPSCNNKernel {
  var paddingSizeBefore: MPSImageCoordinate
  var paddingSizeAfter: MPSImageCoordinate
  var fillValue: Float
  convenience init(device: MTLDevice, paddingSizeBefore: MPSImageCoordinate, paddingSizeAfter: MPSImageCoordinate)
  init(device: MTLDevice, paddingSizeBefore: MPSImageCoordinate, paddingSizeAfter: MPSImageCoordinate, fillValueArray: Data?)
}
@available(macOS 10.14.1, *)
class MPSNNPadGradient : MPSCNNGradientKernel {
}
@available(macOS 10.14, *)
class MPSNNResizeBilinear : MPSCNNKernel {
  var resizeWidth: Int { get }
  var resizeHeight: Int { get }
  var alignCorners: Bool { get }
  init(device: MTLDevice, resizeWidth: Int, resizeHeight: Int, alignCorners: Bool)
}
@available(macOS 10.14, *)
class MPSNNCropAndResizeBilinear : MPSCNNKernel {
  var resizeWidth: Int { get }
  var resizeHeight: Int { get }
  var numberOfRegions: Int { get }
  var regions: UnsafePointer<MPSRegion> { get }
  init(device: MTLDevice, resizeWidth: Int, resizeHeight: Int, numberOfRegions: Int, regions: UnsafePointer<MPSRegion>)
}
@available(macOS 10.13.4, *)
class MPSNNSlice : MPSCNNKernel {
}
protocol MPSHandle : NSSecureCoding, NSObjectProtocol {
  func label() -> String?
}
protocol MPSNNTrainableNode : NSObjectProtocol {
  var trainingStyle: MPSNNTrainingStyle { get set }
}
@available(macOS 10.13, *)
class MPSNNImageNode : NSObject {
  init(handle: MPSHandle?)
  class func exportedNode(with handle: MPSHandle?) -> Self
  var handle: MPSHandle?
  var format: MPSImageFeatureChannelFormat
  var imageAllocator: MPSImageAllocator
  var exportFromGraph: Bool
  @available(macOS 10.13.4, *)
  var synchronizeResource: Bool
  @available(macOS 10.14, *)
  var stopGradient: Bool
}
@available(macOS 10.13, *)
class MPSNNStateNode : NSObject {
  var handle: MPSHandle?
  var exportFromGraph: Bool
  @available(macOS 10.13.4, *)
  var synchronizeResource: Bool
}
@available(macOS 10.13.4, *)
class MPSNNGradientStateNode : MPSNNStateNode {
}
@available(macOS 10.13.4, *)
class MPSCNNConvolutionGradientStateNode : MPSNNGradientStateNode {
}
@available(macOS 10.15, *)
class MPSCNNConvolutionTransposeGradientStateNode : MPSCNNConvolutionGradientStateNode {
}
@available(macOS 10.13.4, *)
class MPSNNBinaryGradientStateNode : MPSNNStateNode {
}
@available(macOS 10.15, *)
class MPSNNMultiaryGradientStateNode : MPSNNStateNode {
}
@available(macOS 10.13.4, *)
class MPSNNArithmeticGradientStateNode : MPSNNBinaryGradientStateNode {
}
typealias MPSGradientNodeBlock = (MPSNNFilterNode, MPSNNFilterNode, MPSNNImageNode, MPSNNImageNode) -> Void
@available(macOS 10.13, *)
class MPSNNFilterNode : NSObject {
  var resultImage: MPSNNImageNode { get }
  var resultState: MPSNNStateNode? { get }
  var resultStates: [MPSNNStateNode]? { get }
  var paddingPolicy: MPSNNPadding
  var label: String?
  func gradientFilter(withSource gradientImage: MPSNNImageNode) -> MPSNNGradientFilterNode
  func gradientFilter(withSources gradientImages: [MPSNNImageNode]) -> MPSNNGradientFilterNode
  func gradientFilters(withSources gradientImages: [MPSNNImageNode]) -> [MPSNNGradientFilterNode]
  func gradientFilters(withSource gradientImage: MPSNNImageNode) -> [MPSNNGradientFilterNode]
  @available(macOS 10.14, *)
  func trainingGraph(withSourceGradient gradientImage: MPSNNImageNode?, nodeHandler: MPSGradientNodeBlock? = nil) -> [MPSNNFilterNode]?
}
@available(macOS 10.13.4, *)
class MPSNNGradientFilterNode : MPSNNFilterNode {
}
@available(macOS 10.13, *)
class MPSCNNConvolutionNode : MPSNNFilterNode, MPSNNTrainableNode {
  @available(macOS 10.14, *)
  var accumulatorPrecision: MPSNNConvolutionAccumulatorPrecisionOption
  init(source sourceNode: MPSNNImageNode, weights: MPSCNNConvolutionDataSource)
  @available(macOS 10.13.4, *)
  var convolutionGradientState: MPSCNNConvolutionGradientStateNode? { get }
}
@available(macOS 10.13, *)
class MPSCNNFullyConnectedNode : MPSCNNConvolutionNode {
}
@available(macOS 10.13, *)
class MPSCNNBinaryConvolutionNode : MPSCNNConvolutionNode {
  init(source sourceNode: MPSNNImageNode, weights: MPSCNNConvolutionDataSource, scaleValue: Float, type: MPSCNNBinaryConvolutionType, flags: MPSCNNBinaryConvolutionFlags)
  @available(macOS 10.13.4, *)
  init(source sourceNode: MPSNNImageNode, weights: MPSCNNConvolutionDataSource, outputBiasTerms: UnsafePointer<Float>?, outputScaleTerms: UnsafePointer<Float>?, inputBiasTerms: UnsafePointer<Float>?, inputScaleTerms: UnsafePointer<Float>?, type: MPSCNNBinaryConvolutionType, flags: MPSCNNBinaryConvolutionFlags)
}
@available(macOS 10.13, *)
class MPSCNNBinaryFullyConnectedNode : MPSCNNBinaryConvolutionNode {
}
@available(macOS 10.13, *)
class MPSCNNConvolutionTransposeNode : MPSCNNConvolutionNode {
  @available(macOS 10.13.4, *)
  init(source sourceNode: MPSNNImageNode, convolutionGradientState: MPSCNNConvolutionGradientStateNode?, weights: MPSCNNConvolutionDataSource)
}
@available(macOS 10.13.4, *)
class MPSCNNConvolutionGradientNode : MPSNNGradientFilterNode, MPSNNTrainableNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, convolutionGradientState gradientState: MPSCNNConvolutionGradientStateNode, weights: MPSCNNConvolutionDataSource?)
}
@available(macOS 10.15, *)
class MPSCNNFullyConnectedGradientNode : MPSCNNConvolutionGradientNode {
}
@available(macOS 10.15, *)
class MPSCNNConvolutionTransposeGradientNode : MPSCNNConvolutionGradientNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, convolutionTransposeGradientState gradientState: MPSCNNConvolutionTransposeGradientStateNode, weights: MPSCNNConvolutionDataSource?)
}
@available(macOS 10.13, *)
class MPSCNNNeuronNode : MPSNNFilterNode {
  @available(macOS 10.14, *)
  convenience init(source sourceNode: MPSNNImageNode, descriptor: MPSNNNeuronDescriptor)
  var a: Float { get }
  var b: Float { get }
  var c: Float { get }
}
@available(macOS 10.13, *)
class MPSCNNNeuronAbsoluteNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronELUNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode)
  init(source sourceNode: MPSNNImageNode, a: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronReLUNNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronLinearNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronReLUNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode)
  init(source sourceNode: MPSNNImageNode, a: Float)
}
@available(macOS 10.13, *)
class MPSCNNNeuronSigmoidNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronHardSigmoidNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronSoftPlusNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronSoftSignNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronTanHNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNNeuronPReLUNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, aData: Data)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronPowerNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float, c: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronExponentialNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float, c: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronLogarithmNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode, a: Float, b: Float, c: Float)
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.15, *)
class MPSCNNNeuronGeLUNode : MPSCNNNeuronNode {
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13.4, *)
class MPSCNNNeuronGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, descriptor: MPSNNNeuronDescriptor)
  var descriptor: MPSNNNeuronDescriptor { get }
}
@available(macOS 10.14.1, *)
class MPSNNUnaryReductionNode : MPSNNFilterNode {
  var clipRectSource: MTLRegion
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.14.1, *)
class MPSNNReductionRowMinNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionColumnMinNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionFeatureChannelsMinNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionFeatureChannelsArgumentMinNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionRowMaxNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionColumnMaxNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionFeatureChannelsMaxNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionFeatureChannelsArgumentMaxNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionRowMeanNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionColumnMeanNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionFeatureChannelsMeanNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionSpatialMeanNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionRowSumNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionColumnSumNode : MPSNNUnaryReductionNode {
}
@available(macOS 10.14.1, *)
class MPSNNReductionFeatureChannelsSumNode : MPSNNUnaryReductionNode {
  var weight: Float
}
@available(macOS 10.13, *)
class MPSCNNPoolingNode : MPSNNFilterNode {
  @available(macOS 10.14, *)
  var kernelWidth: Int { get }
  @available(macOS 10.14, *)
  var kernelHeight: Int { get }
  @available(macOS 10.14, *)
  var strideInPixelsX: Int { get }
  @available(macOS 10.14, *)
  var strideInPixelsY: Int { get }
  init(source sourceNode: MPSNNImageNode, kernelWidth: Int, kernelHeight: Int, strideInPixelsX: Int, strideInPixelsY: Int)
  init(source sourceNode: MPSNNImageNode, filterSize size: Int, stride: Int)
  init(source sourceNode: MPSNNImageNode, filterSize size: Int)
}
@available(macOS 10.13, *)
class MPSCNNPoolingAverageNode : MPSCNNPoolingNode {
}
@available(macOS 10.13, *)
class MPSCNNPoolingL2NormNode : MPSCNNPoolingNode {
}
@available(macOS 10.13, *)
class MPSCNNPoolingMaxNode : MPSCNNPoolingNode {
}
@available(macOS 10.13, *)
class MPSCNNDilatedPoolingMaxNode : MPSNNFilterNode {
  var dilationRateX: Int { get }
  var dilationRateY: Int { get }
  init(source sourceNode: MPSNNImageNode, kernelWidth: Int, kernelHeight: Int, strideInPixelsX: Int, strideInPixelsY: Int, dilationRateX: Int, dilationRateY: Int)
  init(source sourceNode: MPSNNImageNode, filterSize size: Int, stride: Int, dilationRate: Int)
  init(source sourceNode: MPSNNImageNode, filterSize size: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, kernelWidth: Int, kernelHeight: Int, strideInPixelsX: Int, strideInPixelsY: Int, paddingPolicy: MPSNNPadding?)
  var kernelWidth: Int { get }
  var kernelHeight: Int { get }
  var strideInPixelsX: Int { get }
  var strideInPixelsY: Int { get }
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingMaxGradientNode : MPSCNNPoolingGradientNode {
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingAverageGradientNode : MPSCNNPoolingGradientNode {
}
@available(macOS 10.13.4, *)
class MPSCNNPoolingL2NormGradientNode : MPSCNNPoolingGradientNode {
}
@available(macOS 10.13.4, *)
class MPSCNNDilatedPoolingMaxGradientNode : MPSCNNPoolingGradientNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, kernelWidth: Int, kernelHeight: Int, strideInPixelsX: Int, strideInPixelsY: Int, dilationRateX: Int, dilationRateY: Int)
  var dilationRateX: Int { get }
  var dilationRateY: Int { get }
}
@available(macOS 10.13, *)
class MPSCNNNormalizationNode : MPSNNFilterNode {
  var alpha: Float
  var beta: Float
  var delta: Float
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13, *)
class MPSCNNSpatialNormalizationNode : MPSCNNNormalizationNode {
  var kernelWidth: Int
  var kernelHeight: Int
  init(source sourceNode: MPSNNImageNode, kernelSize: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNSpatialNormalizationGradientNode : MPSNNGradientFilterNode {
  var kernelWidth: Int
  var kernelHeight: Int
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, kernelSize: Int)
  var alpha: Float
  var beta: Float
  var delta: Float
}
@available(macOS 10.13, *)
class MPSCNNLocalContrastNormalizationNode : MPSCNNNormalizationNode {
  var pm: Float
  var ps: Float
  var p0: Float
  var kernelWidth: Int
  var kernelHeight: Int
  init(source sourceNode: MPSNNImageNode, kernelSize: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNLocalContrastNormalizationGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, kernelWidth: Int, kernelHeight: Int)
  var alpha: Float
  var beta: Float
  var delta: Float
  var p0: Float
  var pm: Float
  var ps: Float
  var kernelWidth: Int { get }
  var kernelHeight: Int { get }
}
@available(macOS 10.13, *)
class MPSCNNCrossChannelNormalizationNode : MPSCNNNormalizationNode {
  var kernelSizeInFeatureChannels: Int
  init(source sourceNode: MPSNNImageNode, kernelSize: Int)
}
@available(macOS 10.13.4, *)
class MPSCNNCrossChannelNormalizationGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, kernelSize: Int)
  var kernelSize: Int { get }
}
@available(macOS 10.13.4, *)
class MPSCNNInstanceNormalizationNode : MPSNNFilterNode, MPSNNTrainableNode {
  init(source: MPSNNImageNode, dataSource: MPSCNNInstanceNormalizationDataSource)
}
@available(macOS 10.13.4, *)
class MPSCNNInstanceNormalizationGradientNode : MPSNNGradientFilterNode, MPSNNTrainableNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.15.0, *)
class MPSCNNGroupNormalizationNode : MPSNNFilterNode, MPSNNTrainableNode {
  init(source: MPSNNImageNode, dataSource: MPSCNNGroupNormalizationDataSource)
}
@available(macOS 10.15.0, *)
class MPSCNNGroupNormalizationGradientNode : MPSNNGradientFilterNode, MPSNNTrainableNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalizationNode : MPSNNFilterNode, MPSNNTrainableNode {
  var flags: MPSCNNBatchNormalizationFlags
  init(source: MPSNNImageNode, dataSource: MPSCNNBatchNormalizationDataSource)
}
@available(macOS 10.13.4, *)
class MPSCNNBatchNormalizationGradientNode : MPSNNGradientFilterNode, MPSNNTrainableNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
protocol MPSImageTransformProvider : NSSecureCoding, NSObjectProtocol {
  @available(macOS 10.13, *)
  func transform(forSourceImage image: MPSImage, handle: MPSHandle?) -> MPSScaleTransform
}
@available(macOS 10.13, *)
class MPSNNScaleNode : MPSNNFilterNode {
  init(source sourceNode: MPSNNImageNode, outputSize size: MTLSize)
  init(source sourceNode: MPSNNImageNode, transformProvider: MPSImageTransformProvider?, outputSize size: MTLSize)
}
@available(macOS 10.13, *)
class MPSNNBilinearScaleNode : MPSNNScaleNode {
}
@available(macOS 10.13, *)
class MPSNNLanczosScaleNode : MPSNNScaleNode {
}
@available(macOS 10.13, *)
class MPSNNBinaryArithmeticNode : MPSNNFilterNode {
  init(sources sourceNodes: [MPSNNImageNode])
  init(leftSource left: MPSNNImageNode, rightSource right: MPSNNImageNode)
  func gradientClass() -> AnyClass
  var primaryScale: Float
  var secondaryScale: Float
  var bias: Float
  var primaryStrideInPixelsX: Int
  var primaryStrideInPixelsY: Int
  var primaryStrideInFeatureChannels: Int
  var secondaryStrideInPixelsX: Int
  var secondaryStrideInPixelsY: Int
  var secondaryStrideInFeatureChannels: Int
  var minimumValue: Float
  var maximumValue: Float
}
@available(macOS 10.13, *)
class MPSNNAdditionNode : MPSNNBinaryArithmeticNode {
}
@available(macOS 10.13, *)
class MPSNNSubtractionNode : MPSNNBinaryArithmeticNode {
}
@available(macOS 10.13, *)
class MPSNNMultiplicationNode : MPSNNBinaryArithmeticNode {
}
@available(macOS 10.13, *)
class MPSNNDivisionNode : MPSNNBinaryArithmeticNode {
}
@available(macOS 10.14.1, *)
class MPSNNComparisonNode : MPSNNBinaryArithmeticNode {
  var comparisonType: MPSNNComparisonType
}
@available(macOS 10.13.4, *)
class MPSNNArithmeticGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNBinaryGradientStateNode, isSecondarySourceFilter: Bool)
  init(gradientImages: [MPSNNImageNode], forwardFilter filter: MPSNNFilterNode, isSecondarySourceFilter: Bool)
  var primaryScale: Float
  var secondaryScale: Float
  var bias: Float
  var secondaryStrideInPixelsX: Int
  var secondaryStrideInPixelsY: Int
  var secondaryStrideInFeatureChannels: Int
  var minimumValue: Float
  var maximumValue: Float
  var isSecondarySourceFilter: Bool { get }
}
@available(macOS 10.13.4, *)
class MPSNNAdditionGradientNode : MPSNNArithmeticGradientNode {
}
@available(macOS 10.13.4, *)
class MPSNNSubtractionGradientNode : MPSNNArithmeticGradientNode {
}
@available(macOS 10.13.4, *)
class MPSNNMultiplicationGradientNode : MPSNNArithmeticGradientNode {
}
@available(macOS 10.13.4, *)
class MPSCNNDropoutNode : MPSNNFilterNode {
  convenience init(source: MPSNNImageNode)
  convenience init(source: MPSNNImageNode, keepProbability: Float)
  init(source: MPSNNImageNode, keepProbability: Float, seed: Int, maskStrideInPixels: MTLSize)
  var keepProbability: Float { get }
  var seed: Int { get }
  var maskStrideInPixels: MTLSize { get }
}
@available(macOS 10.13.4, *)
class MPSCNNDropoutGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, keepProbability: Float, seed: Int, maskStrideInPixels: MTLSize)
  var keepProbability: Float { get }
  var seed: Int { get }
  var maskStrideInPixels: MTLSize { get }
}
@available(macOS 10.13.4, *)
class MPSNNLabelsNode : MPSNNStateNode {
}
@available(macOS 10.13.4, *)
class MPSCNNLossNode : MPSNNFilterNode {
  init(source: MPSNNImageNode, lossDescriptor descriptor: MPSCNNLossDescriptor)
  var inputLabels: MPSNNLabelsNode { get }
}
@available(macOS 10.13.4, *)
class MPSCNNYOLOLossNode : MPSNNFilterNode {
  init(source: MPSNNImageNode, lossDescriptor descriptor: MPSCNNYOLOLossDescriptor)
  var inputLabels: MPSNNLabelsNode { get }
}
@available(macOS 10.13, *)
class MPSNNConcatenationNode : MPSNNFilterNode {
  init(sources sourceNodes: [MPSNNImageNode])
}
@available(macOS 10.13.4, *)
class MPSNNConcatenationGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient gradientSourceNode: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.14.1, *)
class MPSNNReshapeNode : MPSNNFilterNode {
  init(source: MPSNNImageNode, resultWidth: Int, resultHeight: Int, resultFeatureChannels: Int)
}
@available(macOS 10.14.1, *)
class MPSNNReshapeGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.14.1, *)
class MPSNNReductionSpatialMeanGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.14.1, *)
class MPSNNPadNode : MPSNNFilterNode {
  var fillValue: Float
  init(source: MPSNNImageNode, paddingSizeBefore: MPSImageCoordinate, paddingSizeAfter: MPSImageCoordinate, edgeMode: MPSImageEdgeMode)
}
@available(macOS 10.14.1, *)
class MPSNNPadGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.13, *)
class MPSCNNSoftMaxNode : MPSNNFilterNode {
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13.4, *)
class MPSCNNSoftMaxGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.13, *)
class MPSCNNLogSoftMaxNode : MPSNNFilterNode {
  init(source sourceNode: MPSNNImageNode)
}
@available(macOS 10.13.4, *)
class MPSCNNLogSoftMaxGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
}
@available(macOS 10.13, *)
class MPSCNNUpsamplingNearestNode : MPSNNFilterNode {
  init(source sourceNode: MPSNNImageNode, integerScaleFactorX: Int, integerScaleFactorY: Int)
  var scaleFactorX: Double { get }
  var scaleFactorY: Double { get }
}
@available(macOS 10.13, *)
class MPSCNNUpsamplingBilinearNode : MPSNNFilterNode {
  init(source sourceNode: MPSNNImageNode, integerScaleFactorX: Int, integerScaleFactorY: Int)
  init(source sourceNode: MPSNNImageNode, integerScaleFactorX: Int, integerScaleFactorY: Int, alignCorners: Bool)
  var scaleFactorX: Double { get }
  var scaleFactorY: Double { get }
  var alignCorners: Bool { get }
}
@available(macOS 10.13.4, *)
class MPSCNNUpsamplingNearestGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, scaleFactorX: Double, scaleFactorY: Double)
  var scaleFactorX: Double { get }
  var scaleFactorY: Double { get }
}
@available(macOS 10.13.4, *)
class MPSCNNUpsamplingBilinearGradientNode : MPSNNGradientFilterNode {
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, scaleFactorX: Double, scaleFactorY: Double)
  var scaleFactorX: Double { get }
  var scaleFactorY: Double { get }
}
protocol MPSNNGramMatrixCallback : NSCopying, NSSecureCoding, NSObjectProtocol {
  @available(macOS 10.13, *)
  func alpha(forSourceImage sourceImage: MPSImage, destinationImage: MPSImage) -> Float
}
@available(macOS 10.15, *)
class MPSNNGramMatrixCalculationNode : MPSNNFilterNode {
  var alpha: Float { get }
  var propertyCallBack: MPSNNGramMatrixCallback?
  init(source sourceNode: MPSNNImageNode)
  init(source sourceNode: MPSNNImageNode, alpha: Float)
}
@available(macOS 10.15.0, *)
class MPSNNGramMatrixCalculationGradientNode : MPSNNGradientFilterNode {
  var alpha: Float { get }
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode)
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, gradientState: MPSNNGradientStateNode, alpha: Float)
}
protocol MPSNNLossCallback : NSCopying, NSSecureCoding, NSObjectProtocol {
  @available(macOS 10.13, *)
  func scalarWeight(forSourceImage sourceImage: MPSImage, destinationImage: MPSImage) -> Float
}
@available(macOS 10.15, *)
class MPSNNForwardLossNode : MPSNNFilterNode {
  var lossType: MPSCNNLossType { get }
  var reductionType: MPSCNNReductionType { get }
  var numberOfClasses: Int { get }
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool { get }
  var weight: Float { get }
  var labelSmoothing: Float { get }
  var epsilon: Float { get }
  var delta: Float { get }
  var propertyCallBack: MPSNNLossCallback?
  convenience init(source: MPSNNImageNode, labels: MPSNNImageNode, weights: MPSNNImageNode, lossDescriptor descriptor: MPSCNNLossDescriptor)
  init(source: MPSNNImageNode, labels: MPSNNImageNode, weights: MPSNNImageNode?, lossDescriptor descriptor: MPSCNNLossDescriptor)
  init(source: MPSNNImageNode, labels: MPSNNImageNode, lossDescriptor descriptor: MPSCNNLossDescriptor)
  init(sources sourceNodes: [MPSNNImageNode], lossDescriptor descriptor: MPSCNNLossDescriptor)
}
@available(macOS 10.15.0, *)
class MPSNNLossGradientNode : MPSNNGradientFilterNode {
  var lossType: MPSCNNLossType { get }
  var reductionType: MPSCNNReductionType { get }
  var numberOfClasses: Int { get }
  @available(macOS 11.0, *)
  var reduceAcrossBatch: Bool { get }
  var weight: Float { get }
  var labelSmoothing: Float { get }
  var epsilon: Float { get }
  var delta: Float { get }
  var isLabelsGradientFilter: Bool { get }
  var propertyCallBack: MPSNNLossCallback?
  convenience init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, labels: MPSNNImageNode, weights: MPSNNImageNode, gradientState: MPSNNGradientStateNode?, lossDescriptor descriptor: MPSCNNLossDescriptor, isLabelsGradientFilter: Bool)
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, labels: MPSNNImageNode, weights: MPSNNImageNode?, gradientState: MPSNNGradientStateNode?, lossDescriptor descriptor: MPSCNNLossDescriptor, isLabelsGradientFilter: Bool)
  init(sourceGradient: MPSNNImageNode, sourceImage: MPSNNImageNode, labels: MPSNNImageNode, gradientState: MPSNNGradientStateNode?, lossDescriptor descriptor: MPSCNNLossDescriptor, isLabelsGradientFilter: Bool)
  init(sources sourceNodes: [MPSNNImageNode], gradientState: MPSNNGradientStateNode?, lossDescriptor descriptor: MPSCNNLossDescriptor, isLabelsGradientFilter: Bool)
}
@available(macOS 10.15.0, *)
class MPSNNInitialGradientNode : MPSNNFilterNode {
  init(source: MPSNNImageNode)
}
typealias MPSNNGraphCompletionHandler = (MPSImage?, Error?) -> Void
@available(macOS 10.13, *)
class MPSNNGraph : MPSKernel, NSCopying, NSSecureCoding {
  init?(device: MTLDevice, resultImage: MPSNNImageNode, resultImageIsNeeded resultIsNeeded: Bool)
  @available(macOS 10.15, *)
  init?(device: MTLDevice, resultImages: [MPSNNImageNode], resultsAreNeeded areResultsNeeded: UnsafeMutablePointer<ObjCBool>?)
  @available(macOS, introduced: 10.13, deprecated: 10.13.4)
  convenience init?(device: MTLDevice, resultImage: MPSNNImageNode)
  var sourceImageHandles: [MPSHandle] { get }
  var sourceStateHandles: [MPSHandle]? { get }
  var intermediateImageHandles: [MPSHandle]? { get }
  var resultStateHandles: [MPSHandle]? { get }
  var resultHandle: MPSHandle? { get }
  var outputStateIsTemporary: Bool
  var destinationImageAllocator: MPSImageAllocator
  var format: MPSImageFeatureChannelFormat
  var resultImageIsNeeded: Bool { get }
  func reloadFromDataSources()
  func encode(to commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage], sourceStates: [MPSState]?, intermediateImages: NSMutableArray?, destinationStates: NSMutableArray?) -> MPSImage?
  @available(macOS 10.13.4, *)
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceImages: [[MPSImage]], sourceStates: [[MPSState]]?, intermediateImages: NSMutableArray?, destinationStates: NSMutableArray?) -> [MPSImage]?
  func encode(to commandBuffer: MTLCommandBuffer, sourceImages: [MPSImage]) -> MPSImage?
  func encodeBatch(to commandBuffer: MTLCommandBuffer, sourceImages: [[MPSImage]], sourceStates: [[MPSState]]?) -> [MPSImage]?
  func executeAsync(withSourceImages sourceImages: [MPSImage], completionHandler handler: @escaping MPSNNGraphCompletionHandler) -> MPSImage
  @available(macOS 10.14.1, *)
  func readCountForSourceImage(at index: Int) -> Int
  @available(macOS 10.14.1, *)
  func readCountForSourceState(at index: Int) -> Int
}
struct MPSNDArrayOffsets {
  var dimensions: (Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int)
  init()
  init(dimensions: (Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int))
}
struct MPSNDArraySizes {
  var dimensions: (Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int)
  init()
  init(dimensions: (Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int, Int))
}
@available(macOS 10.15, *)
class MPSNDArrayMultiaryBase : MPSKernel {
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  func offsets(atSourceIndex sourceIndex: Int) -> MPSNDArrayOffsets
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  func edgeMode(atSourceIndex sourceIndex: Int) -> MPSImageEdgeMode
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  func kernelSizes(forSourceIndex sourceIndex: Int) -> MPSNDArraySizes
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  func strides(forSourceIndex sourceIndex: Int) -> MPSNDArrayOffsets
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  func dilationRates(forSourceIndex sourceIndex: Int) -> MPSNDArraySizes
  var destinationArrayAllocator: MPSNDArrayAllocator
  init(device: MTLDevice, sourceCount count: Int)
  func resultState(forSourceArrays sourceArrays: [MPSNDArray], sourceStates: [MPSState]?, destinationArray: MPSNDArray) -> MPSState?
  func destinationArrayDescriptor(forSourceArrays sources: [MPSNDArray], sourceState state: MPSState?) -> MPSNDArrayDescriptor
}
@available(macOS 10.15, *)
class MPSNDArrayMultiaryKernel : MPSNDArrayMultiaryBase {
  func encode(to cmdBuf: MTLCommandBuffer, sourceArrays: [MPSNDArray]) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, sourceArrays: [MPSNDArray], destinationArray destination: MPSNDArray)
  func encode(to cmdBuf: MTLCommandBuffer, sourceArrays: [MPSNDArray], resultState outGradientState: AutoreleasingUnsafeMutablePointer<MPSState?>?, outputStateIsTemporary: Bool) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, sourceArrays: [MPSNDArray], resultState outGradientState: MPSState?, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayMultiaryGradientKernel : MPSNDArrayMultiaryBase {
  init(device: MTLDevice, sourceCount count: Int, sourceGradientIndex: Int)
  func encode(to cmdBuf: MTLCommandBuffer, sourceArrays sources: [MPSNDArray], sourceGradient gradient: MPSNDArray, gradientState state: MPSState) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, sourceArrays sources: [MPSNDArray], sourceGradient gradient: MPSNDArray, gradientState state: MPSState, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayUnaryKernel : MPSNDArrayMultiaryKernel {
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var offsets: MPSNDArrayOffsets { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var edgeMode: MPSImageEdgeMode { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var kernelSizes: MPSNDArraySizes { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var strides: MPSNDArrayOffsets { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var dilationRates: MPSNDArraySizes { get }
  func encode(to cmdBuf: MTLCommandBuffer, sourceArray: MPSNDArray) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, sourceArray: MPSNDArray, destinationArray destination: MPSNDArray)
  func encode(to cmdBuf: MTLCommandBuffer, sourceArray: MPSNDArray, resultState outGradientState: AutoreleasingUnsafeMutablePointer<MPSState?>?, outputStateIsTemporary: Bool) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, sourceArray: MPSNDArray, resultState outGradientState: MPSState?, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayUnaryGradientKernel : MPSNDArrayMultiaryGradientKernel {
  func encode(to cmdBuf: MTLCommandBuffer, sourceArray: MPSNDArray, sourceGradient gradient: MPSNDArray, gradientState state: MPSState) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, sourceArray: MPSNDArray, sourceGradient gradient: MPSNDArray, gradientState state: MPSState, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayBinaryKernel : MPSNDArrayMultiaryKernel {
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var primaryOffsets: MPSNDArrayOffsets { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var primaryEdgeMode: MPSImageEdgeMode { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var primaryKernelSizes: MPSNDArraySizes { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var primaryStrides: MPSNDArrayOffsets { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var primaryDilationRates: MPSNDArraySizes { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var secondaryOffsets: MPSNDArrayOffsets { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var secondaryEdgeMode: MPSImageEdgeMode { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var secondaryKernelSizes: MPSNDArraySizes { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var secondaryStrides: MPSNDArrayOffsets { get }
  @available(macOS, introduced: 10.15, deprecated: 11.0)
  var secondaryDilationRates: MPSNDArraySizes { get }
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, destinationArray destination: MPSNDArray)
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, resultState outGradientState: AutoreleasingUnsafeMutablePointer<MPSState?>?, outputStateIsTemporary: Bool) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, resultState outGradientState: MPSState?, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayBinaryPrimaryGradientKernel : MPSNDArrayMultiaryGradientKernel {
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, sourceGradient gradient: MPSNDArray, gradientState state: MPSState) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, sourceGradient gradient: MPSNDArray, gradientState state: MPSState, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayBinarySecondaryGradientKernel : MPSNDArrayMultiaryGradientKernel {
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, sourceGradient gradient: MPSNDArray, gradientState state: MPSState) -> MPSNDArray
  func encode(to cmdBuf: MTLCommandBuffer, primarySourceArray: MPSNDArray, secondarySourceArray: MPSNDArray, sourceGradient gradient: MPSNDArray, gradientState state: MPSState, destinationArray destination: MPSNDArray)
}
@available(macOS 10.15, *)
class MPSNDArrayGradientState : MPSState {
}
@available(macOS 10.15, *)
class MPSNDArrayMatrixMultiplication : MPSNDArrayMultiaryKernel {
  var alpha: Double
  var beta: Double
}
@available(macOS 10.15, *)
class MPSNDArrayStridedSlice : MPSNDArrayUnaryKernel {
}
@available(macOS 10.15, *)
class MPSNDArrayStridedSliceGradient : MPSNDArrayUnaryGradientKernel {
}
@available(macOS 10.15, *)
class MPSNDArrayGatherGradientState : MPSNDArrayGradientState {
}
@available(macOS 10.15, *)
class MPSNDArrayGather : MPSNDArrayBinaryKernel {
  var axis: Int
}
@available(macOS 10.15, *)
class MPSNDArrayGatherGradient : MPSNDArrayBinaryPrimaryGradientKernel {
}
@available(macOS 10.14, *)
class MPSAccelerationStructureGroup : NSObject {
  var device: MTLDevice { get }
  init(device: MTLDevice)
}
struct _MPSPackedFloat3 {
  struct __Unnamed_union___Anonymous_field0 {
    struct __Unnamed_struct___Anonymous_field0 {
      var x: Float
      var y: Float
      var z: Float
      init()
      init(x: Float, y: Float, z: Float)
    }
    var __Anonymous_field0: _MPSPackedFloat3.__Unnamed_union___Anonymous_field0.__Unnamed_struct___Anonymous_field0
    var x: Float
    var y: Float
    var z: Float
    var elements: (Float, Float, Float)
    init(_ __Anonymous_field0: _MPSPackedFloat3.__Unnamed_union___Anonymous_field0.__Unnamed_struct___Anonymous_field0)
    init(elements: (Float, Float, Float))
    init()
  }
  var __Anonymous_field0: _MPSPackedFloat3.__Unnamed_union___Anonymous_field0
  var x: Float
  var y: Float
  var z: Float
  var elements: (Float, Float, Float)
  init()
  init(_ __Anonymous_field0: _MPSPackedFloat3.__Unnamed_union___Anonymous_field0)
}
typealias MPSPackedFloat3 = _MPSPackedFloat3
struct _MPSAxisAlignedBoundingBox {
  var min: vector_float3
  var max: vector_float3
  init()
  init(min: vector_float3, max: vector_float3)
}
typealias MPSAxisAlignedBoundingBox = _MPSAxisAlignedBoundingBox
struct MPSRayOriginDirection {
  var origin: vector_float3
  var direction: vector_float3
  init()
  init(origin: vector_float3, direction: vector_float3)
}
struct MPSRayPackedOriginDirection {
  var origin: MPSPackedFloat3
  var direction: MPSPackedFloat3
  init()
  init(origin: MPSPackedFloat3, direction: MPSPackedFloat3)
}
struct MPSRayOriginMinDistanceDirectionMaxDistance {
  var origin: MPSPackedFloat3
  var minDistance: Float
  var direction: MPSPackedFloat3
  var maxDistance: Float
  init()
  init(origin: MPSPackedFloat3, minDistance: Float, direction: MPSPackedFloat3, maxDistance: Float)
}
struct MPSRayOriginMaskDirectionMaxDistance {
  var origin: MPSPackedFloat3
  var mask: UInt32
  var direction: MPSPackedFloat3
  var maxDistance: Float
  init()
  init(origin: MPSPackedFloat3, mask: UInt32, direction: MPSPackedFloat3, maxDistance: Float)
}
struct MPSIntersectionDistance {
  var distance: Float
  init()
  init(distance: Float)
}
struct MPSIntersectionDistancePrimitiveIndex {
  var distance: Float
  var primitiveIndex: UInt32
  init()
  init(distance: Float, primitiveIndex: UInt32)
}
struct MPSIntersectionDistancePrimitiveIndexCoordinates {
  var distance: Float
  var primitiveIndex: UInt32
  var coordinates: vector_float2
  init()
  init(distance: Float, primitiveIndex: UInt32, coordinates: vector_float2)
}
struct MPSIntersectionDistancePrimitiveIndexInstanceIndex {
  var distance: Float
  var primitiveIndex: UInt32
  var instanceIndex: UInt32
  init()
  init(distance: Float, primitiveIndex: UInt32, instanceIndex: UInt32)
}
struct MPSIntersectionDistancePrimitiveIndexInstanceIndexCoordinates {
  var distance: Float
  var primitiveIndex: UInt32
  var instanceIndex: UInt32
  var coordinates: vector_float2
  init()
  init(distance: Float, primitiveIndex: UInt32, instanceIndex: UInt32, coordinates: vector_float2)
}
@available(macOS 10.14, *)
typealias MPSAccelerationStructureCompletionHandler = (MPSAccelerationStructure?) -> Void
@available(macOS 10.14, *)
struct MPSAccelerationStructureUsage : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var refit: MPSAccelerationStructureUsage { get }
  static var frequentRebuild: MPSAccelerationStructureUsage { get }
  @available(macOS 10.15, *)
  static var preferGPUBuild: MPSAccelerationStructureUsage { get }
  @available(macOS 10.15, *)
  static var preferCPUBuild: MPSAccelerationStructureUsage { get }
}
@available(macOS 10.14, *)
enum MPSAccelerationStructureStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unbuilt
  case built
}
@available(macOS 10.14, *)
class MPSAccelerationStructure : MPSKernel, NSSecureCoding, NSCopying {
  var group: MPSAccelerationStructureGroup { get }
  var boundingBox: MPSAxisAlignedBoundingBox { get }
  var status: MPSAccelerationStructureStatus { get }
  var usage: MPSAccelerationStructureUsage
  init(group: MPSAccelerationStructureGroup)
  init?(coder aDecoder: NSCoder, group: MPSAccelerationStructureGroup)
  func rebuild()
  func rebuild(completionHandler: @escaping MPSAccelerationStructureCompletionHandler)
  func encodeRefit(commandBuffer: MTLCommandBuffer)
  func copy(with zone: NSZone? = nil, group: MPSAccelerationStructureGroup) -> Self
}
@available(macOS 10.15, *)
class MPSPolygonBuffer : NSObject, NSCopying, NSSecureCoding {
  var vertexBuffer: MTLBuffer?
  var vertexBufferOffset: Int
  var indexBuffer: MTLBuffer?
  var indexBufferOffset: Int
  var maskBuffer: MTLBuffer?
  var maskBufferOffset: Int
  var polygonCount: Int
}
@available(macOS 10.15, *)
enum MPSPolygonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case triangle
  case quadrilateral
}
@available(macOS 10.15, *)
class MPSPolygonAccelerationStructure : MPSAccelerationStructure {
  var polygonType: MPSPolygonType
  var vertexStride: Int
  var indexType: MPSDataType
  var vertexBuffer: MTLBuffer?
  var vertexBufferOffset: Int
  var indexBuffer: MTLBuffer?
  var indexBufferOffset: Int
  var maskBuffer: MTLBuffer?
  var maskBufferOffset: Int
  var polygonCount: Int
  var polygonBuffers: [MPSPolygonBuffer]?
}
@available(macOS 10.14, *)
class MPSTriangleAccelerationStructure : MPSPolygonAccelerationStructure {
  var triangleCount: Int
}
@available(macOS 10.15, *)
class MPSQuadrilateralAccelerationStructure : MPSPolygonAccelerationStructure {
  var quadrilateralCount: Int
}
@available(macOS 10.14, *)
enum MPSTransformType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case float4x4
  case identity
}
@available(macOS 10.14, *)
class MPSInstanceAccelerationStructure : MPSAccelerationStructure {
  var accelerationStructures: [MPSPolygonAccelerationStructure]?
  var instanceBuffer: MTLBuffer?
  var instanceBufferOffset: Int
  var transformBuffer: MTLBuffer?
  var transformBufferOffset: Int
  var transformType: MPSTransformType
  var maskBuffer: MTLBuffer?
  var maskBufferOffset: Int
  var instanceCount: Int
}
@available(macOS 10.15, *)
enum MPSTemporalWeighting : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case average
  case exponentialMovingAverage
}
@available(macOS 10.15, *)
class MPSSVGF : MPSKernel, NSSecureCoding, NSCopying {
  var depthWeight: Float
  var normalWeight: Float
  var luminanceWeight: Float
  var temporalWeighting: MPSTemporalWeighting
  var temporalReprojectionBlendFactor: Float
  var reprojectionThreshold: Float
  var minimumFramesForVarianceEstimation: Int
  var varianceEstimationRadius: Int
  var varianceEstimationSigma: Float
  var variancePrefilterSigma: Float
  var variancePrefilterRadius: Int
  var bilateralFilterSigma: Float
  var bilateralFilterRadius: Int
  var channelCount: Int
  var channelCount2: Int
  func encodeReprojection(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, previousTexture: MTLTexture, destinationTexture: MTLTexture, previousLuminanceMomentsTexture: MTLTexture, destinationLuminanceMomentsTexture: MTLTexture, previousFrameCount previousFrameCountTexture: MTLTexture, destinationFrameCount destinationFrameCountTexture: MTLTexture, motionVectorTexture: MTLTexture?, depthNormalTexture: MTLTexture?, previousDepthNormalTexture: MTLTexture?)
  func encodeReprojection(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, previousTexture: MTLTexture, destinationTexture: MTLTexture, previousLuminanceMomentsTexture: MTLTexture, destinationLuminanceMomentsTexture: MTLTexture, sourceTexture2: MTLTexture?, previousTexture2: MTLTexture?, destinationTexture2: MTLTexture?, previousLuminanceMomentsTexture2: MTLTexture?, destinationLuminanceMomentsTexture2: MTLTexture?, previousFrameCount previousFrameCountTexture: MTLTexture, destinationFrameCount destinationFrameCountTexture: MTLTexture, motionVectorTexture: MTLTexture?, depthNormalTexture: MTLTexture?, previousDepthNormalTexture: MTLTexture?)
  func encodeVarianceEstimation(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, luminanceMomentsTexture: MTLTexture, destinationTexture: MTLTexture, frameCount frameCountTexture: MTLTexture, depthNormalTexture: MTLTexture?)
  func encodeVarianceEstimation(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, luminanceMomentsTexture: MTLTexture, destinationTexture: MTLTexture, sourceTexture2: MTLTexture?, luminanceMomentsTexture2: MTLTexture?, destinationTexture2: MTLTexture?, frameCount frameCountTexture: MTLTexture, depthNormalTexture: MTLTexture?)
  func encodeBilateralFilter(to commandBuffer: MTLCommandBuffer, stepDistance: Int, sourceTexture: MTLTexture, destinationTexture: MTLTexture, depthNormalTexture: MTLTexture)
  func encodeBilateralFilter(to commandBuffer: MTLCommandBuffer, stepDistance: Int, sourceTexture: MTLTexture, destinationTexture: MTLTexture, sourceTexture2: MTLTexture?, destinationTexture2: MTLTexture?, depthNormalTexture: MTLTexture)
}
@available(macOS 10.15, *)
protocol MPSSVGFTextureAllocator : NSObjectProtocol {
  func texture(with pixelFormat: MTLPixelFormat, width: Int, height: Int) -> MTLTexture?
  func `return`(_ texture: MTLTexture)
}
@available(macOS 10.15, *)
class MPSSVGFDefaultTextureAllocator : NSObject, MPSSVGFTextureAllocator {
  var device: MTLDevice { get }
  var allocatedTextureCount: Int { get }
  init(device: MTLDevice)
  func reset()
}
@available(macOS 10.15, *)
class MPSSVGFDenoiser : NSObject {
  var svgf: MPSSVGF { get }
  var textureAllocator: MPSSVGFTextureAllocator { get }
  var bilateralFilterIterations: Int
  init(device: MTLDevice)
  init(SVGF svgf: MPSSVGF, textureAllocator: MPSSVGFTextureAllocator)
  func clearTemporalHistory()
  func releaseTemporaryTextures()
  func encode(commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, motionVectorTexture: MTLTexture?, depthNormalTexture: MTLTexture, previousDepthNormalTexture: MTLTexture?) -> MTLTexture
  func encode(commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, destinationTexture: AutoreleasingUnsafeMutablePointer<MTLTexture>, sourceTexture2: MTLTexture?, destinationTexture2: AutoreleasingUnsafeMutablePointer<MTLTexture>?, motionVectorTexture: MTLTexture?, depthNormalTexture: MTLTexture, previousDepthNormalTexture: MTLTexture?)
}
@available(macOS 10.15, *)
class MPSTemporalAA : MPSKernel, NSSecureCoding, NSCopying {
  var blendFactor: Float
  func encode(to commandBuffer: MTLCommandBuffer, sourceTexture: MTLTexture, previousTexture: MTLTexture, destinationTexture: MTLTexture, motionVectorTexture: MTLTexture?, depthTexture: MTLTexture?)
}
@available(macOS 10.14, *)
enum MPSIntersectionType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case nearest
  case any
}
@available(macOS 10.14, *)
enum MPSTriangleIntersectionTestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case watertight
}
@available(macOS 10.14, *)
enum MPSBoundingBoxIntersectionTestType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case axisAligned
  @available(macOS 10.15, *)
  case fast
}
@available(macOS 10.14, *)
struct MPSRayMaskOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var primitive: MPSRayMaskOptions { get }
  static var instance: MPSRayMaskOptions { get }
}
@available(macOS 10.14, *)
enum MPSRayDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case originDirection
  case originMinDistanceDirectionMaxDistance
  case originMaskDirectionMaxDistance
  @available(macOS 10.15, *)
  case packedOriginDirection
}
@available(macOS 10.14, *)
enum MPSIntersectionDataType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case distance
  case distancePrimitiveIndex
  case distancePrimitiveIndexCoordinates
  case distancePrimitiveIndexInstanceIndex
  case distancePrimitiveIndexInstanceIndexCoordinates
}
@available(macOS 10.15, *)
enum MPSRayMaskOperator : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case and
  case notAnd
  case or
  case notOr
  case xor
  case notXor
  case lessThan
  case lessThanOrEqualTo
  case greaterThan
  case greaterThanOrEqualTo
  @available(macOS 10.15.4, *)
  case equal
  @available(macOS 10.15.4, *)
  case notEqual
}
@available(macOS 10.14, *)
class MPSRayIntersector : MPSKernel, NSSecureCoding, NSCopying {
  var cullMode: MTLCullMode
  var frontFacingWinding: MTLWinding
  var triangleIntersectionTestType: MPSTriangleIntersectionTestType
  var boundingBoxIntersectionTestType: MPSBoundingBoxIntersectionTestType
  var rayMaskOptions: MPSRayMaskOptions
  @available(macOS 10.15, *)
  var rayMaskOperator: MPSRayMaskOperator
  var rayStride: Int
  var intersectionStride: Int
  var rayDataType: MPSRayDataType
  var intersectionDataType: MPSIntersectionDataType
  @available(macOS 10.15, *)
  var rayIndexDataType: MPSDataType
  @available(macOS 10.15, *)
  var rayMask: UInt32
  func recommendedMinimumRayBatchSize(rayCount: Int) -> Int
  func encodeIntersection(commandBuffer: MTLCommandBuffer, intersectionType: MPSIntersectionType, rayBuffer: MTLBuffer, rayBufferOffset: Int, intersectionBuffer: MTLBuffer, intersectionBufferOffset: Int, rayCount: Int, accelerationStructure: MPSAccelerationStructure)
  func encodeIntersection(commandBuffer: MTLCommandBuffer, intersectionType: MPSIntersectionType, rayBuffer: MTLBuffer, rayBufferOffset: Int, intersectionBuffer: MTLBuffer, intersectionBufferOffset: Int, rayCountBuffer: MTLBuffer, rayCountBufferOffset: Int, accelerationStructure: MPSAccelerationStructure)
  @available(macOS 10.15, *)
  func encodeIntersection(commandBuffer: MTLCommandBuffer, intersectionType: MPSIntersectionType, rayBuffer: MTLBuffer, rayBufferOffset: Int, rayIndexBuffer: MTLBuffer, rayIndexBufferOffset: Int, intersectionBuffer: MTLBuffer, intersectionBufferOffset: Int, rayIndexCount: Int, accelerationStructure: MPSAccelerationStructure)
  @available(macOS 10.15, *)
  func encodeIntersection(commandBuffer: MTLCommandBuffer, intersectionType: MPSIntersectionType, rayBuffer: MTLBuffer, rayBufferOffset: Int, rayIndexBuffer: MTLBuffer, rayIndexBufferOffset: Int, intersectionBuffer: MTLBuffer, intersectionBufferOffset: Int, rayIndexCountBuffer: MTLBuffer, rayIndexCountBufferOffset: Int, accelerationStructure: MPSAccelerationStructure)
  @available(macOS 10.15, *)
  func encodeIntersection(commandBuffer: MTLCommandBuffer, intersectionType: MPSIntersectionType, rayTexture: MTLTexture, intersectionTexture: MTLTexture, accelerationStructure: MPSAccelerationStructure)
}
@available(macOS 10.13, *)
func MPSSupportsMTLDevice(_ device: MTLDevice?) -> Bool
func MPSHintTemporaryMemoryHighWaterMark(_ cmdBuf: MTLCommandBuffer, _ bytes: Int)
func MPSSetHeapCacheDuration(_ cmdBuf: MTLCommandBuffer, _ seconds: Double)
struct MPSDeviceOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.14.4, *)
  static var Default: MPSDeviceOptions { get }
  @available(macOS 10.14.4, *)
  static var lowPower: MPSDeviceOptions { get }
  @available(macOS 10.14.4, *)
  static var skipRemovable: MPSDeviceOptions { get }
}
@available(macOS 10.14.4, *)
func MPSGetPreferredDevice(_ options: MPSDeviceOptions) -> MTLDevice?
