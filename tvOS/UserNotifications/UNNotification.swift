
@available(tvOS 10.0, *)
class UNNotification : NSObject, NSCopying, NSSecureCoding {
  var date: Date { get }
  @NSCopying var request: UNNotificationRequest { get }
}
