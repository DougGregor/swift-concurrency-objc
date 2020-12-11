
@available(iOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(iOS 5.0, *)
  class func show(withTitle title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  class func show(withTitle title: String?, message: String?) async
  @available(iOS 6.0, *)
  class func show(withTitle title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  @available(iOS 6.0, *)
  class func show(withTitle title: String?, message: String?, duration: TimeInterval) async
}
