
struct UNNotificationSoundName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.14, *)
class UNNotificationSound : NSObject, NSCopying, NSSecureCoding {
  @NSCopying class var `default`: UNNotificationSound { get }
  @NSCopying class var defaultCritical: UNNotificationSound { get }
  class func defaultCriticalSound(withAudioVolume volume: Float) -> Self
  convenience init(named name: UNNotificationSoundName)
  class func criticalSoundNamed(_ name: UNNotificationSoundName) -> Self
  class func criticalSoundNamed(_ name: UNNotificationSoundName, withAudioVolume volume: Float) -> Self
}
