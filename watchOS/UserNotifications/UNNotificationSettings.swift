
@available(watchOS 3.0, *)
enum UNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case authorized
  @available(watchOS 5.0, *)
  case provisional
}
@available(watchOS 3.0, *)
enum UNNotificationSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSupported
  case disabled
  case enabled
}
@available(watchOS 3.0, *)
class UNNotificationSettings : NSObject, NSCopying, NSSecureCoding {
  var authorizationStatus: UNAuthorizationStatus { get }
  var soundSetting: UNNotificationSetting { get }
  var alertSetting: UNNotificationSetting { get }
  var notificationCenterSetting: UNNotificationSetting { get }
  @available(watchOS 5.0, *)
  var criticalAlertSetting: UNNotificationSetting { get }
  @available(watchOS 5.0, *)
  var providesAppNotificationSettings: Bool { get }
  @available(watchOS 6.0, *)
  var announcementSetting: UNNotificationSetting { get }
}
