
@available(iOS 12.0, *)
class INUIAddVoiceShortcutViewController : UIViewController {
  weak var delegate: @sil_weak INUIAddVoiceShortcutViewControllerDelegate?
  init(shortcut: INShortcut)
}
@available(iOS 12.0, *)
protocol INUIAddVoiceShortcutViewControllerDelegate : NSObjectProtocol {
  @asyncHandler func addVoiceShortcutViewController(_ controller: INUIAddVoiceShortcutViewController, didFinishWith voiceShortcut: INVoiceShortcut?, error: Error?)
  @asyncHandler func addVoiceShortcutViewControllerDidCancel(_ controller: INUIAddVoiceShortcutViewController)
}
