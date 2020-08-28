
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNAuthorizationOptions")
struct UIUserNotificationType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var badge: UIUserNotificationType { get }
  static var sound: UIUserNotificationType { get }
  static var alert: UIUserNotificationType { get }
}
@available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction or UNTextInputNotificationAction")
enum UIUserNotificationActionBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case textInput
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationActionOptions")
enum UIUserNotificationActivationMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case foreground
  case background
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNNotificationCategory actions] or -[UNNotificationCategory minimalActions]")
enum UIUserNotificationActionContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case minimal
}
@available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNTextInputNotificationAction textInputButtonTitle]")
let UIUserNotificationTextInputActionButtonTitleKey: String
@available(iOS, introduced: 9.0, deprecated: 10.0, message: "Use UserNotifications Framework's -[UNTextInputNotificationResponse userText]")
let UIUserNotificationActionResponseTypedTextKey: String
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationSettings")
class UIUserNotificationSettings : NSObject {
  convenience init(types: UIUserNotificationType, categories: Set<UIUserNotificationCategory>?)
  var types: UIUserNotificationType { get }
  var categories: Set<UIUserNotificationCategory>? { get }
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationCategory")
class UIUserNotificationCategory : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String? { get }
  func actions(for context: UIUserNotificationActionContext) -> [UIUserNotificationAction]?
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationCategory")
class UIMutableUserNotificationCategory : UIUserNotificationCategory {
  func setActions(_ actions: [UIUserNotificationAction]?, for context: UIUserNotificationActionContext)
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction")
class UIUserNotificationAction : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String? { get }
  var title: String? { get }
  @available(iOS 9.0, *)
  var behavior: UIUserNotificationActionBehavior { get }
  @available(iOS 9.0, *)
  var parameters: [AnyHashable : Any] { get }
  var activationMode: UIUserNotificationActivationMode { get }
  var isAuthenticationRequired: Bool { get }
  var isDestructive: Bool { get }
}
@available(iOS, introduced: 8.0, deprecated: 10.0, message: "Use UserNotifications Framework's UNNotificationAction")
class UIMutableUserNotificationAction : UIUserNotificationAction {
}
