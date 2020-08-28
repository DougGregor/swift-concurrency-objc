
extension UINavigationItem {
  enum LargeTitleDisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case always
    case never
  }
  enum BackButtonDisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case generic
    case minimal
  }
}
@available(iOS 2.0, *)
class UINavigationItem : NSObject, NSCoding {
  init(title: String)
  var title: String?
  var titleView: UIView?
  var prompt: String?
  var backBarButtonItem: UIBarButtonItem?
  @available(iOS 11.0, *)
  var backButtonTitle: String?
  var hidesBackButton: Bool
  func setHidesBackButton(_ hidesBackButton: Bool, animated: Bool)
  @available(iOS 14.0, *)
  var backButtonDisplayMode: UINavigationItem.BackButtonDisplayMode
  @available(iOS 5.0, *)
  var leftBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  var rightBarButtonItems: [UIBarButtonItem]?
  @available(iOS 5.0, *)
  func setLeftBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  func setRightBarButtonItems(_ items: [UIBarButtonItem]?, animated: Bool)
  @available(iOS 5.0, *)
  var leftItemsSupplementBackButton: Bool
  var leftBarButtonItem: UIBarButtonItem?
  var rightBarButtonItem: UIBarButtonItem?
  func setLeftBarButton(_ item: UIBarButtonItem?, animated: Bool)
  func setRightBarButton(_ item: UIBarButtonItem?, animated: Bool)
  @available(iOS 11.0, *)
  var largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode
  @available(iOS 11.0, *)
  var searchController: UISearchController?
  @available(iOS 11.0, *)
  var hidesSearchBarWhenScrolling: Bool
  @available(iOS 13.0, *)
  @NSCopying var standardAppearance: UINavigationBarAppearance?
  @available(iOS 13.0, *)
  @NSCopying var compactAppearance: UINavigationBarAppearance?
  @available(iOS 13.0, *)
  @NSCopying var scrollEdgeAppearance: UINavigationBarAppearance?
}
