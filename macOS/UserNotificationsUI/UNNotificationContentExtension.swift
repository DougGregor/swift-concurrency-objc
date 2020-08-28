
@available(macOS 11.0, *)
enum UNNotificationContentExtensionMediaPlayPauseButtonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case `default`
  case overlay
}
@available(macOS 11.0, *)
enum UNNotificationContentExtensionResponseOption : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case doNotDismiss
  case dismiss
  case dismissAndForwardAction
}
@available(macOS 11.0, *)
protocol UNNotificationContentExtension : NSObjectProtocol {
  optional var mediaPlayPauseButtonType: UNNotificationContentExtensionMediaPlayPauseButtonType { get }
  optional var mediaPlayPauseButtonFrame: CGRect { get }
  @NSCopying optional var mediaPlayPauseButtonTintColor: NSColor { get }
  optional func mediaPlay()
  optional func mediaPause()
}
extension NSExtensionContext {
  @available(macOS 11.0, *)
  func performNotificationDefaultAction()
  @available(macOS 11.0, *)
  func dismissNotificationContentExtension()
  @available(macOS 11.0, *)
  func mediaPlayingStarted()
  @available(macOS 11.0, *)
  func mediaPlayingPaused()
}
