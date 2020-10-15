
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
@available(iOS 2.0, *)
class UITabBarItem : UIBarItem {
  convenience init(title: String?, image: UIImage?, tag: Int)
  @available(iOS 7.0, *)
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?)
  convenience init(tabBarSystemItem systemItem: UITabBarItem.SystemItem, tag: Int)
  @available(iOS 7.0, *)
  var selectedImage: UIImage?
  var badgeValue: String?
  @available(iOS 5.0, *)
  var titlePositionAdjustment: UIOffset
  @available(iOS 10.0, *)
  @NSCopying var badgeColor: UIColor?
  @available(iOS 10.0, *)
  func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(iOS 10.0, *)
  func badgeTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UITabBarAppearance?
}
extension UITabBarItem : UISpringLoadedInteractionSupporting {
}
