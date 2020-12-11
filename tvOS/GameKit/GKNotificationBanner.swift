
@available(tvOS 5.0, *)
class GKNotificationBanner : NSObject {
  @available(tvOS 5.0, *)
  class func show(withTitle title: String?, message: String?, completionHandler: (() -> Void)? = nil)
  @available(tvOS 5.0, *)
  class func show(withTitle title: String?, message: String?) async
  @available(tvOS 6.0, *)
  class func show(withTitle title: String?, message: String?, duration: TimeInterval, completionHandler: (() -> Void)? = nil)
  @available(tvOS 6.0, *)
  class func show(withTitle title: String?, message: String?, duration: TimeInterval) async
}
