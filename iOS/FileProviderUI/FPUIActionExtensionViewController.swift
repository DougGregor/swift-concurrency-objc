
@available(iOS 11.0, *)
class FPUIActionExtensionViewController : UIViewController {
  func prepare(forError error: Error)
  func prepare(forAction actionIdentifier: String, itemIdentifiers: [NSFileProviderItemIdentifier])
}
