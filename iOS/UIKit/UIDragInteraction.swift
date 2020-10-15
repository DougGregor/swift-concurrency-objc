
@available(iOS 11.0, *)
protocol UIDragAnimating : NSObjectProtocol {
  func addAnimations(_ animations: @escaping () -> Void)
  func addCompletion(_ completion: @escaping (UIViewAnimatingPosition) -> Void)
  func addCompletion() async -> UIViewAnimatingPosition
}
@available(iOS 11.0, *)
class UIDragInteraction : NSObject, UIInteraction {
  init(delegate: UIDragInteractionDelegate)
  weak var delegate: @sil_weak UIDragInteractionDelegate? { get }
  var allowsSimultaneousRecognitionDuringLift: Bool
  var isEnabled: Bool
  class var isEnabledByDefault: Bool { get }
}
@available(iOS 11.0, *)
protocol UIDragInteractionDelegate : NSObjectProtocol {
  func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem]
  optional func dragInteraction(_ interaction: UIDragInteraction, previewForLifting item: UIDragItem, session: UIDragSession) -> UITargetedDragPreview?
  optional func dragInteraction(_ interaction: UIDragInteraction, willAnimateLiftWith animator: UIDragAnimating, session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionWillBegin session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionAllowsMoveOperation session: UIDragSession) -> Bool
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionIsRestrictedToDraggingApplication session: UIDragSession) -> Bool
  optional func dragInteraction(_ interaction: UIDragInteraction, prefersFullSizePreviewsFor session: UIDragSession) -> Bool
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionDidMove session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, willEndWith operation: UIDropOperation)
  @asyncHandler optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, didEndWith operation: UIDropOperation)
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionDidTransferItems session: UIDragSession)
  optional func dragInteraction(_ interaction: UIDragInteraction, itemsForAddingTo session: UIDragSession, withTouchAt point: CGPoint) -> [UIDragItem]
  optional func dragInteraction(_ interaction: UIDragInteraction, sessionForAddingItems sessions: [UIDragSession], withTouchAt point: CGPoint) -> UIDragSession?
  optional func dragInteraction(_ interaction: UIDragInteraction, session: UIDragSession, willAdd items: [UIDragItem], for addingInteraction: UIDragInteraction)
  optional func dragInteraction(_ interaction: UIDragInteraction, previewForCancelling item: UIDragItem, withDefault defaultPreview: UITargetedDragPreview) -> UITargetedDragPreview?
  optional func dragInteraction(_ interaction: UIDragInteraction, item: UIDragItem, willAnimateCancelWith animator: UIDragAnimating)
}
