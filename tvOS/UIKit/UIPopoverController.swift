
@available(tvOS, introduced: 3.2, deprecated: 9.0, message: "UIPopoverController is deprecated. Popovers are now implemented as UIViewController presentations. Use a modal presentation style of UIModalPresentationPopover and UIPopoverPresentationController.")
class UIPopoverController : NSObject, UIAppearanceContainer {
  init(contentViewController viewController: UIViewController)
  weak var delegate: @sil_weak UIPopoverControllerDelegate?
  var contentViewController: UIViewController
  func setContentView(_ viewController: UIViewController, animated: Bool)
  var contentSize: CGSize
  func setContentSize(_ size: CGSize, animated: Bool)
  var isPopoverVisible: Bool { get }
  var arrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  func present(from rect: CGRect, in view: UIView, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func present(from item: UIBarButtonItem, permittedArrowDirections arrowDirections: UIPopoverArrowDirection, animated: Bool)
  func dismiss(animated: Bool)
  @available(tvOS 7.0, *)
  @NSCopying var backgroundColor: UIColor?
  @available(tvOS 5.0, *)
  var layoutMargins: UIEdgeInsets
  @available(tvOS 5.0, *)
  var backgroundViewClass: AnyClass?
}
protocol UIPopoverControllerDelegate : NSObjectProtocol {
  @available(tvOS, introduced: 3.2, deprecated: 9.0)
  optional func popoverControllerShouldDismissPopover(_ popoverController: UIPopoverController) -> Bool
  @available(tvOS, introduced: 3.2, deprecated: 9.0)
  optional func popoverControllerDidDismissPopover(_ popoverController: UIPopoverController)
  @available(tvOS, introduced: 7.0, deprecated: 9.0)
  optional func popoverController(_ popoverController: UIPopoverController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView>)
}
