
@available(iOS 11.0, *)
protocol UITextDroppable : UITextInput, UITextPasteConfigurationSupporting {
  weak var textDropDelegate: @sil_weak UITextDropDelegate? { get set }
  var textDropInteraction: UIDropInteraction? { get }
  var isTextDropActive: Bool { get }
}
@available(iOS 11.0, *)
enum UITextDropEditability : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case no
  case temporary
  case yes
}
@available(iOS 11.0, *)
protocol UITextDropDelegate : NSObjectProtocol {
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, willBecomeEditableForDrop drop: UITextDropRequest) -> UITextDropEditability
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, proposalForDrop drop: UITextDropRequest) -> UITextDropProposal
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, willPerformDrop drop: UITextDropRequest)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, previewForDroppingAllItemsWithDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidEnter session: UIDropSession)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidUpdate session: UIDropSession)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidExit session: UIDropSession)
  optional func textDroppableView(_ textDroppableView: UIView & UITextDroppable, dropSessionDidEnd session: UIDropSession)
}
@available(iOS 11.0, *)
protocol UITextDropRequest : NSObjectProtocol {
  var dropPosition: UITextPosition { get }
  var suggestedProposal: UITextDropProposal { get }
  var isSameView: Bool { get }
  var dropSession: UIDropSession { get }
}
