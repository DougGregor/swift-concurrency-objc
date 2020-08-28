
enum UITextInteractionMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case editable
  case nonEditable
}
protocol UITextInteractionDelegate : NSObjectProtocol {
  @available(tvOS 13.0, *)
  optional func interactionShouldBegin(_ interaction: UITextInteraction, at point: CGPoint) -> Bool
  @available(tvOS 13.0, *)
  optional func interactionWillBegin(_ interaction: UITextInteraction)
  @available(tvOS 13.0, *)
  optional func interactionDidEnd(_ interaction: UITextInteraction)
}
@available(tvOS 13.0, *)
class UITextInteraction : NSObject, UIInteraction {
  weak var delegate: @sil_weak UITextInteractionDelegate?
  weak var textInput: @sil_weak (UIResponder & UITextInput)?
  var textInteractionMode: UITextInteractionMode { get }
  var gesturesForFailureRequirements: [UIGestureRecognizer] { get }
  convenience init(for mode: UITextInteractionMode)
}
