
typealias DRType = CFTypeRef
typealias DRRefConRetainCallback = @convention(c) (UnsafeRawPointer?) -> UnsafeRawPointer?
typealias DRRefConReleaseCallback = @convention(c) (UnsafeRawPointer?) -> Void
struct DRRefConCallbacks {
  var version: UInt
  var retain: DRRefConRetainCallback!
  var release: DRRefConReleaseCallback!
  init()
  init(version: UInt, retain: DRRefConRetainCallback!, release: DRRefConReleaseCallback!)
}
let kDRRefConCFTypeCallbacks: DRRefConCallbacks
@available(macOS 10.2, *)
func DRSetRefCon(_ ref: DRType!, _ refCon: UnsafeMutableRawPointer!, _ callbacks: UnsafePointer<DRRefConCallbacks>!)
@available(macOS 10.2, *)
func DRGetRefCon(_ ref: DRType!) -> UnsafeMutableRawPointer!
@available(macOS 10.5, *)
func DRCopyLocalizedStringForValue(_ value: CFString!) -> Unmanaged<CFString>!
