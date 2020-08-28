
@available(macOS 10.14, *)
enum UNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case authorized
  @available(macOS 10.14, *)
  case provisional
}
@available(macOS 10.14, *)
enum UNShowPreviewsSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case always
  case whenAuthenticated
  case never
}
@available(macOS 10.14, *)
enum UNNotificationSetting : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notSupported
  case disabled
  case enabled
}
@available(macOS 10.14, *)
enum UNAlertStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case banner
  case alert
}
@available(macOS 10.14, *)
class UNNotificationSettings : NSObject, NSCopying, NSSecureCoding {
  var authorizationStatus: UNAuthorizationStatus { get }
  var soundSetting: UNNotificationSetting { get }
  var badgeSetting: UNNotificationSetting { get }
  var alertSetting: UNNotificationSetting { get }
  var notificationCenterSetting: UNNotificationSetting { get }
  var lockScreenSetting: UNNotificationSetting { get }
  var alertStyle: UNAlertStyle { get }
  @available(macOS 10.14, *)
  var showPreviewsSetting: UNShowPreviewsSetting { get }
  @available(macOS 10.14, *)
  var criticalAlertSetting: UNNotificationSetting { get }
  @available(macOS 10.14, *)
  var providesAppNotificationSettings: Bool { get }
}
