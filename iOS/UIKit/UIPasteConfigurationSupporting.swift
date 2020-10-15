
@available(iOS 11.0, *)
protocol UIPasteConfigurationSupporting : NSObjectProtocol {
  @NSCopying var pasteConfiguration: UIPasteConfiguration? { get set }
  optional func paste(itemProviders: [NSItemProvider])
  optional func canPaste(_ itemProviders: [NSItemProvider]) -> Bool
}
