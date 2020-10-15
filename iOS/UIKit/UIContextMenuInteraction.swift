
@available(iOS 13.0, *)
enum UIContextMenuInteractionCommitStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case dismiss
  case pop
}
extension UIContextMenuInteraction {
  @available(iOS 14.0, *)
  enum appearance : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case rich
    case compact
  }
}
@available(iOS 13.0, *)
class UIContextMenuInteraction : NSObject, UIInteraction {
  weak var delegate: @sil_weak UIContextMenuInteractionDelegate? { get }
  @available(iOS 14.0, *)
  var menuAppearance: UIContextMenuInteraction.appearance { get }
  init(delegate: UIContextMenuInteractionDelegate)
  func location(in view: UIView?) -> CGPoint
  @available(iOS 14.0, *)
  func updateVisibleMenu(_ block: (UIMenu) -> UIMenu)
  func dismissMenu()
}
@available(iOS 13.0, *)
protocol UIContextMenuInteractionAnimating : NSObjectProtocol {
  var previewViewController: UIViewController? { get }
  func addAnimations(_ animations: @escaping () -> Void)
  func addCompletion(_ completion: @escaping () -> Void)
}
@available(iOS 13.0, *)
protocol UIContextMenuInteractionCommitAnimating : UIContextMenuInteractionAnimating {
  var preferredCommitStyle: UIContextMenuInteractionCommitStyle { get set }
}
@available(iOS 13.0, *)
protocol UIContextMenuInteractionDelegate : NSObjectProtocol {
  func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration?
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForHighlightingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, previewForDismissingMenuWithConfiguration configuration: UIContextMenuConfiguration) -> UITargetedPreview?
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willPerformPreviewActionForMenuWith configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionCommitAnimating)
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willDisplayMenuFor configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
  optional func contextMenuInteraction(_ interaction: UIContextMenuInteraction, willEndFor configuration: UIContextMenuConfiguration, animator: UIContextMenuInteractionAnimating?)
}
