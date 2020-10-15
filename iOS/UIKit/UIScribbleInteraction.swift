
@available(iOS 14.0, *)
class UIScribbleInteraction : NSObject, UIInteraction {
  init(delegate: UIScribbleInteractionDelegate)
  weak var delegate: @sil_weak UIScribbleInteractionDelegate? { get }
  var isHandlingWriting: Bool { get }
  class var isPencilInputExpected: Bool { get }
}
@available(iOS 14.0, *)
protocol UIScribbleInteractionDelegate : NSObjectProtocol {
  optional func scribbleInteraction(_ interaction: UIScribbleInteraction, shouldBeginAt location: CGPoint) -> Bool
  optional func scribbleInteractionShouldDelayFocus(_ interaction: UIScribbleInteraction) -> Bool
  optional func scribbleInteractionWillBeginWriting(_ interaction: UIScribbleInteraction)
  @asyncHandler optional func scribbleInteractionDidFinishWriting(_ interaction: UIScribbleInteraction)
}
