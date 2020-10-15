
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case coverVertical
  case flipHorizontal
  case crossDissolve
  @available(iOS 3.2, *)
  case partialCurl
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fullScreen
  @available(iOS 3.2, *)
  case pageSheet
  @available(iOS 3.2, *)
  case formSheet
  @available(iOS 3.2, *)
  case currentContext
  @available(iOS 7.0, *)
  case custom
  @available(iOS 8.0, *)
  case overFullScreen
  @available(iOS 8.0, *)
  case overCurrentContext
  @available(iOS 8.0, *)
  case popover
  @available(iOS 7.0, *)
  case none
  @available(iOS 13.0, *)
  case automatic
}
protocol UIContentContainer : NSObjectProtocol {
  @available(iOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(iOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(iOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(iOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(iOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)
}
extension UIViewController {
  @available(iOS 8.0, *)
  class let showDetailTargetDidChangeNotification: NSNotification.Name
  @available(iOS 5.0, *)
  class let hierarchyInconsistencyException: NSExceptionName
}
@available(iOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  var view: UIView!
  func loadView()
  @available(iOS 9.0, *)
  func loadViewIfNeeded()
  @available(iOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(iOS 3.0, *)
  var isViewLoaded: Bool { get }
  var nibName: String? { get }
  var nibBundle: Bundle? { get }
  @available(iOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(iOS 5.0, *)
  func performSegue(withIdentifier identifier: String, sender: Any?)
  @available(iOS 6.0, *)
  func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
  @available(iOS 5.0, *)
  func prepare(for segue: UIStoryboardSegue, sender: Any?)
  @available(iOS 13.0, *)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, sender: Any?) -> Bool
  @available(iOS, introduced: 6.0, deprecated: 13.0)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any) -> Bool
  @available(iOS 9.0, *)
  func allowedChildrenForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(iOS 9.0, *)
  func childContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(iOS, introduced: 6.0, deprecated: 9.0)
  func forUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any?) -> UIViewController?
  @available(iOS 9.0, *)
  func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController)
  @available(iOS, introduced: 6.0, deprecated: 9.0)
  func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(_ animated: Bool)
  func viewDidAppear(_ animated: Bool)
  func viewWillDisappear(_ animated: Bool)
  func viewDidDisappear(_ animated: Bool)
  @available(iOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(iOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  @available(iOS 5.0, *)
  var presentedViewController: UIViewController? { get }
  @available(iOS 5.0, *)
  var presentingViewController: UIViewController? { get }
  @available(iOS 5.0, *)
  var definesPresentationContext: Bool
  @available(iOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(iOS 10.0, *)
  var restoresFocusAfterTransition: Bool
  @available(iOS 5.0, *)
  var isBeingPresented: Bool { get }
  @available(iOS 5.0, *)
  var isBeingDismissed: Bool { get }
  @available(iOS 5.0, *)
  var isMovingToParent: Bool { get }
  @available(iOS 5.0, *)
  var isMovingFromParent: Bool { get }
  @available(iOS 5.0, *)
  func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 5.0, *)
  func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)
  @available(iOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(iOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(iOS 7.0, *)
  var modalPresentationCapturesStatusBarAppearance: Bool
  @available(iOS 4.3, *)
  var disablesAutomaticKeyboardDismissal: Bool { get }
  @available(iOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(iOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(iOS 7.0, *)
  var preferredStatusBarStyle: UIStatusBarStyle { get }
  @available(iOS 7.0, *)
  var prefersStatusBarHidden: Bool { get }
  @available(iOS 7.0, *)
  var preferredStatusBarUpdateAnimation: UIStatusBarAnimation { get }
  @available(iOS 7.0, *)
  func setNeedsStatusBarAppearanceUpdate()
  @available(iOS 8.0, *)
  func targetViewController(forAction action: Selector, sender: Any?) -> UIViewController?
  @available(iOS 8.0, *)
  func show(_ vc: UIViewController, sender: Any?)
  @available(iOS 8.0, *)
  func showDetailViewController(_ vc: UIViewController, sender: Any?)
  @available(iOS 13.0, *)
  var overrideUserInterfaceStyle: UIUserInterfaceStyle
}
extension UIViewController {
  @available(iOS 5.0, *)
  class func attemptRotationToDeviceOrientation()
  @available(iOS 6.0, *)
  var shouldAutorotate: Bool { get }
  @available(iOS 6.0, *)
  var supportedInterfaceOrientations: UIInterfaceOrientationMask { get }
  @available(iOS 6.0, *)
  var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation { get }
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Header views are animated along with the rest of the view hierarchy")
  func rotatingHeaderView() -> UIView?
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Footer views are animated along with the rest of the view hierarchy")
  func rotatingFooterView() -> UIView?
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  var interfaceOrientation: UIInterfaceOrientation { get }
  @available(iOS, introduced: 2.0, deprecated: 8.0, message: "Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
  @available(iOS, introduced: 2.0, deprecated: 8.0)
  func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation)
  @available(iOS, introduced: 3.0, deprecated: 8.0, message: "Implement viewWillTransitionToSize:withTransitionCoordinator: instead")
  func willAnimateRotation(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval)
}
extension UIViewController {
  var isEditing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  var editButtonItem: UIBarButtonItem { get }
}
extension UIViewController {
  @available(iOS, introduced: 3.0, deprecated: 8.0)
  var searchDisplayController: UISearchDisplayController? { get }
}
extension UIViewController {
  @available(iOS 5.0, *)
  var children: [UIViewController] { get }
  @available(iOS 5.0, *)
  func addChild(_ childController: UIViewController)
  @available(iOS 5.0, *)
  func removeFromParent()
  @available(iOS 5.0, *)
  func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(iOS 5.0, *)
  func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool)
  @available(iOS 5.0, *)
  func endAppearanceTransition()
  @available(iOS 7.0, *)
  var childForStatusBarStyle: UIViewController? { get }
  @available(iOS 7.0, *)
  var childForStatusBarHidden: UIViewController? { get }
  @available(iOS 8.0, *)
  func setOverrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController)
  @available(iOS 8.0, *)
  func overrideTraitCollection(forChild childViewController: UIViewController) -> UITraitCollection?
}
extension UIViewController {
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "Manually forward viewWillTransitionToSize:withTransitionCoordinator: if necessary")
  func shouldAutomaticallyForwardRotationMethods() -> Bool
  @available(iOS 6.0, *)
  var shouldAutomaticallyForwardAppearanceMethods: Bool { get }
  @available(iOS 5.0, *)
  func willMove(toParent parent: UIViewController?)
  @available(iOS 5.0, *)
  func didMove(toParent parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(iOS 6.0, *)
  var restorationIdentifier: String?
  @available(iOS 6.0, *)
  var restorationClass: UIViewControllerRestoration.Type?
}
extension UIViewController {
  @available(iOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(iOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
  var topLayoutGuide: UILayoutSupport { get }
  @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.bottomAnchor instead of bottomLayoutGuide.topAnchor")
  var bottomLayoutGuide: UILayoutSupport { get }
  @available(iOS 11.0, *)
  var additionalSafeAreaInsets: UIEdgeInsets
  @available(iOS 11.0, *)
  var systemMinimumLayoutMargins: NSDirectionalEdgeInsets { get }
  @available(iOS 11.0, *)
  var viewRespectsSystemMinimumLayoutMargins: Bool
  @available(iOS 11.0, *)
  func viewLayoutMarginsDidChange()
  @available(iOS 11.0, *)
  func viewSafeAreaInsetsDidChange()
}
extension UIViewController {
  @available(iOS 9.0, *)
  func addKeyCommand(_ keyCommand: UIKeyCommand)
  @available(iOS 9.0, *)
  func removeKeyCommand(_ keyCommand: UIKeyCommand)
}
extension UIViewController {
  @available(iOS 13.0, *)
  var performsActionsWhilePresentingModally: Bool { get }
}
extension UIViewController : NSExtensionRequestHandling {
  @available(iOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
}
extension UIViewController {
  @available(iOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(iOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
  @available(iOS 13.0, *)
  var isModalInPresentation: Bool
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var sourceView: UIView { get }
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var sourceRect: CGRect { get set }
}
@available(iOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func registerForPreviewing(with delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(iOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func unregisterForPreviewing(withContext previewing: UIViewControllerPreviewing)
}
extension UIViewController {
  @available(iOS 11.0, *)
  var childForScreenEdgesDeferringSystemGestures: UIViewController? { get }
  @available(iOS 11.0, *)
  var preferredScreenEdgesDeferringSystemGestures: UIRectEdge { get }
  @available(iOS 11.0, *)
  func setNeedsUpdateOfScreenEdgesDeferringSystemGestures()
}
extension UIViewController {
  @available(iOS 11.0, *)
  var childForHomeIndicatorAutoHidden: UIViewController? { get }
  @available(iOS 11.0, *)
  var prefersHomeIndicatorAutoHidden: Bool { get }
  @available(iOS 11.0, *)
  func setNeedsUpdateOfHomeIndicatorAutoHidden()
}
extension UIViewController {
  @available(iOS 14.0, *)
  var childViewControllerForPointerLock: UIViewController? { get }
  @available(iOS 14.0, *)
  var prefersPointerLocked: Bool { get }
  @available(iOS 14.0, *)
  func setNeedsUpdateOfPrefersPointerLocked()
}
extension UIViewController {
  @available(iOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
  var previewActionItems: [UIPreviewActionItem] { get }
}
@available(iOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
extension UIPreviewAction {
  @available(iOS 9.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case selected
    case destructive
  }
}
@available(iOS 9.0, *)
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewAction.Style, handler: @escaping (UIPreviewAction, UIViewController) -> Void)
}
@available(iOS 9.0, *)
@available(iOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewAction.Style, actions: [UIPreviewAction])
}
