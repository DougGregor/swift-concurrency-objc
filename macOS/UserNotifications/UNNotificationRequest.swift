
@available(macOS 10.14, *)
class UNNotificationRequest : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  @NSCopying var content: UNNotificationContent { get }
  @NSCopying var trigger: UNNotificationTrigger? { get }
  convenience init(identifier: String, content: UNNotificationContent, trigger: UNNotificationTrigger?)
}
