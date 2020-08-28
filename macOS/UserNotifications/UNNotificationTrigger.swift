
@available(macOS 10.14, *)
class UNNotificationTrigger : NSObject, NSCopying, NSSecureCoding {
  var repeats: Bool { get }
}
@available(macOS 10.14, *)
class UNPushNotificationTrigger : UNNotificationTrigger {
}
@available(macOS 10.14, *)
class UNTimeIntervalNotificationTrigger : UNNotificationTrigger {
  var timeInterval: TimeInterval { get }
  convenience init(timeInterval: TimeInterval, repeats: Bool)
  func nextTriggerDate() -> Date?
}
@available(macOS 10.14, *)
class UNCalendarNotificationTrigger : UNNotificationTrigger {
  var dateComponents: DateComponents { get }
  convenience init(dateMatching dateComponents: DateComponents, repeats: Bool)
  func nextTriggerDate() -> Date?
}
