
typealias IOSurfaceID = UInt32
struct IOSurfaceLockOptions : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var readOnly: IOSurfaceLockOptions { get }
  static var avoidSync: IOSurfaceLockOptions { get }
}
struct IOSurfacePurgeabilityState : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var purgeableVolatile: IOSurfacePurgeabilityState { get }
  static var purgeableEmpty: IOSurfacePurgeabilityState { get }
  static var purgeableKeepCurrent: IOSurfacePurgeabilityState { get }
}
var kIOSurfaceDefaultCache: Int { get }
var kIOSurfaceInhibitCache: Int { get }
var kIOSurfaceWriteThruCache: Int { get }
var kIOSurfaceCopybackCache: Int { get }
var kIOSurfaceWriteCombineCache: Int { get }
var kIOSurfaceCopybackInnerCache: Int { get }
var kIOSurfaceMapCacheShift: Int { get }
var kIOSurfaceMapDefaultCache: Int { get }
var kIOSurfaceMapInhibitCache: Int { get }
var kIOSurfaceMapWriteThruCache: Int { get }
var kIOSurfaceMapCopybackCache: Int { get }
var kIOSurfaceMapWriteCombineCache: Int { get }
var kIOSurfaceMapCopybackInnerCache: Int { get }
var kIOSurfaceSuccess: Int32 { get }
