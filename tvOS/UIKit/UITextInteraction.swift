
enum UITextInteractionMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case editable
  case nonEditable
}
protocol UITextInteractionDelegate : NSObjectProtocol {
  optional func interactionShouldBegin(_ interaction: UITextInteraction, at point: CGPoint) -> Bool
  optional func interactionWillBegin(_ interaction: UITextInteraction)
  @asyncHandler optional func interactionDidEnd(_ interaction: UITextInteraction)
}
