
@available(iOS 11.0, *)
protocol UITextPasteConfigurationSupporting : UIPasteConfigurationSupporting {
  weak var pasteDelegate: @sil_weak UITextPasteDelegate? { get set }
}
