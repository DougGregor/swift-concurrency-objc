
protocol UIDocumentPickerDelegate : NSObjectProtocol {
  @available(tvOS 11.0, *)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL])
  @available(tvOS 8.0, *)
  optional func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController)
  @available(tvOS, introduced: 8.0, deprecated: 11.0)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL)
}
@available(tvOS, introduced: 8.0, deprecated: 14.0, message: "Use appropriate initializers instead")
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `import`
  case open
  case exportToService
  case moveToService
}
@available(tvOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  @available(tvOS, introduced: 8.0, deprecated: 14.0)
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  @available(tvOS, introduced: 8.0, deprecated: 14.0)
  init(url: URL, in mode: UIDocumentPickerMode)
  @available(tvOS, introduced: 11.0, deprecated: 14.0)
  init(urls: [URL], in mode: UIDocumentPickerMode)
  @available(tvOS 14.0, *)
  init(forExporting urls: [URL], asCopy: Bool)
  @available(tvOS 14.0, *)
  convenience init(forExporting urls: [URL])
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  @available(tvOS, introduced: 8.0, deprecated: 14.0, message: "Use appropriate initializers instead")
  var documentPickerMode: UIDocumentPickerMode { get }
  @available(tvOS 11.0, *)
  var allowsMultipleSelection: Bool
  @available(tvOS 13.0, *)
  var shouldShowFileExtensions: Bool
  @available(tvOS 13.0, *)
  var directoryURL: URL?
}
