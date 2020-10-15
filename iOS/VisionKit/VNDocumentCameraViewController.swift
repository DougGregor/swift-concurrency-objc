
@available(iOS 13.0, *)
class VNDocumentCameraViewController : UIViewController {
  weak var delegate: @sil_weak VNDocumentCameraViewControllerDelegate?
  class var isSupported: Bool { get }
}
@available(iOS 13.0, *)
protocol VNDocumentCameraViewControllerDelegate : NSObjectProtocol {
  @asyncHandler optional func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan)
  @asyncHandler optional func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController)
  @asyncHandler optional func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error)
}
