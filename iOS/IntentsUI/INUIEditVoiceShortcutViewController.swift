
@available(iOS 12.0, *)
class INUIEditVoiceShortcutViewController : UIViewController {
  weak var delegate: @sil_weak INUIEditVoiceShortcutViewControllerDelegate?
  init(voiceShortcut: INVoiceShortcut)
}
@available(iOS 12.0, *)
protocol INUIEditVoiceShortcutViewControllerDelegate : NSObjectProtocol {
  func editVoiceShortcutViewController(_ controller: INUIEditVoiceShortcutViewController, didUpdate voiceShortcut: INVoiceShortcut?, error: Error?)
  func editVoiceShortcutViewController(_ controller: INUIEditVoiceShortcutViewController, didDeleteVoiceShortcutWithIdentifier deletedVoiceShortcutIdentifier: UUID)
  func editVoiceShortcutViewControllerDidCancel(_ controller: INUIEditVoiceShortcutViewController)
}
