
protocol UIPopoverPresentationControllerDelegate : UIAdaptivePresentationControllerDelegate {
  @available(tvOS 8.0, *)
  optional func prepareForPopoverPresentation(_ popoverPresentationController: UIPopoverPresentationController)
  @available(tvOS, introduced: 8.0, deprecated: 13.0)
  optional func popoverPresentationControllerShouldDismissPopover(_ popoverPresentationController: UIPopoverPresentationController) -> Bool
  @available(tvOS, introduced: 8.0, deprecated: 13.0)
  optional func popoverPresentationControllerDidDismissPopover(_ popoverPresentationController: UIPopoverPresentationController)
  @available(tvOS 8.0, *)
  optional func popoverPresentationController(_ popoverPresentationController: UIPopoverPresentationController, willRepositionPopoverTo rect: UnsafeMutablePointer<CGRect>, in view: AutoreleasingUnsafeMutablePointer<UIView>)
}
@available(tvOS 8.0, *)
class UIPopoverPresentationController : UIPresentationController {
  var permittedArrowDirections: UIPopoverArrowDirection
  var sourceView: UIView?
  var sourceRect: CGRect
  @available(tvOS 9.0, *)
  var canOverlapSourceViewRect: Bool
  var barButtonItem: UIBarButtonItem?
  var arrowDirection: UIPopoverArrowDirection { get }
  var passthroughViews: [UIView]?
  @NSCopying var backgroundColor: UIColor?
  var popoverLayoutMargins: UIEdgeInsets
  var popoverBackgroundViewClass: UIPopoverBackgroundViewMethods.Type?
}
