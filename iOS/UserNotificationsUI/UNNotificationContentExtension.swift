
@available(iOS 10.0, *)
enum UNNotificationContentExtensionMediaPlayPauseButtonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case `default`
  case overlay
}
@available(iOS 10.0, *)
enum UNNotificationContentExtensionResponseOption : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case doNotDismiss
  case dismiss
  case dismissAndForwardAction
}
@available(iOS 10.0, *)
protocol UNNotificationContentExtension : NSObjectProtocol {
  func didReceive(_ notification: UNNotification)
  optional func didReceive(_ response: UNNotificationResponse, completionHandler completion: @escaping (UNNotificationContentExtensionResponseOption) -> Void)
  optional var mediaPlayPauseButtonType: UNNotificationContentExtensionMediaPlayPauseButtonType { get }
  optional var mediaPlayPauseButtonFrame: CGRect { get }
  @NSCopying optional var mediaPlayPauseButtonTintColor: UIColor { get }
  optional func mediaPlay()
  optional func mediaPause()
}
extension NSExtensionContext {
  @available(iOS 12.0, *)
  var notificationActions: [UNNotificationAction]
  @available(iOS 12.0, *)
  func performNotificationDefaultAction()
  @available(iOS 12.0, *)
  func dismissNotificationContentExtension()
  @available(iOS 10.0, *)
  func mediaPlayingStarted()
  @available(iOS 10.0, *)
  func mediaPlayingPaused()
}
