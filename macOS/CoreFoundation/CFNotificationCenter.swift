
struct CFNotificationName : Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: CFString)
  init(rawValue: CFString)
  let rawValue: CFString
}
class CFNotificationCenter : _CFObject {
}
typealias CFNotificationCallback = @convention(c) (CFNotificationCenter?, UnsafeMutableRawPointer?, CFNotificationName?, UnsafeRawPointer?, CFDictionary?) -> Void
enum CFNotificationSuspensionBehavior : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case drop
  case coalesce
  case hold
  case deliverImmediately
}
func CFNotificationCenterGetTypeID() -> CFTypeID
func CFNotificationCenterGetLocalCenter() -> CFNotificationCenter!
func CFNotificationCenterGetDistributedCenter() -> CFNotificationCenter!
func CFNotificationCenterGetDarwinNotifyCenter() -> CFNotificationCenter!
func CFNotificationCenterAddObserver(_ center: CFNotificationCenter!, _ observer: UnsafeRawPointer!, _ callBack: CFNotificationCallback!, _ name: CFString!, _ object: UnsafeRawPointer!, _ suspensionBehavior: CFNotificationSuspensionBehavior)
func CFNotificationCenterRemoveObserver(_ center: CFNotificationCenter!, _ observer: UnsafeRawPointer!, _ name: CFNotificationName!, _ object: UnsafeRawPointer!)
func CFNotificationCenterRemoveEveryObserver(_ center: CFNotificationCenter!, _ observer: UnsafeRawPointer!)
func CFNotificationCenterPostNotification(_ center: CFNotificationCenter!, _ name: CFNotificationName!, _ object: UnsafeRawPointer!, _ userInfo: CFDictionary!, _ deliverImmediately: Bool)
var kCFNotificationDeliverImmediately: CFOptionFlags { get }
var kCFNotificationPostToAllSessions: CFOptionFlags { get }
func CFNotificationCenterPostNotificationWithOptions(_ center: CFNotificationCenter!, _ name: CFNotificationName!, _ object: UnsafeRawPointer!, _ userInfo: CFDictionary!, _ options: CFOptionFlags)
