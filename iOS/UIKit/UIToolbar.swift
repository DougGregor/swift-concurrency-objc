
@available(iOS 2.0, *)
class UIToolbar : UIView, UIBarPositioning {
  var barStyle: UIBarStyle
  var items: [UIBarButtonItem]?
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  func setItems(_ items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 5.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 5.0, *)
  func backgroundImage(forToolbarPosition topOrBottom: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 6.0, *)
  func setShadowImage(_ shadowImage: UIImage?, forToolbarPosition topOrBottom: UIBarPosition)
  @available(iOS 6.0, *)
  func shadowImage(forToolbarPosition topOrBottom: UIBarPosition) -> UIImage?
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UIToolbarAppearance
  @available(iOS 13.0, *)
  @NSCopying var compactAppearance: UIToolbarAppearance?
  @available(iOS 7.0, *)
  weak var delegate: @sil_weak UIToolbarDelegate?
}
protocol UIToolbarDelegate : UIBarPositioningDelegate {
}
