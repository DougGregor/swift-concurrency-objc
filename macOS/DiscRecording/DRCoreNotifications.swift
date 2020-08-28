
class DRNotificationCenterRef : _CFObject {
}
typealias DRNotificationCallback = @convention(c) (DRNotificationCenterRef?, UnsafeMutableRawPointer?, CFString?, DRType?, CFDictionary?) -> Void
@available(macOS 10.2, *)
func DRNotificationCenterGetTypeID() -> CFTypeID
@available(macOS 10.2, *)
func DRNotificationCenterCreate() -> Unmanaged<DRNotificationCenterRef>!
@available(macOS 10.2, *)
func DRNotificationCenterCreateRunLoopSource(_ center: DRNotificationCenterRef!) -> Unmanaged<CFRunLoopSource>!
@available(macOS 10.2, *)
func DRNotificationCenterAddObserver(_ center: DRNotificationCenterRef!, _ observer: UnsafeRawPointer!, _ callback: DRNotificationCallback!, _ name: CFString!, _ object: DRType!)
@available(macOS 10.2, *)
func DRNotificationCenterRemoveObserver(_ center: DRNotificationCenterRef!, _ observer: UnsafeRawPointer!, _ name: CFString!, _ object: DRType!)
