
@available(macOS 10.14, *)
class UNNotification : NSObject, NSCopying, NSSecureCoding {
  var date: Date { get }
  @NSCopying var request: UNNotificationRequest { get }
}
