
@available(macOS 11.0, *)
class RPPreviewViewController : NSViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
}
protocol RPPreviewViewControllerDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  optional func previewControllerDidFinish(_ previewController: RPPreviewViewController)
  @available(macOS 11.0, *)
  optional func previewController(_ previewController: RPPreviewViewController, didFinishWithActivityTypes activityTypes: Set<String>)
}
