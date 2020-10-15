
extension UISplitViewController {
  @available(iOS 8.0, *)
  enum DisplayMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case secondaryOnly
    case oneBesideSecondary
    case oneOverSecondary
    @available(iOS 14.0, *)
    case twoBesideSecondary
    @available(iOS 14.0, *)
    case twoOverSecondary
    @available(iOS 14.0, *)
    case twoDisplaceSecondary
    @available(iOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.secondaryOnly")
    static var primaryHidden: UISplitViewController.DisplayMode { get }
    @available(iOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.oneBesideSecondary")
    static var allVisible: UISplitViewController.DisplayMode { get }
    @available(iOS, introduced: 8.0, deprecated: 14.0, renamed: "UISplitViewController.DisplayMode.oneOverSecondary")
    static var primaryOverlay: UISplitViewController.DisplayMode { get }
  }
  @available(iOS 11.0, *)
  enum PrimaryEdge : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case leading
    case trailing
  }
  @available(iOS 13.0, *)
  enum BackgroundStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case sidebar
  }
  @available(iOS 14.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case doubleColumn
    case tripleColumn
  }
  @available(iOS 14.0, *)
  enum Column : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case primary
    case supplementary
    case secondary
    case compact
  }
  @available(iOS 14.0, *)
  enum SplitBehavior : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case automatic
    case tile
    case overlay
    case displace
  }
  @available(iOS 8.0, *)
  class let automaticDimension: CGFloat
}
@available(iOS 3.2, *)
class UISplitViewController : UIViewController {
  @available(iOS 14.0, *)
  init(style: UISplitViewController.Style)
  @available(iOS 14.0, *)
  var style: UISplitViewController.Style { get }
  weak var delegate: @sil_weak UISplitViewControllerDelegate?
  @available(iOS 14.0, *)
  var showsSecondaryOnlyButton: Bool
  @available(iOS 14.0, *)
  var preferredSplitBehavior: UISplitViewController.SplitBehavior
  @available(iOS 14.0, *)
  var splitBehavior: UISplitViewController.SplitBehavior { get }
  @available(iOS 14.0, *)
  func setViewController(_ vc: UIViewController?, for column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  func viewController(for column: UISplitViewController.Column) -> UIViewController?
  @available(iOS 14.0, *)
  func hide(_ column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  func show(_ column: UISplitViewController.Column)
  var viewControllers: [UIViewController]
  @available(iOS 5.1, *)
  var presentsWithGesture: Bool
  @available(iOS 8.0, *)
  var isCollapsed: Bool { get }
  @available(iOS 8.0, *)
  var preferredDisplayMode: UISplitViewController.DisplayMode
  @available(iOS 8.0, *)
  var displayMode: UISplitViewController.DisplayMode { get }
  @available(iOS 8.0, *)
  var displayModeButtonItem: UIBarButtonItem { get }
  @available(iOS 8.0, *)
  var preferredPrimaryColumnWidthFraction: CGFloat
  @available(iOS 14.0, *)
  var preferredPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var minimumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var maximumPrimaryColumnWidth: CGFloat
  @available(iOS 8.0, *)
  var primaryColumnWidth: CGFloat { get }
  @available(iOS 14.0, *)
  var preferredSupplementaryColumnWidthFraction: CGFloat
  @available(iOS 14.0, *)
  var preferredSupplementaryColumnWidth: CGFloat
  @available(iOS 14.0, *)
  var minimumSupplementaryColumnWidth: CGFloat
  @available(iOS 14.0, *)
  var maximumSupplementaryColumnWidth: CGFloat
  @available(iOS 14.0, *)
  var supplementaryColumnWidth: CGFloat { get }
  @available(iOS 11.0, *)
  var primaryEdge: UISplitViewController.PrimaryEdge
  @available(iOS 13.0, *)
  var primaryBackgroundStyle: UISplitViewController.BackgroundStyle
}
protocol UISplitViewControllerDelegate {
  @available(iOS 8.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willChangeTo displayMode: UISplitViewController.DisplayMode)
  @available(iOS 8.0, *)
  optional func targetDisplayModeForAction(in svc: UISplitViewController) -> UISplitViewController.DisplayMode
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, show vc: UIViewController, sender: Any?) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, showDetail vc: UIViewController, sender: Any?) -> Bool
  @available(iOS 8.0, *)
  optional func primaryViewController(forCollapsing splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func primaryViewController(forExpanding splitViewController: UISplitViewController) -> UIViewController?
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, collapseSecondary secondaryViewController: UIViewController, onto primaryViewController: UIViewController) -> Bool
  @available(iOS 8.0, *)
  optional func splitViewController(_ splitViewController: UISplitViewController, separateSecondaryFrom primaryViewController: UIViewController) -> UIViewController?
  @available(iOS 7.0, *)
  optional func splitViewControllerSupportedInterfaceOrientations(_ splitViewController: UISplitViewController) -> UIInterfaceOrientationMask
  @available(iOS 7.0, *)
  optional func splitViewControllerPreferredInterfaceOrientationForPresentation(_ splitViewController: UISplitViewController) -> UIInterfaceOrientation
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willHide aViewController: UIViewController, with barButtonItem: UIBarButtonItem, for pc: UIPopoverController)
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Use splitViewController:willChangeToDisplayMode: and displayModeButtonItem instead")
  optional func splitViewController(_ svc: UISplitViewController, willShow aViewController: UIViewController, invalidating barButtonItem: UIBarButtonItem)
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  optional func splitViewController(_ svc: UISplitViewController, popoverController pc: UIPopoverController, willPresent aViewController: UIViewController)
  @available(iOS, introduced: 5.0, deprecated: 8.0)
  optional func splitViewController(_ svc: UISplitViewController, shouldHide vc: UIViewController, in orientation: UIInterfaceOrientation) -> Bool
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, topColumnForCollapsingToProposedTopColumn proposedTopColumn: UISplitViewController.Column) -> UISplitViewController.Column
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, displayModeForExpandingToProposedDisplayMode proposedDisplayMode: UISplitViewController.DisplayMode) -> UISplitViewController.DisplayMode
  @available(iOS 14.0, *)
  @asyncHandler optional func splitViewControllerDidCollapse(_ svc: UISplitViewController)
  @available(iOS 14.0, *)
  @asyncHandler optional func splitViewControllerDidExpand(_ svc: UISplitViewController)
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willShow column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  optional func splitViewController(_ svc: UISplitViewController, willHide column: UISplitViewController.Column)
  @available(iOS 14.0, *)
  optional func splitViewControllerInteractivePresentationGestureWillBegin(_ svc: UISplitViewController)
  @available(iOS 14.0, *)
  @asyncHandler optional func splitViewControllerInteractivePresentationGestureDidEnd(_ svc: UISplitViewController)
}
extension UIViewController {
  var splitViewController: UISplitViewController? { get }
  @available(iOS 8.0, *)
  func collapseSecondaryViewController(_ secondaryViewController: UIViewController, for splitViewController: UISplitViewController)
  @available(iOS 8.0, *)
  func separateSecondaryViewController(for splitViewController: UISplitViewController) -> UIViewController?
}
