
@available(tvOS, introduced: 8.0, deprecated: 14.0, message: "Use enumeration based NSFileProviderExtension instead")
class UIDocumentPickerExtensionViewController : UIViewController {
  func dismissGrantingAccess(to url: URL?)
  func prepareForPresentation(in mode: UIDocumentPickerMode)
  var documentPickerMode: UIDocumentPickerMode { get }
  var originalURL: URL? { get }
  var validTypes: [String]? { get }
  var providerIdentifier: String { get }
  var documentStorageURL: URL? { get }
}
