
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
}
protocol RPPreviewViewControllerDelegate : NSObjectProtocol {
  optional func previewControllerDidFinish(_ previewController: RPPreviewViewController)
  optional func previewController(_ previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
