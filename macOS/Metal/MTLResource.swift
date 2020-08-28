
@available(macOS 10.11, *)
enum MTLPurgeableState : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case keepCurrent
  case nonVolatile
  case volatile
  case empty
}
@available(macOS 10.11, *)
enum MTLCPUCacheMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case defaultCache
  case writeCombined
}
@available(macOS 10.11, *)
enum MTLStorageMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case shared
  @available(macOS 10.11, *)
  case managed
  case `private`
  @available(macOS 11.0, *)
  case memoryless
}
@available(macOS 10.15, *)
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
@available(macOS 10.11, *)
struct MTLResourceOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var cpuCacheModeWriteCombined: MTLResourceOptions { get }
  @available(macOS 10.11, *)
  static var storageModeShared: MTLResourceOptions { get }
  @available(macOS 10.11, *)
  static var storageModeManaged: MTLResourceOptions { get }
  @available(macOS 10.11, *)
  static var storageModePrivate: MTLResourceOptions { get }
  @available(macOS 11.0, *)
  static var storageModeMemoryless: MTLResourceOptions { get }
  @available(macOS 10.13, *)
  static var hazardTrackingModeUntracked: MTLResourceOptions { get }
  @available(macOS 10.15, *)
  static var hazardTrackingModeTracked: MTLResourceOptions { get }
  static var optionCPUCacheModeWriteCombined: MTLResourceOptions { get }
}
@available(macOS 10.11, *)
protocol MTLResource : NSObjectProtocol {
  var label: String? { get set }
  var device: MTLDevice { get }
  var cpuCacheMode: MTLCPUCacheMode { get }
  @available(macOS 10.11, *)
  var storageMode: MTLStorageMode { get }
  @available(macOS 10.15, *)
  var hazardTrackingMode: MTLHazardTrackingMode { get }
  @available(macOS 10.15, *)
  var resourceOptions: MTLResourceOptions { get }
  func setPurgeableState(_ state: MTLPurgeableState) -> MTLPurgeableState
  @available(macOS 10.13, *)
  var heap: MTLHeap? { get }
  @available(macOS 10.15, *)
  var heapOffset: Int { get }
  @available(macOS 10.13, *)
  var allocatedSize: Int { get }
  @available(macOS 10.13, *)
  func makeAliasable()
  @available(macOS 10.13, *)
  func isAliasable() -> Bool
}
