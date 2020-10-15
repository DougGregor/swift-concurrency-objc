
extension UITabBar {
  @available(tvOS 7.0, *)
  enum ItemPositioning : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case fill
    case centered
  }
}
@available(tvOS 2.0, *)
class UITabBar : UIView {
  weak var delegate: @sil_weak UITabBarDelegate?
  var items: [UITabBarItem]?
  weak var selectedItem: @sil_weak UITabBarItem?
  func setItems(_ items: [UITabBarItem]?, animated: Bool)
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 10.0, *)
  @NSCopying var unselectedItemTintColor: UIColor?
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(tvOS 6.0, *)
  var shadowImage: UIImage?
  @available(tvOS 7.0, *)
  var itemWidth: CGFloat
  @available(tvOS 7.0, *)
  var itemSpacing: CGFloat
  @available(tvOS 7.0, *)
  var isTranslucent: Bool
  @available(tvOS 13.0, *)
  @NSCopying var standardAppearance: UITabBarAppearance
  @available(tvOS 13.0, *)
  var leadingAccessoryView: UIView { get }
  @available(tvOS 13.0, *)
  var trailingAccessoryView: UIView { get }
}
protocol UITabBarDelegate : NSObjectProtocol {
  @available(tvOS 2.0, *)
  optional func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
}
