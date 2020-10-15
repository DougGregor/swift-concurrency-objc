
@available(tvOS 10.0, *)
class UNNotificationContent : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @NSCopying var badge: NSNumber? { get }
  @available(tvOS 13.0, *)
  var targetContentIdentifier: String? { get }
}
@available(tvOS 10.0, *)
class UNMutableNotificationContent : UNNotificationContent {
}
