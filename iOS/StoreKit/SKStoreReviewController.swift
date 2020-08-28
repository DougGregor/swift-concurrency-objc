
@available(iOS 10.3, *)
class SKStoreReviewController : NSObject {
  @available(iOS, introduced: 10.3, deprecated: 14.0)
  class func requestReview()
  @available(iOS 14.0, *)
  class func requestReview(in windowScene: UIWindowScene)
}
