
@available(iOS 13.0, *)
protocol UILargeContentViewerItem : NSObjectProtocol {
  var showsLargeContentViewer: Bool { get }
  var largeContentTitle: String? { get }
  var largeContentImage: UIImage? { get }
  var scalesLargeContentImage: Bool { get }
  var largeContentImageInsets: UIEdgeInsets { get }
}
extension UIView : UILargeContentViewerItem {
}
@available(iOS 13.0, *)
class UILargeContentViewerInteraction : NSObject, UIInteraction {
  init(delegate: UILargeContentViewerInteractionDelegate?)
  weak var delegate: @sil_weak UILargeContentViewerInteractionDelegate? { get }
  var gestureRecognizerForExclusionRelationship: UIGestureRecognizer { get }
  class var isEnabled: Bool { get }
}
@available(iOS 13.0, *)
protocol UILargeContentViewerInteractionDelegate : NSObjectProtocol {
  @asyncHandler optional func largeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction, didEndOn item: UILargeContentViewerItem?, at point: CGPoint)
  optional func largeContentViewerInteraction(_ interaction: UILargeContentViewerInteraction, itemAt point: CGPoint) -> UILargeContentViewerItem?
  optional func viewController(for interaction: UILargeContentViewerInteraction) -> UIViewController
}
extension UILargeContentViewerInteraction {
  @available(iOS 13.0, *)
  class let enabledStatusDidChangeNotification: NSNotification.Name
}
