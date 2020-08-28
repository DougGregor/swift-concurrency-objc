
@available(tvOS, introduced: 8.0, deprecated: 11.0)
enum UIDocumentMenuOrder : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case first
  case last
}
@available(tvOS, introduced: 8.0, deprecated: 13.0, message: "UIDocumentMenuDelegate is deprecated. Use UIDocumentPickerViewController directly.")
protocol UIDocumentMenuDelegate : NSObjectProtocol {
  func documentMenu(_ documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController)
  optional func documentMenuWasCancelled(_ documentMenu: UIDocumentMenuViewController)
}
@available(tvOS, introduced: 8.0, deprecated: 11.0, message: "UIDocumentMenuViewController is deprecated. Use UIDocumentPickerViewController directly.")
class UIDocumentMenuViewController : UIViewController {
  init(documentTypes allowedUTIs: [String], in mode: UIDocumentPickerMode)
  init(url: URL, in mode: UIDocumentPickerMode)
  func addOption(withTitle title: String, image: UIImage?, order: UIDocumentMenuOrder, handler: @escaping () -> Void)
  weak var delegate: @sil_weak UIDocumentMenuDelegate?
}
