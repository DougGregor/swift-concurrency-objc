
extension UISearchBar {
  enum Icon : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case search
  }
  @available(tvOS 7.0, *)
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case prominent
    case minimal
  }
}
@available(tvOS 2.0, *)
class UISearchBar : UIView, UIBarPositioning, UITextInputTraits {
  weak var delegate: @sil_weak UISearchBarDelegate?
  var text: String?
  var prompt: String?
  var placeholder: String?
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 7.0, *)
  var searchBarStyle: UISearchBar.Style
  @available(tvOS 3.0, *)
  var isTranslucent: Bool
  @available(tvOS 3.0, *)
  var scopeButtonTitles: [String]?
  @available(tvOS 3.0, *)
  var selectedScopeButtonIndex: Int
  @available(tvOS 3.0, *)
  var showsScopeBar: Bool
  @available(tvOS 13.0, *)
  func setShowsScope(_ show: Bool, animated animate: Bool)
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var scopeBarBackgroundImage: UIImage?
  @available(tvOS 7.0, *)
  func setBackgroundImage(_ backgroundImage: UIImage?, for barPosition: UIBarPosition, barMetrics: UIBarMetrics)
  @available(tvOS 7.0, *)
  func backgroundImage(for barPosition: UIBarPosition, barMetrics: UIBarMetrics) -> UIImage?
  @available(tvOS 5.0, *)
  func setSearchFieldBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State)
  @available(tvOS 5.0, *)
  func searchFieldBackgroundImage(for state: UIControl.State) -> UIImage?
  @available(tvOS 5.0, *)
  func setImage(_ iconImage: UIImage?, for icon: UISearchBar.Icon, state: UIControl.State)
  @available(tvOS 5.0, *)
  func image(for icon: UISearchBar.Icon, state: UIControl.State) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State)
  @available(tvOS 5.0, *)
  func scopeBarButtonBackgroundImage(for state: UIControl.State) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonDividerImage(_ dividerImage: UIImage?, forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State)
  @available(tvOS 5.0, *)
  func scopeBarButtonDividerImage(forLeftSegmentState leftState: UIControl.State, rightSegmentState rightState: UIControl.State) -> UIImage?
  @available(tvOS 5.0, *)
  func setScopeBarButtonTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)
  @available(tvOS 5.0, *)
  func scopeBarButtonTitleTextAttributes(for state: UIControl.State) -> [NSAttributedString.Key : Any]?
  @available(tvOS 5.0, *)
  var searchFieldBackgroundPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  var searchTextPositionAdjustment: UIOffset
  @available(tvOS 5.0, *)
  func setPositionAdjustment(_ adjustment: UIOffset, for icon: UISearchBar.Icon)
  @available(tvOS 5.0, *)
  func positionAdjustment(for icon: UISearchBar.Icon) -> UIOffset
}
protocol UISearchBarDelegate : UIBarPositioningDelegate {
  @available(tvOS 2.0, *)
  optional func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  @asyncHandler optional func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool
  @available(tvOS 2.0, *)
  @asyncHandler optional func searchBarTextDidEndEditing(_ searchBar: UISearchBar)
  @available(tvOS 2.0, *)
  optional func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
  @available(tvOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
  @available(tvOS 2.0, *)
  optional func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
  @available(tvOS 3.0, *)
  optional func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int)
}
