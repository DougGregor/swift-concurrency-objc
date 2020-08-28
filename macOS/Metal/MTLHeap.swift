
@available(macOS 10.15, *)
enum MTLHeapType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case placement
  @available(macOS 11.0, *)
  case sparse
}
@available(macOS 10.13, *)
class MTLHeapDescriptor : NSObject, NSCopying {
  var size: Int
  var storageMode: MTLStorageMode
  var cpuCacheMode: MTLCPUCacheMode
  @available(macOS 10.15, *)
  var hazardTrackingMode: MTLHazardTrackingMode
  @available(macOS 10.15, *)
  var resourceOptions: MTLResourceOptions
  @available(macOS 10.15, *)
  var type: MTLHeapType
}
@available(macOS 10.13, *)
protocol MTLHeap : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var storageMode: MTLStorageMode { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(macOS 10.15, *)
  var hazardTrackingMode: MTLHazardTrackingMode { get }
  @available(macOS 10.15, *)
  var resourceOptions: MTLResourceOptions { get }
  var size: Int { get }
  var usedSize: Int { get }
  @available(macOS 10.13, *)
  var currentAllocatedSize: Int { get }
  func maxAvailableSize(alignment: Int) -> Int
  func makeBuffer(length: Int, options: MTLResourceOptions = []) -> MTLBuffer?
  func makeTexture(descriptor desc: MTLTextureDescriptor) -> MTLTexture?
  func setPurgeableState(_ state: MTLPurgeableState) -> MTLPurgeableState
  @available(macOS 10.15, *)
  var type: MTLHeapType { get }
  @available(macOS 10.15, *)
  func makeBuffer(length: Int, options: MTLResourceOptions = [], offset: Int) -> MTLBuffer?
  @available(macOS 10.15, *)
  func makeTexture(descriptor: MTLTextureDescriptor, offset: Int) -> MTLTexture?
}
