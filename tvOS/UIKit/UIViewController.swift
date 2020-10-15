
enum UIModalTransitionStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case coverVertical
  case crossDissolve
}
enum UIModalPresentationStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fullScreen
  @available(tvOS 3.2, *)
  case currentContext
  @available(tvOS 7.0, *)
  case custom
  @available(tvOS 8.0, *)
  case overFullScreen
  @available(tvOS 8.0, *)
  case overCurrentContext
  @available(tvOS 11.0, *)
  case blurOverFullScreen
  @available(tvOS 7.0, *)
  case none
  @available(tvOS 13.0, *)
  case automatic
}
protocol UIContentContainer : NSObjectProtocol {
  @available(tvOS 8.0, *)
  var preferredContentSize: CGSize { get }
  @available(tvOS 8.0, *)
  func preferredContentSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(tvOS 8.0, *)
  func systemLayoutFittingSizeDidChange(forChildContentContainer container: UIContentContainer)
  @available(tvOS 8.0, *)
  func size(forChildContentContainer container: UIContentContainer, withParentContainerSize parentSize: CGSize) -> CGSize
  @available(tvOS 8.0, *)
  func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
  @available(tvOS 8.0, *)
  func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator)
}
extension UIViewController {
  @available(tvOS 8.0, *)
  class let showDetailTargetDidChangeNotification: NSNotification.Name
  @available(tvOS 5.0, *)
  class let hierarchyInconsistencyException: NSExceptionName
}
@available(tvOS 2.0, *)
class UIViewController : UIResponder, NSCoding, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  var view: UIView!
  func loadView()
  @available(tvOS 9.0, *)
  func loadViewIfNeeded()
  @available(tvOS 9.0, *)
  var viewIfLoaded: UIView? { get }
  func viewDidLoad()
  @available(tvOS 3.0, *)
  var isViewLoaded: Bool { get }
  var nibName: String? { get }
  var nibBundle: Bundle? { get }
  @available(tvOS 5.0, *)
  var storyboard: UIStoryboard? { get }
  @available(tvOS 5.0, *)
  func performSegue(withIdentifier identifier: String, sender: Any?)
  @available(tvOS 6.0, *)
  func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool
  @available(tvOS 5.0, *)
  func prepare(for segue: UIStoryboardSegue, sender: Any?)
  @available(tvOS 13.0, *)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, sender: Any?) -> Bool
  @available(tvOS, introduced: 9.0, deprecated: 13.0)
  func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any) -> Bool
  @available(tvOS 9.0, *)
  func allowedChildrenForUnwinding(from source: UIStoryboardUnwindSegueSource) -> [UIViewController]
  @available(tvOS 9.0, *)
  func childContaining(_ source: UIStoryboardUnwindSegueSource) -> UIViewController?
  @available(tvOS, introduced: 6.0, deprecated: 9.0)
  func forUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any?) -> UIViewController?
  @available(tvOS 9.0, *)
  func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController)
  @available(tvOS, introduced: 6.0, deprecated: 9.0)
  func segueForUnwinding(to toViewController: UIViewController, from fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue?
  func viewWillAppear(_ animated: Bool)
  func viewDidAppear(_ animated: Bool)
  func viewWillDisappear(_ animated: Bool)
  func viewDidDisappear(_ animated: Bool)
  @available(tvOS 5.0, *)
  func viewWillLayoutSubviews()
  @available(tvOS 5.0, *)
  func viewDidLayoutSubviews()
  var title: String?
  func didReceiveMemoryWarning()
  weak var parent: @sil_weak UIViewController? { get }
  @available(tvOS 5.0, *)
  var presentedViewController: UIViewController? { get }
  @available(tvOS 5.0, *)
  var presentingViewController: UIViewController? { get }
  @available(tvOS 5.0, *)
  var definesPresentationContext: Bool
  @available(tvOS 5.0, *)
  var providesPresentationContextTransitionStyle: Bool
  @available(tvOS 10.0, *)
  var restoresFocusAfterTransition: Bool
  @available(tvOS 5.0, *)
  var isBeingPresented: Bool { get }
  @available(tvOS 5.0, *)
  var isBeingDismissed: Bool { get }
  @available(tvOS 5.0, *)
  var isMovingToParent: Bool { get }
  @available(tvOS 5.0, *)
  var isMovingFromParent: Bool { get }
  @available(tvOS 5.0, *)
  func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)
  @available(tvOS 5.0, *)
  func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)
  @available(tvOS 3.0, *)
  var modalTransitionStyle: UIModalTransitionStyle
  @available(tvOS 3.2, *)
  var modalPresentationStyle: UIModalPresentationStyle
  @available(tvOS 4.3, *)
  var disablesAutomaticKeyboardDismissal: Bool { get }
  @available(tvOS 7.0, *)
  var edgesForExtendedLayout: UIRectEdge
  @available(tvOS 7.0, *)
  var extendedLayoutIncludesOpaqueBars: Bool
  @available(tvOS, introduced: 7.0, deprecated: 11.0, message: "Use UIScrollView's contentInsetAdjustmentBehavior instead")
  var automaticallyAdjustsScrollViewInsets: Bool
  @available(tvOS 8.0, *)
  func targetViewController(forAction action: Selector, sender: Any?) -> UIViewController?
  @available(tvOS 8.0, *)
  func show(_ vc: UIViewController, sender: Any?)
  @available(tvOS 8.0, *)
  func showDetailViewController(_ vc: UIViewController, sender: Any?)
  @available(tvOS 11.0, *)
  var preferredUserInterfaceStyle: UIUserInterfaceStyle { get }
  @available(tvOS 11.0, *)
  func setNeedsUserInterfaceAppearanceUpdate()
  @available(tvOS 13.0, *)
  var overrideUserInterfaceStyle: UIUserInterfaceStyle
}
extension UIViewController {
}
extension UIViewController {
  var isEditing: Bool
  func setEditing(_ editing: Bool, animated: Bool)
  var editButtonItem: UIBarButtonItem { get }
}
extension UIViewController {
}
extension UIViewController {
  @available(tvOS 5.0, *)
  var children: [UIViewController] { get }
  @available(tvOS 5.0, *)
  func addChild(_ childController: UIViewController)
  @available(tvOS 5.0, *)
  func removeFromParent()
  @available(tvOS 5.0, *)
  func transition(from fromViewController: UIViewController, to toViewController: UIViewController, duration: TimeInterval, options: UIView.AnimationOptions = [], animations: (() -> Void)?, completion: ((Bool) -> Void)? = nil)
  @available(tvOS 5.0, *)
  func beginAppearanceTransition(_ isAppearing: Bool, animated: Bool)
  @available(tvOS 5.0, *)
  func endAppearanceTransition()
  @available(tvOS 8.0, *)
  func setOverrideTraitCollection(_ collection: UITraitCollection?, forChild childViewController: UIViewController)
  @available(tvOS 8.0, *)
  func overrideTraitCollection(forChild childViewController: UIViewController) -> UITraitCollection?
  @available(tvOS 11.0, *)
  var childViewControllerForUserInterfaceStyle: UIViewController? { get }
}
extension UIViewController {
  @available(tvOS 6.0, *)
  var shouldAutomaticallyForwardAppearanceMethods: Bool { get }
  @available(tvOS 5.0, *)
  func willMove(toParent parent: UIViewController?)
  @available(tvOS 5.0, *)
  func didMove(toParent parent: UIViewController?)
}
extension UIViewController : UIStateRestoring {
  @available(tvOS 6.0, *)
  var restorationIdentifier: String?
  @available(tvOS 6.0, *)
  var restorationClass: UIViewControllerRestoration.Type?
}
extension UIViewController {
  @available(tvOS 6.0, *)
  func updateViewConstraints()
}
extension UIViewController {
  @available(tvOS 7.0, *)
  weak var transitioningDelegate: @sil_weak UIViewControllerTransitioningDelegate?
}
extension UIViewController {
  @available(tvOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.topAnchor instead of topLayoutGuide.bottomAnchor")
  var topLayoutGuide: UILayoutSupport { get }
  @available(tvOS, introduced: 7.0, deprecated: 11.0, message: "Use view.safeAreaLayoutGuide.bottomAnchor instead of bottomLayoutGuide.topAnchor")
  var bottomLayoutGuide: UILayoutSupport { get }
  @available(tvOS 11.0, *)
  var additionalSafeAreaInsets: UIEdgeInsets
  @available(tvOS 11.0, *)
  var systemMinimumLayoutMargins: NSDirectionalEdgeInsets { get }
  @available(tvOS 11.0, *)
  var viewRespectsSystemMinimumLayoutMargins: Bool
  @available(tvOS 11.0, *)
  func viewLayoutMarginsDidChange()
  @available(tvOS 11.0, *)
  func viewSafeAreaInsetsDidChange()
}
extension UIViewController {
  @available(tvOS 9.0, *)
  func addKeyCommand(_ keyCommand: UIKeyCommand)
  @available(tvOS 9.0, *)
  func removeKeyCommand(_ keyCommand: UIKeyCommand)
}
extension UIViewController {
  @available(tvOS 13.0, *)
  var performsActionsWhilePresentingModally: Bool { get }
}
extension UIViewController : NSExtensionRequestHandling {
  @available(tvOS 8.0, *)
  var extensionContext: NSExtensionContext? { get }
}
extension UIViewController {
  @available(tvOS 8.0, *)
  var presentationController: UIPresentationController? { get }
  @available(tvOS 8.0, *)
  var popoverPresentationController: UIPopoverPresentationController? { get }
  @available(tvOS 13.0, *)
  var isModalInPresentation: Bool
}
protocol UIViewControllerPreviewing : NSObjectProtocol {
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var previewingGestureRecognizerForFailureRelationship: UIGestureRecognizer { get }
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var delegate: UIViewControllerPreviewingDelegate { get }
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var sourceView: UIView { get }
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  var sourceRect: CGRect { get set }
}
@available(tvOS 9.0, *)
protocol UIViewControllerPreviewingDelegate : NSObjectProtocol {
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController?
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController)
}
extension UIViewController {
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func registerForPreviewing(with delegate: UIViewControllerPreviewingDelegate, sourceView: UIView) -> UIViewControllerPreviewing
  @available(tvOS, introduced: 9.0, deprecated: 13.0, renamed: "UIContextMenuInteraction")
  func unregisterForPreviewing(withContext previewing: UIViewControllerPreviewing)
}
extension UIViewController {
}
extension UIViewController {
}
extension UIViewController {
  @available(tvOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
  var previewActionItems: [UIPreviewActionItem] { get }
}
@available(tvOS 9.0, *)
protocol UIPreviewActionItem : NSObjectProtocol {
  var title: String { get }
}
extension UIPreviewAction {
  @available(tvOS 9.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case selected
    case destructive
  }
}
@available(tvOS 9.0, *)
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
class UIPreviewAction : NSObject, NSCopying, UIPreviewActionItem {
  var handler: (UIPreviewActionItem, UIViewController) -> Void { get }
  convenience init(title: String, style: UIPreviewAction.Style, handler: @escaping (UIPreviewAction, UIViewController) -> Void)
}
@available(tvOS 9.0, *)
@available(tvOS, introduced: 9.0, deprecated: 13.0, message: "UIViewControllerPreviewing is deprecated. Please use UIContextMenuInteraction.")
class UIPreviewActionGroup : NSObject, NSCopying, UIPreviewActionItem {
  convenience init(title: String, style: UIPreviewAction.Style, actions: [UIPreviewAction])
}
