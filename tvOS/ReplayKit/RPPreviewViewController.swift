
enum RPPreviewViewControllerMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case preview
  case share
}
class RPPreviewViewController : UIViewController {
  weak var previewControllerDelegate: @sil_weak RPPreviewViewControllerDelegate?
  @available(tvOS 10.0, *)
  var mode: RPPreviewViewControllerMode
}
protocol RPPreviewViewControllerDelegate : NSObjectProtocol {
  @asyncHandler optional func previewControllerDidFinish(_ previewController: RPPreviewViewController)
}
