
@available(iOS 11.0, *)
class UIDropInteraction : NSObject, UIInteraction {
  init(delegate: UIDropInteractionDelegate)
  weak var delegate: @sil_weak UIDropInteractionDelegate? { get }
  var allowsSimultaneousDropSessions: Bool
}
@available(iOS 11.0, *)
enum UIDropOperation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case cancel
  case forbidden
  case copy
  case move
}
@available(iOS 11.0, *)
class UIDropProposal : NSObject, NSCopying {
  init(operation: UIDropOperation)
  var operation: UIDropOperation { get }
  var isPrecise: Bool
  var prefersFullSizePreview: Bool
}
@available(iOS 11.0, *)
protocol UIDropInteractionDelegate : NSObjectProtocol {
  optional func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidEnter session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidExit session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, concludeDrop session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, sessionDidEnd session: UIDropSession)
  optional func dropInteraction(_ interaction: UIDropInteraction, previewForDropping item: UIDragItem, withDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  optional func dropInteraction(_ interaction: UIDropInteraction, item: UIDragItem, willAnimateDropWith animator: UIDragAnimating)
}
