
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  optional func willPresentSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func didPresentSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func willDismissSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func didDismissSearchController(_ searchController: UISearchController)
  @available(tvOS 8.0, *)
  optional func presentSearchController(_ searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(tvOS 8.0, *)
  func updateSearchResults(for searchController: UISearchController)
  @available(tvOS 14.0, *)
  optional func updateSearchResults(for searchController: UISearchController, selecting searchSuggestion: UISearchSuggestion)
}
@available(tvOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  @available(tvOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  @available(tvOS 13.0, *)
  var automaticallyShowsCancelButton: Bool
  @available(tvOS 13.0, *)
  var automaticallyShowsScopeBar: Bool
  @available(tvOS 14.0, *)
  var searchSuggestions: [UISearchSuggestion]?
  @available(tvOS 14.0, *)
  var searchControllerObservedScrollView: UIScrollView?
}
