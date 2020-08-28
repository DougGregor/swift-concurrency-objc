
extension UISearchBar {
  enum Icon : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case search
    case clear
    case bookmark
    case resultsList
  }
  @available(iOS 7.0, *)
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case prominent
    case minimal
  }
}
@available(iOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  var barStyle: UIBarStyle
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  var showsBookmarkButton: Bool
  @available(iOS 13.0, *)
  var searchTextField: UISearchTextField { get }
  var showsCancelButton: Bool
  @available(iOS 3.2, *)
  var showsSearchResultsButton: Bool
  @available(iOS 3.2, *)
  var isSearchResultsButtonSelected: Bool
  @available(iOS 3.0, *)
  func setShowsCancelButton(_ showsCancelButton: Bool, animated: Bool)
  @available(iOS 7.0, *)
  var barTintColor: UIColor?
  @available(iOS 7.0, *)
  var searchBarStyle: UISearchBar.Style
  @available(iOS 3.0, *)
  var isTranslucent: Bool
  @available(iOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(iOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(iOS 3.0, *)
  var showsScopeBar: Bool
  @available(iOS 13.0, *)
  func setShowsScope(_ show: Bool, animated animate: Bool)
  @available(iOS 5.0, *)
  var backgroundImage: UIImage?
  @available(iOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(iOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(iOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(iOS 5.0, *)
  func setSearchFieldBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State)
  @available(iOS 5.0, *)
  func searchFieldBackgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setImage(_ iconImage: UIImage?, for icon: UISearchBar.Icon, state: UIControl.State)
  @available(iOS 5.0, *)
  func image(for icon: UISearchBar.Icon, state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State)
  @available(iOS 5.0, *)
  func scopeBarButtonBackgroundImage(for state: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State)
  @available(iOS 5.0, *)
  func scopeBarButtonDividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> UIImage?
  @available(iOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(iOS 5.0, *)
  func scopeBarButtonTitleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(iOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(iOS 5.0, *)
  func setPositionAdjustment(_ adjustment: UIOffset, for icon: UISearchBar.Icon)
  @available(iOS 5.0, *)
  func positionAdjustment(for icon: UISearchBar.Icon) -> UIOffset
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(iOS 2.0, *)
  optional func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarTextDidEndEditing(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
  @available(iOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(iOS 2.0, *)
  optional func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarBookmarkButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 2.0, *)
  optional func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 3.2, *)
  optional func searchBarResultsListButtonClicked(_ searchBar: UISearchBar)
  @available(iOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
