
@available(iOS 10.0, *)
class UIPreviewInteraction : NSObject {
  init(view: UIView)
  weak var view: @sil_weak UIView? { get }
  weak var delegate: @sil_weak UIPreviewInteractionDelegate?
  func location(in coordinateSpace: UICoordinateSpace?) -> CGPoint
  func cancel()
}
protocol UIPreviewInteractionDelegate : NSObjectProtocol {
  @available(iOS 10.0, *)
  @asyncHandler func previewInteraction(_ previewInteraction: UIPreviewInteraction, didUpdatePreviewTransition transitionProgress: CGFloat, ended: Bool)
  @available(iOS 10.0, *)
  @asyncHandler func previewInteractionDidCancel(_ previewInteraction: UIPreviewInteraction)
  @available(iOS 10.0, *)
  optional func previewInteractionShouldBegin(_ previewInteraction: UIPreviewInteraction) -> Bool
  @available(iOS 10.0, *)
  @asyncHandler optional func previewInteraction(_ previewInteraction: UIPreviewInteraction, didUpdateCommitTransition transitionProgress: CGFloat, ended: Bool)
}
