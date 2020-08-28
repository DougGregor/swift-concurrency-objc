
@available(iOS 11.0, *)
struct UITextDragOptions : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var stripTextColorFromPreviews: UITextDragOptions { get }
}
@available(iOS 11.0, *)
protocol UITextDraggable : UITextInput {
  weak var textDragDelegate: @sil_weak UITextDragDelegate? { get set }
  var textDragInteraction: UIDragInteraction? { get }
  var isTextDragActive: Bool { get }
  var textDragOptions: UITextDragOptions { get set }
}
@available(iOS 11.0, *)
protocol UITextDragDelegate : NSObjectProtocol {
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, itemsForDrag dragRequest: UITextDragRequest) -> [UIDragItem]
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragPreviewForLiftingItem item: UIDragItem, session: UIDragSession) -> UITargetedDragPreview?
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, willAnimateLiftWith animator: UIDragAnimating, session: UIDragSession)
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragSessionWillBegin session: UIDragSession)
  optional func textDraggableView(_ textDraggableView: UIView & UITextDraggable, dragSessionDidEnd session: UIDragSession, with operation: UIDropOperation)
}
@available(iOS 11.0, *)
protocol UITextDragRequest : NSObjectProtocol {
  var dragRange: UITextRange { get }
  var suggestedItems: [UIDragItem] { get }
  var existingItems: [UIDragItem] { get }
  var isSelected: Bool { get }
  var dragSession: UIDragSession { get }
}
