
protocol UISearchControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func willPresentSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didPresentSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func willDismissSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func didDismissSearchController(_ searchController: UISearchController)
  @available(iOS 8.0, *)
  optional func presentSearchController(_ searchController: UISearchController)
}
protocol UISearchResultsUpdating : NSObjectProtocol {
  @available(iOS 8.0, *)
  func updateSearchResults(for searchController: UISearchController)
}
@available(iOS 8.0, *)
class UISearchController : UIViewController, UIViewControllerTransitioningDelegate, UIViewControllerAnimatedTransitioning {
  init(searchResultsController: UIViewController?)
  weak var searchResultsUpdater: @sil_weak UISearchResultsUpdating?
  var isActive: Bool
  weak var delegate: @sil_weak UISearchControllerDelegate?
  @available(iOS, introduced: 8.0, deprecated: 12.0)
  var dimsBackgroundDuringPresentation: Bool
  @available(iOS 9.1, *)
  var obscuresBackgroundDuringPresentation: Bool
  var hidesNavigationBarDuringPresentation: Bool
  var searchResultsController: UIViewController? { get }
  var searchBar: UISearchBar { get }
  @available(iOS 13.0, *)
  var automaticallyShowsSearchResultsController: Bool
  @available(iOS 13.0, *)
  var showsSearchResultsController: Bool
  @available(iOS 13.0, *)
  var automaticallyShowsCancelButton: Bool
  @available(iOS 13.0, *)
  var automaticallyShowsScopeBar: Bool
}
