
@available(tvOS 8.0, *)
enum MTLPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case keepCurrent
  case nonVolatile
  case volatile
  case empty
}
@available(tvOS 8.0, *)
enum MTLCPUCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case defaultCache
  case writeCombined
}
@available(tvOS 9.0, *)
enum MTLStorageMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case shared
  case `private`
  @available(tvOS 10.0, *)
  case memoryless
}
@available(tvOS 13.0, *)
enum MTLHazardTrackingMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case untracked
  case tracked
}
var MTLResourceCPUCacheModeShift: Int32 { get }
var MTLResourceCPUCacheModeMask: UInt { get }
var MTLResourceStorageModeShift: Int32 { get }
var MTLResourceStorageModeMask: UInt { get }
var MTLResourceHazardTrackingModeShift: Int32 { get }
var MTLResourceHazardTrackingModeMask: UInt { get }
@available(tvOS 8.0, *)
struct MTLResourceOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var cpuCacheModeWriteCombined: MTLResourceOptions { get }
  @available(tvOS 9.0, *)
  static var storageModeShared: MTLResourceOptions { get }
  @available(tvOS 9.0, *)
  static var storageModePrivate: MTLResourceOptions { get }
  @available(tvOS 10.0, *)
  static var storageModeMemoryless: MTLResourceOptions { get }
  @available(tvOS 10.0, *)
  static var hazardTrackingModeUntracked: MTLResourceOptions { get }
  @available(tvOS 13.0, *)
  static var hazardTrackingModeTracked: MTLResourceOptions { get }
  static var optionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}
@available(tvOS 8.0, *)
protocol MTLResource : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(tvOS 9.0, *)
  var storageMode: MTLStorageMode { get }
  @available(tvOS 13.0, *)
  var hazardTrackingMode: MTLHazardTrackingMode { get }
  @available(tvOS 13.0, *)
  var resourceOptions: MTLResourceOptions { get }
  func setPurgeableState(_ state: MTLPurgeableState) -> MTLPurgeableState
  @available(tvOS 10.0, *)
  var heap: MTLHeap? { get }
  @available(tvOS 13.0, *)
  var heapOffset: Int { get }
  @available(tvOS 11.0, *)
  var allocatedSize: Int { get }
  @available(tvOS 10.0, *)
  func makeAliasable()
  @available(tvOS 10.0, *)
  func isAliasable() -> Bool
}
