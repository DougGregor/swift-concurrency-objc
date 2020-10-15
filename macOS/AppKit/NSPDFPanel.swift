
extension NSPDFPanel {
  @available(macOS 10.9, *)
  struct Options : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var showsPaperSize: NSPDFPanel.Options { get }
    static var showsOrientation: NSPDFPanel.Options { get }
    static var requestsParentDirectory: NSPDFPanel.Options { get }
  }
}
@available(macOS 10.9, *)
class NSPDFPanel : NSObject {
  var accessoryController: NSViewController?
  var options: NSPDFPanel.Options
  var defaultFileName: String
  func beginSheet(with pdfInfo: NSPDFInfo, modalFor docWindow: NSWindow?, completionHandler: @escaping (Int) -> Void)
}
