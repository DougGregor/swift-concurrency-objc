
@available(iOS 4.0, *)
class QLPreviewController : UIViewController {
  class func canPreview(_ item: QLPreviewItem) -> Bool
  weak var dataSource: @sil_weak QLPreviewControllerDataSource?
  func reloadData()
  func refreshCurrentPreviewItem()
  var currentPreviewItemIndex: Int
  var currentPreviewItem: QLPreviewItem? { get }
  weak var delegate: @sil_weak QLPreviewControllerDelegate?
}
protocol QLPreviewControllerDataSource {
  @available(iOS 4.0, *)
  func numberOfPreviewItems(in controller: QLPreviewController) -> Int
  @available(iOS 4.0, *)
  func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem
}
@available(iOS 13.0, *)
enum QLPreviewItemEditingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case disabled
  case updateContents
  case createCopy
}
protocol QLPreviewControllerDelegate : NSObjectProtocol {
  @available(iOS 4.0, *)
  optional func previewControllerWillDismiss(_ controller: QLPreviewController)
  @available(iOS 4.0, *)
  @asyncHandler optional func previewControllerDidDismiss(_ controller: QLPreviewController)
  @available(iOS 4.0, *)
  optional func previewController(_ controller: QLPreviewController, shouldOpen url: URL, for item: QLPreviewItem) -> Bool
  @available(iOS 4.0, *)
  optional func previewController(_ controller: QLPreviewController, frameFor item: QLPreviewItem, inSourceView view: AutoreleasingUnsafeMutablePointer<UIView?>) -> CGRect
  @available(iOS 4.0, *)
  optional func previewController(_ controller: QLPreviewController, transitionImageFor item: QLPreviewItem, contentRect: UnsafeMutablePointer<CGRect>) -> UIImage?
  @available(iOS 10.0, *)
  optional func previewController(_ controller: QLPreviewController, transitionViewFor item: QLPreviewItem) -> UIView?
  @available(iOS 13.0, *)
  optional func previewController(_ controller: QLPreviewController, editingModeFor previewItem: QLPreviewItem) -> QLPreviewItemEditingMode
  @available(iOS 13.0, *)
  @asyncHandler optional func previewController(_ controller: QLPreviewController, didUpdateContentsOf previewItem: QLPreviewItem)
  @available(iOS 13.0, *)
  @asyncHandler optional func previewController(_ controller: QLPreviewController, didSaveEditedCopyOf previewItem: QLPreviewItem, at modifiedContentsURL: URL)
}
