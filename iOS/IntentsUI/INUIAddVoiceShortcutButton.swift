
@available(iOS 12.0, *)
enum INUIAddVoiceShortcutButtonStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case white
  case whiteOutline
  case black
  case blackOutline
  @available(iOS 13.0, *)
  case automatic
  @available(iOS 13.0, *)
  case automaticOutline
}
@available(iOS 12.0, *)
protocol INUIAddVoiceShortcutButtonDelegate : NSObjectProtocol {
  func present(_ addVoiceShortcutViewController: INUIAddVoiceShortcutViewController, for addVoiceShortcutButton: INUIAddVoiceShortcutButton)
  func present(_ editVoiceShortcutViewController: INUIEditVoiceShortcutViewController, for addVoiceShortcutButton: INUIAddVoiceShortcutButton)
}
@available(iOS 12.0, *)
class INUIAddVoiceShortcutButton : UIButton {
  init(style: INUIAddVoiceShortcutButtonStyle)
  var style: INUIAddVoiceShortcutButtonStyle { get }
  @available(iOS 13.0, *)
  func setStyle(_ style: INUIAddVoiceShortcutButtonStyle)
  weak var delegate: @sil_weak INUIAddVoiceShortcutButtonDelegate?
  var shortcut: INShortcut?
  @available(iOS 13.0, *)
  var cornerRadius: CGFloat
}
