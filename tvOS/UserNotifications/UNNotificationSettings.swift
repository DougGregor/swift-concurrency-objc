
@available(tvOS 10.0, *)
enum UNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case authorized
  @available(tvOS 12.0, *)
  case provisional
  @available(tvOS 14.0, *)
  case ephemeral
}
@available(tvOS 11.0, *)
enum UNShowPreviewsSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case always
  case whenAuthenticated
  case never
}
@available(tvOS 10.0, *)
enum UNNotificationSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSupported
  case disabled
  case enabled
}
@available(tvOS 10.0, *)
enum UNAlertStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case banner
  case alert
}
@available(tvOS 10.0, *)
class UNNotificationSettings : NSObject, NSCopying, NSSecureCoding {
  var authorizationStatus: UNAuthorizationStatus { get }
  var soundSetting: UNNotificationSetting { get }
  var badgeSetting: UNNotificationSetting { get }
  var alertSetting: UNNotificationSetting { get }
  var notificationCenterSetting: UNNotificationSetting { get }
  var lockScreenSetting: UNNotificationSetting { get }
  var carPlaySetting: UNNotificationSetting { get }
  var alertStyle: UNAlertStyle { get }
  @available(tvOS 11.0, *)
  var showPreviewsSetting: UNShowPreviewsSetting { get }
  @available(tvOS 12.0, *)
  var criticalAlertSetting: UNNotificationSetting { get }
  @available(tvOS 12.0, *)
  var providesAppNotificationSettings: Bool { get }
  @available(tvOS 13.0, *)
  var announcementSetting: UNNotificationSetting { get }
}
