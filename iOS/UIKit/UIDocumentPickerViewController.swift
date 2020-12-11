
protocol UIDocumentPickerDelegate : NSObjectProtocol {
  @available(iOS 11.0, *)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL])
  @available(iOS 8.0, *)
  optional func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController)
  @available(iOS, introduced: 8.0, deprecated: 11.0)
  optional func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL)
}
@available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use appropriate initializers instead")
enum UIDocumentPickerMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `import`
  case open
  case exportToService
  case moveToService
}
@available(iOS 8.0, *)
class UIDocumentPickerViewController : UIViewController {
  @available(iOS, introduced: 8.0, deprecated: 14.0)
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  @available(iOS, introduced: 8.0, deprecated: 14.0)
  init(url: URL, in mode: UIDocumentPickerMode)
  @available(iOS, introduced: 11.0, deprecated: 14.0)
  init(urls: [URL], in mode: UIDocumentPickerMode)
  @available(iOS 14.0, *)
  init(forExporting urls: [URL], asCopy: Bool)
  @available(iOS 14.0, *)
  convenience init(forExporting urls: [URL])
  weak var delegate: @sil_weak UIDocumentPickerDelegate?
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use appropriate initializers instead")
  var documentPickerMode: UIDocumentPickerMode { get }
  @available(iOS 11.0, *)
  var allowsMultipleSelection: Bool
  @available(iOS 13.0, *)
  var shouldShowFileExtensions: Bool
  @available(iOS 13.0, *)
  var directoryURL: URL?
}
