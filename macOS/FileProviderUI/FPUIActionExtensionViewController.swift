
@available(macOS 10.15, *)
class FPUIActionExtensionViewController : NSViewController {
  func prepare(forError error: Error)
  func prepare(forAction actionIdentifier: String, itemIdentifiers: [NSFileProviderItemIdentifier])
}
