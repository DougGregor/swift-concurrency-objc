
extension UIScene {
  @available(iOS 13.0, *)
  class ConnectionOptions : NSObject {
    var urlContexts: Set<UIOpenURLContext> { get }
    var sourceApplication: String? { get }
    var handoffUserActivityType: String? { get }
    var userActivities: Set<NSUserActivity> { get }
    var notificationResponse: UNNotificationResponse? { get }
    var shortcutItem: UIApplicationShortcutItem? { get }
  }
  @available(iOS 13.0, *)
  class ActivationRequestOptions : NSObject {
    var requestingScene: UIScene?
  }
  @available(iOS 13.0, *)
  class OpenExternalURLOptions : NSObject {
    var universalLinksOnly: Bool
  }
  @available(iOS 13.0, *)
  class OpenURLOptions : NSObject {
    var sourceApplication: String? { get }
    var annotation: Any? { get }
    var openInPlace: Bool { get }
  }
}
@available(iOS 13.0, *)
class UISceneDestructionRequestOptions : NSObject {
}
