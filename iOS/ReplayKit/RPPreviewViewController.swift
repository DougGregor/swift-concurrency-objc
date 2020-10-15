
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
}
protocol RPPreviewViewControllerDelegate : NSObjectProtocol {
  @asyncHandler optional func previewControllerDidFinish(_ previewController: RPPreviewViewController)
  @asyncHandler optional func previewController(_ previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
