
@available(macOS 10.14, *)
let UNNotificationDefaultActionIdentifier: String
@available(macOS 10.14, *)
let UNNotificationDismissActionIdentifier: String
@available(macOS 10.14, *)
class UNNotificationResponse : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var notification: UNNotification { get }
  var actionIdentifier: String { get }
}
@available(macOS 10.14, *)
class UNTextInputNotificationResponse : UNNotificationResponse {
  var userText: String { get }
}
