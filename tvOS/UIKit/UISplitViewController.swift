
extension UISplitViewController {
  @available(tvOS 8.0, *)
  enum DisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case secondaryOnly
    case oneBesideSecondary
    case oneOverSecondary
    @available(tvOS 14.0, *)
    case twoBesideSecondary
    @available(tvOS 14.0, *)
    case twoOverSecondary
    @available(tvOS 14.0, *)
    case twoDisplaceSecondary
    @available(tvOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.secondaryOnly")
    static var primaryHidden: UISplitViewController.DisplayMode { get }
    @available(tvOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.oneBesideSecondary")
    static var allVisible: UISplitViewController.DisplayMode { get }
    @available(tvOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.oneOverSecondary")
    static var primaryOverlay: UISplitViewController.DisplayMode { get }
  }
  @available(tvOS 11.0, *)
  enum PrimaryEdge : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case leading
    case trailing
  }
  @available(tvOS 14.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case doubleColumn
    case tripleColumn
  }
  @available(tvOS 14.0, *)
  enum Column : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case primary
    case supplementary
    case secondary
    case compact
  }
  @available(tvOS 14.0, *)
  enum SplitBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case tile
    case overlay
    case displace
  }
  @available(tvOS 8.0, *)
  class let automaticDimension: CGFloat
}
@available(tvOS 3.2, *)
class UISplitViewController : UIViewController {
  @available(tvOS 14.0, *)
  init(style: UISplitViewController.Style)
  @available(tvOS 14.0, *)
  var style: UISplitViewController.Style { get }
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(tvOS 14.0, *)
  var showsSecondaryOnlyButton: Bool
  @available(tvOS 14.0, *)
  var preferredSplitBehavior: UISplitViewController.SplitBehavior
  @available(tvOS 14.0, *)
  var splitBehavior: UISplitViewController.SplitBehavior { get }
  @available(tvOS 14.0, *)
  func setViewController(_ vc: UIViewController?, for column: UISplitViewController.Column)
  @available(tvOS 14.0, *)
  func viewController(for column: UISplitViewController.Column) -> UIViewController?
  @available(tvOS 14.0, *)
  func hide(_ column: UISplitViewController.Column)
  @available(tvOS 14.0, *)
  func show(_ column: UISplitViewController.Column)
  var viewControllers: [UIViewController]
  @available(tvOS 5.1, *)
  var presentsWithGesture: Bool
  @available(tvOS 8.0, *)
  var isCollapsed: Bool { get }
  @available(tvOS 8.0, *)
  var preferredDisplayMode: UISplitViewController.DisplayMode
  @available(tvOS 8.0, *)
  var displayMode: UISplitViewController.DisplayMode { get }
  @available(tvOS 8.0, *)
  var displayModeButtonItem: UIBarButtonItem { get }
  @available(tvOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(tvOS 14.0, *)
  var preferredPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(tvOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
  @available(tvOS 14.0, *)
  var preferredSupplementaryColumnWidthFraction: CGFloat
  @available(tvOS 14.0, *)
  var preferredSupplementaryColumnWidth: CGFloat
  @available(tvOS 14.0, *)
  var minimumSupplementaryColumnWidth: CGFloat
  @available(tvOS 14.0, *)
  var maximumSupplementaryColumnWidth: CGFloat
  @available(tvOS 14.0, *)
  var supplementaryColumnWidth: CGFloat { get }
  @available(tvOS 11.0, *)
  var primaryEdge: UISplitViewController.PrimaryEdge
}
protocol UISplitViewControllerDelegate {
  @available(tvOS 8.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willChangeTo displayMode: UISplitViewController.DisplayMode)
  @available(tvOS 8.0, *)
  optional func targetDisplayModeForAction(in svc: UISplitViewController) -> UISplitViewController.DisplayMode
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, show vc: UIViewController, sender: Any?) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showDetail vc: UIViewController, sender: Any?) -> Bool
  @available(tvOS 8.0, *)
  optional func primaryViewController(forCollapsing splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func primaryViewController(forExpanding splitViewController: UISplitViewController) -> UIViewController?
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool
  @available(tvOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, separateSecondaryFrom primaryViewController: UIViewController) -> UIViewController?
  @available(tvOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, topColumnForCollapsingToProposedTopColumn proposedTopColumn: UISplitViewController.Column) -> UISplitViewController.Column
  @available(tvOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, displayModeForExpandingToProposedDisplayMode proposedDisplayMode: UISplitViewController.DisplayMode) -> UISplitViewController.DisplayMode
  @available(tvOS 14.0, *)
  @asyncHandler optional func splitViewControllerDidCollapse(_ svc: UISplitViewController)
  @available(tvOS 14.0, *)
  @asyncHandler optional func splitViewControllerDidExpand(_ svc: UISplitViewController)
  @available(tvOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willShow column: UISplitViewController.Column)
  @available(tvOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willHide column: UISplitViewController.Column)
  @available(tvOS 14.0, *)
  optional func splitViewControllerInteractivePresentationGestureWillBegin(_ svc: UISplitViewController)
  @available(tvOS 14.0, *)
  @asyncHandler optional func splitViewControllerInteractivePresentationGestureDidEnd(_ svc: UISplitViewController)
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(tvOS 8.0, *)
  func collapseSecondaryViewController(_ secondaryViewController: UIViewController, for splitViewController: UISplitViewController)
  @available(tvOS 8.0, *)
  func separateSecondaryViewController(for splitViewController: UISplitViewController) -> UIViewController?
}
