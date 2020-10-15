
extension UIPageControl {
  @available(tvOS 14.0, *)
  enum InteractionState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case discrete
    case continuous
  }
  @available(tvOS 14.0, *)
  enum BackgroundStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case prominent
    case minimal
  }
}
@available(tvOS 2.0, *)
class UIPageControl : UIControl {
  var numberOfPages: Int
  var currentPage: Int
  var hidesForSinglePage: Bool
  @available(tvOS 6.0, *)
  var pageIndicatorTintColor: UIColor?
  @available(tvOS 6.0, *)
  var currentPageIndicatorTintColor: UIColor?
  @available(tvOS 14.0, *)
  var backgroundStyle: UIPageControl.BackgroundStyle
  @available(tvOS 14.0, *)
  var interactionState: UIPageControl.InteractionState { get }
  @available(tvOS 14.0, *)
  var allowsContinuousInteraction: Bool
  @available(tvOS 14.0, *)
  var preferredIndicatorImage: UIImage?
  @available(tvOS 14.0, *)
  func indicatorImage(forPage page: Int) -> UIImage?
  @available(tvOS 14.0, *)
  func setIndicatorImage(_ image: UIImage?, forPage page: Int)
  func size(forNumberOfPages pageCount: Int) -> CGSize
  @available(tvOS, introduced: 2.0, deprecated: 14.0, message: "defersCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
  var defersCurrentPageDisplay: Bool
  @available(tvOS, introduced: 2.0, deprecated: 14.0, message: "updateCurrentPageDisplay no longer does anything reasonable with the new interaction mode.")
  func updateCurrentPageDisplay()
}
