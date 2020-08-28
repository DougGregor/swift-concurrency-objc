
@available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use UserNotifications Framework's UNNotificationRequest")
class UILocalNotification : NSObject, NSCopying, NSCoding {
  var fireDate: Date?
  var timeZone: TimeZone?
  var repeatInterval: NSCalendar.Unit
  var repeatCalendar: Calendar?
  @available(watchOS 2.0, *)
  var regionTriggersOnce: Bool
  var alertBody: String?
  var hasAction: Bool
  var alertAction: String?
  var alertLaunchImage: String?
  @available(watchOS 2.0, *)
  var alertTitle: String?
  var soundName: String?
  var applicationIconBadgeNumber: Int
  var userInfo: [AnyHashable : Any]?
  @available(watchOS 2.0, *)
  var category: String?
}
@available(watchOS, introduced: 2.0, deprecated: 3.0, message: "Use UserNotifications Framework's +[UNNotificationSound defaultSound]")
let UILocalNotificationDefaultSoundName: String
