
extension UITabBar {
  @available(iOS 7.0, *)
  enum ItemPositioning : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case fill
    case centered
  }
}
@available(iOS 2.0, *)
class UITabBar : UIView {
  weak var delegate: @sil_weak UITabBarDelegate?
  var items: [UITabBarItem]?
  weak var selectedItem: @sil_weak UITabBarItem?
  func setItems(_ items: [UITabBarItem]?, animated: Bool)
  func beginCustomizingItems(_ items: [UITabBarItem])
  func endCustomizing(animated: Bool) -> Bool
  var isCustomizing: Bool { get }
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 10.0, *)
  @NSCopying var unselectedItemTintColor: UIColor?
  @available(iOS, introduced: 5.0, deprecated: 8.0)
  var selectedImageTintColor: UIColor?
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(iOS 6.0, *)
  var shadowImage: UIImage?
  @available(iOS 7.0, *)
  var itemPositioning: UITabBar.ItemPositioning
  @available(iOS 7.0, *)
  var itemWidth: CGFloat
  @available(iOS 7.0, *)
  var itemSpacing: CGFloat
  @available(iOS 7.0, *)
  var barStyle: UIBarStyle
  @available(iOS 7.0, *)
  var isTranslucent: Bool
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UITabBarAppearance
}
protocol UITabBarDelegate : NSObjectProtocol {
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, willBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didBeginCustomizing items: [UITabBarItem])
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, willEndCustomizing items: [UITabBarItem], changed: Bool)
  @available(iOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didEndCustomizing items: [UITabBarItem], changed: Bool)
}
extension UITabBar : UISpringLoadedInteractionSupporting {
}
