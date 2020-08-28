
@available(iOS 13.0, *)
class UITabBarItemStateAppearance : NSObject {
  var titleTextAttributes: [NSAttributedString.Key : Any]
  var titlePositionAdjustment: UIOffset
  @NSCopying var iconColor: UIColor?
  var badgePositionAdjustment: UIOffset
  @NSCopying var badgeBackgroundColor: UIColor?
  var badgeTextAttributes: [NSAttributedString.Key : Any]
  var badgeTitlePositionAdjustment: UIOffset
}
extension UITabBarItemAppearance {
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case stacked
    case inline
    case compactInline
  }
}
@available(iOS 13.0, *)
class UITabBarItemAppearance : NSObject, NSCopying, NSSecureCoding {
  init(style: UITabBarItemAppearance.Style)
  func configureWithDefault(for style: UITabBarItemAppearance.Style)
  var normal: UITabBarItemStateAppearance { get }
  var selected: UITabBarItemStateAppearance { get }
  var disabled: UITabBarItemStateAppearance { get }
  var focused: UITabBarItemStateAppearance { get }
}
@available(iOS 13.0, *)
class UITabBarAppearance : UIBarAppearance {
  @NSCopying var stackedLayoutAppearance: UITabBarItemAppearance
  @NSCopying var inlineLayoutAppearance: UITabBarItemAppearance
  @NSCopying var compactInlineLayoutAppearance: UITabBarItemAppearance
  @NSCopying var selectionIndicatorTintColor: UIColor?
  var selectionIndicatorImage: UIImage?
  var stackedItemPositioning: UITabBar.ItemPositioning
  var stackedItemWidth: CGFloat
  var stackedItemSpacing: CGFloat
}
