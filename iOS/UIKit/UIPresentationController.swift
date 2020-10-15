
protocol UIAdaptivePresentationControllerDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  optional func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle
  @available(iOS 8.3, *)
  optional func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle
  @available(iOS 8.0, *)
  optional func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController?
  @available(iOS 8.3, *)
  optional func presentationController(_ presentationController: UIPresentationController, willPresentWithAdaptiveStyle style: UIModalPresentationStyle, transitionCoordinator: UIViewControllerTransitionCoordinator?)
  @available(iOS 13.0, *)
  optional func presentationControllerShouldDismiss(_ presentationController: UIPresentationController) -> Bool
  @available(iOS 13.0, *)
  optional func presentationControllerWillDismiss(_ presentationController: UIPresentationController)
  @available(iOS 13.0, *)
  @asyncHandler optional func presentationControllerDidDismiss(_ presentationController: UIPresentationController)
  @available(iOS 13.0, *)
  @asyncHandler optional func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController)
}
@available(iOS 8.0, *)
class UIPresentationController : NSObject, UIAppearanceContainer, UITraitEnvironment, UIContentContainer, UIFocusEnvironment {
  var presentingViewController: UIViewController { get }
  var presentedViewController: UIViewController { get }
  var presentationStyle: UIModalPresentationStyle { get }
  var containerView: UIView? { get }
  weak var delegate: @sil_weak UIAdaptivePresentationControllerDelegate?
  init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?)
  var adaptivePresentationStyle: UIModalPresentationStyle { get }
  @available(iOS 8.3, *)
  func adaptivePresentationStyle(for traitCollection: UITraitCollection) -> UIModalPresentationStyle
  func containerViewWillLayoutSubviews()
  func containerViewDidLayoutSubviews()
  var presentedView: UIView? { get }
  var frameOfPresentedViewInContainerView: CGRect { get }
  var shouldPresentInFullscreen: Bool { get }
  var shouldRemovePresentersView: Bool { get }
  func presentationTransitionWillBegin()
  func presentationTransitionDidEnd(_ completed: Bool)
  func dismissalTransitionWillBegin()
  func dismissalTransitionDidEnd(_ completed: Bool)
  @NSCopying var overrideTraitCollection: UITraitCollection?
}
