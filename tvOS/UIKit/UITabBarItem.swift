
extension UITabBarItem {
  enum SystemItem : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case more
    case favorites
    case featured
    case topRated
    case recents
    case contacts
    case history
    case bookmarks
    case search
    case downloads
    case mostRecent
    case mostViewed
  }
}
@available(tvOS 2.0, *)
class UITabBarItem : UIBarItem {
  convenience init(title: String?, image: UIImage?, tag: Int)
  @available(tvOS 7.0, *)
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarItem.SystemItem, tag: Int)
  @available(tvOS 7.0, *)
  var selectedImage: UIImage?
  var badgeValue: String?
  @available(tvOS 5.0, *)
  var titlePositionAdjustment: UIOffset
  @available(tvOS 10.0, *)
  @NSCopying var badgeColor: UIColor?
  @available(tvOS 10.0, *)
  func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(tvOS 10.0, *)
  func badgeTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(tvOS 13.0, *)
  @NSCopying var standardAppearance: UITabBarAppearance?
}
