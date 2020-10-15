
@available(tvOS 10.0, *)
class UNNotificationTrigger : NSObject, NSCopying, NSSecureCoding {
  var repeats: Bool { get }
}
@available(tvOS 10.0, *)
class UNPushNotificationTrigger : UNNotificationTrigger {
}
@available(tvOS 10.0, *)
class UNTimeIntervalNotificationTrigger : UNNotificationTrigger {
  var timeInterval: TimeInterval { get }
  convenience init(timeInterval: TimeInterval, repeats: Bool)
  func nextTriggerDate() -> Date?
}
@available(tvOS 10.0, *)
class UNCalendarNotificationTrigger : UNNotificationTrigger {
  var dateComponents: DateComponents { get }
  convenience init(dateMatching dateComponents: DateComponents, repeats: Bool)
  func nextTriggerDate() -> Date?
}
