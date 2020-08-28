
@available(tvOS 10.0, *)
let UNNotificationDefaultActionIdentifier: String
@available(tvOS 10.0, *)
let UNNotificationDismissActionIdentifier: String
@available(tvOS 10.0, *)
class UNNotificationResponse : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var notification: UNNotification { get }
  var actionIdentifier: String { get }
}
@available(tvOS 10.0, *)
class UNTextInputNotificationResponse : UNNotificationResponse {
  var userText: String { get }
}
