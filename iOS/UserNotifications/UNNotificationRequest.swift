
@available(iOS 10.0, *)
class UNNotificationRequest : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  @NSCopying var content: UNNotificationContent { get }
  @NSCopying var trigger: UNNotificationTrigger? { get }
  convenience init(identifier: String, content: UNNotificationContent, trigger: UNNotificationTrigger?)
}
