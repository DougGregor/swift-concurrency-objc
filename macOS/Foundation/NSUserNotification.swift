
extension NSUserNotification {
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
  enum ActivationType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case contentsClicked
    case actionButtonClicked
    @available(macOS 10.9, *)
    case replied
    @available(macOS 10.10, *)
    case additionalActionClicked
  }
}
@available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
class NSUserNotification : NSObject, NSCopying {
  var title: String?
  var subtitle: String?
  var informativeText: String?
  var actionButtonTitle: String
  var userInfo: [String : Any]?
  var deliveryDate: Date?
  var deliveryTimeZone: TimeZone?
  var deliveryRepeatInterval: DateComponents?
  var actualDeliveryDate: Date? { get }
  var isPresented: Bool { get }
  var isRemote: Bool { get }
  var soundName: String?
  var hasActionButton: Bool
  var activationType: NSUserNotification.ActivationType { get }
  var otherButtonTitle: String
  @available(macOS 10.9, *)
  var identifier: String?
  @available(macOS 10.9, *)
  var hasReplyButton: Bool
  @available(macOS 10.9, *)
  var responsePlaceholder: String?
  @available(macOS 10.9, *)
  @NSCopying var response: NSAttributedString? { get }
  @available(macOS 10.10, *)
  var additionalActions: [NSUserNotificationAction]?
  @available(macOS 10.10, *)
  @NSCopying var additionalActivationAction: NSUserNotificationAction? { get }
}
@available(macOS, introduced: 10.10, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
class NSUserNotificationAction : NSObject, NSCopying {
  convenience init(identifier: String?, title: String?)
  var identifier: String? { get }
  var title: String? { get }
}
@available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
let NSUserNotificationDefaultSoundName: String
@available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
class NSUserNotificationCenter : NSObject {
  class var `default`: NSUserNotificationCenter { get }
  unowned(unsafe) var delegate: @sil_unmanaged NSUserNotificationCenterDelegate?
  var scheduledNotifications: [NSUserNotification]
  func scheduleNotification(_ notification: NSUserNotification)
  func removeScheduledNotification(_ notification: NSUserNotification)
  var deliveredNotifications: [NSUserNotification] { get }
  func deliver(_ notification: NSUserNotification)
  func removeDeliveredNotification(_ notification: NSUserNotification)
  func removeAllDeliveredNotifications()
}
protocol NSUserNotificationCenterDelegate : NSObjectProtocol {
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
  optional func userNotificationCenter(_ center: NSUserNotificationCenter, didDeliver notification: NSUserNotification)
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
  optional func userNotificationCenter(_ center: NSUserNotificationCenter, didActivate notification: NSUserNotification)
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "All NSUserNotifications API should be replaced with UserNotifications.frameworks API")
  optional func userNotificationCenter(_ center: NSUserNotificationCenter, shouldPresent notification: NSUserNotification) -> Bool
}
