
@available(macOS 10.14, *)
class UNNotificationContent : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var attachments: [UNNotificationAttachment] { get }
  @NSCopying var badge: NSNumber? { get }
  var body: String { get }
  var categoryIdentifier: String { get }
  @NSCopying var sound: UNNotificationSound? { get }
  var subtitle: String { get }
  var threadIdentifier: String { get }
  var title: String { get }
  var userInfo: [AnyHashable : Any] { get }
  var summaryArgument: String { get }
  var summaryArgumentCount: Int { get }
  var targetContentIdentifier: String? { get }
}
@available(macOS 10.14, *)
class UNMutableNotificationContent : UNNotificationContent {
}
