
@available(tvOS 2.0, *)
class UINavigationBar : UIView, NSCoding, UIBarPositioning {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UINavigationBarDelegate?
  @available(tvOS 3.0, *)
  var isTranslucent: Bool
  func pushItem(_ item: UINavigationItem, animated: Bool)
  func popItem(animated: Bool) -> UINavigationItem?
  var topItem: UINavigationItem? { get }
  var backItem: UINavigationItem? { get }
  var items: [UINavigationItem]?
  func setItems(_ items: [UINavigationItem]?, animated: Bool)
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func backgroundImage(for barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 6.0, *)
  var shadowImage: UIImage?
  @available(tvOS 5.0, *)
  var titleTextAttributes: [NSAttributedString.Key : Any]?
  @available(tvOS 5.0, *)
  func setTitleVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics)
  @available(tvOS 5.0, *)
  func titleVerticalPositionAdjustment(for barMetrics: UIBarMetrics) -> CGFloat
  @available(tvOS 7.0, *)
  var backIndicatorImage: UIImage?
  @available(tvOS 7.0, *)
  var backIndicatorTransitionMaskImage: UIImage?
  @available(tvOS 13.0, *)
  @NSCopying var standardAppearance: UINavigationBarAppearance
  @available(tvOS 13.0, *)
  @NSCopying var compactAppearance: UINavigationBarAppearance?
  @available(tvOS 13.0, *)
  @NSCopying var scrollEdgeAppearance: UINavigationBarAppearance?
}
protocol UINavigationBarDelegate : UIBarPositioningDelegate {
  @available(tvOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPush item: UINavigationItem) -> Bool
  @available(tvOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, didPush item: UINavigationItem)
  @available(tvOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, shouldPop item: UINavigationItem) -> Bool
  @available(tvOS 2.0, *)
  optional func navigationBar(_ navigationBar: UINavigationBar, didPop item: UINavigationItem)
}
