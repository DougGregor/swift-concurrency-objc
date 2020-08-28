
@available(watchOS 6.0, *)
class UNNotificationServiceExtension : NSObject {
  func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void)
  func serviceExtensionTimeWillExpire()
}
