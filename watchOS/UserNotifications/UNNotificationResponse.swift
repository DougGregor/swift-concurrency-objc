
@available(watchOS 3.0, *)
let UNNotificationDefaultActionIdentifier: String
@available(watchOS 3.0, *)
let UNNotificationDismissActionIdentifier: String
@available(watchOS 3.0, *)
class UNNotificationResponse : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var notification: UNNotification { get }
  var actionIdentifier: String { get }
}
@available(watchOS 3.0, *)
class UNTextInputNotificationResponse : UNNotificationResponse {
  var userText: String { get }
}
