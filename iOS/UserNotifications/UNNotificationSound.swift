
struct UNNotificationSoundName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(iOS 10.0, *)
class UNNotificationSound : NSObject, NSCopying, NSSecureCoding {
  @NSCopying class var `default`: UNNotificationSound { get }
  @available(iOS 12.0, *)
  @NSCopying class var defaultCritical: UNNotificationSound { get }
  @available(iOS 12.0, *)
  class func defaultCriticalSound(withAudioVolume volume: Float) -> Self
  convenience init(named name: UNNotificationSoundName)
  @available(iOS 12.0, *)
  class func criticalSoundNamed(_ name: UNNotificationSoundName) -> Self
  @available(iOS 12.0, *)
  class func criticalSoundNamed(_ name: UNNotificationSoundName, withAudioVolume volume: Float) -> Self
}
