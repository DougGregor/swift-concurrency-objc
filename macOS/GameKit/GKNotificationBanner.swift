
@available(macOS 10.8, *)
class GKNotificationBanner : NSObject {
  @available(macOS 10.8, *)
  class func show(withTitle title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(macOS 10.8, *)
  class func show(withTitle title: String?, message: String?) async
  @available(macOS 10.8, *)
  class func show(withTitle title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  @available(macOS 10.8, *)
  class func show(withTitle title: String?, message: String?, duration: TimeInterval) async
}
