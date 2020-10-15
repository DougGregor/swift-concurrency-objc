
@available(iOS 12.1, *)
enum UIPencilPreferredAction : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ignore
  case switchEraser
  case switchPrevious
  case showColorPalette
}
@available(iOS 12.1, *)
class UIPencilInteraction : NSObject, UIInteraction {
  class var preferredTapAction: UIPencilPreferredAction { get }
  class var prefersPencilOnlyDrawing: Bool { get }
  weak var delegate: @sil_weak UIPencilInteractionDelegate?
  var isEnabled: Bool
}
@available(iOS 12.1, *)
protocol UIPencilInteractionDelegate : NSObjectProtocol {
  @asyncHandler optional func pencilInteractionDidTap(_ interaction: UIPencilInteraction)
}
