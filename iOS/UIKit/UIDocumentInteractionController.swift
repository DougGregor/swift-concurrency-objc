
@available(iOS 3.2, *)
class UIDocumentInteractionController : NSObject, UIActionSheetDelegate {
  /*not inherited*/ init(url: URL)
  weak var delegate: @sil_weak UIDocumentInteractionControllerDelegate?
  var url: URL?
  var uti: String?
  var name: String?
  var icons: [UIImage] { get }
  var annotation: Any?
  func presentOptionsMenu(from rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOptionsMenu(from item: UIBarButtonItem, animated: Bool) -> Bool
  func presentPreview(animated: Bool) -> Bool
  func presentOpenInMenu(from rect: CGRect, in view: UIView, animated: Bool) -> Bool
  func presentOpenInMenu(from item: UIBarButtonItem, animated: Bool) -> Bool
  func dismissPreview(animated: Bool)
  func dismissMenu(animated: Bool)
  var gestureRecognizers: [UIGestureRecognizer] { get }
}
@available(iOS 3.2, *)
protocol UIDocumentInteractionControllerDelegate : NSObjectProtocol {
  optional func documentInteractionControllerViewControllerForPreview(_ controller: UIDocumentInteractionController) -> UIViewController
  optional func documentInteractionControllerRectForPreview(_ controller: UIDocumentInteractionController) -> CGRect
  optional func documentInteractionControllerViewForPreview(_ controller: UIDocumentInteractionController) -> UIView?
  optional func documentInteractionControllerWillBeginPreview(_ controller: UIDocumentInteractionController)
  @asyncHandler optional func documentInteractionControllerDidEndPreview(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerWillPresentOptionsMenu(_ controller: UIDocumentInteractionController)
  @asyncHandler optional func documentInteractionControllerDidDismissOptionsMenu(_ controller: UIDocumentInteractionController)
  optional func documentInteractionControllerWillPresentOpenInMenu(_ controller: UIDocumentInteractionController)
  @asyncHandler optional func documentInteractionControllerDidDismissOpenInMenu(_ controller: UIDocumentInteractionController)
  optional func documentInteractionController(_ controller: UIDocumentInteractionController, willBeginSendingToApplication application: String?)
  @asyncHandler optional func documentInteractionController(_ controller: UIDocumentInteractionController, didEndSendingToApplication application: String?)
}
