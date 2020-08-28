
@available(iOS 10.0, *)
let UNNotificationDefaultActionIdentifier: String
@available(iOS 10.0, *)
let UNNotificationDismissActionIdentifier: String
@available(iOS 10.0, *)
class UNNotificationResponse : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var notification: UNNotification { get }
  var actionIdentifier: String { get }
}
@available(iOS 10.0, *)
class UNTextInputNotificationResponse : UNNotificationResponse {
  var userText: String { get }
}
