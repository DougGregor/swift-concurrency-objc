
@available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSApplication.ModalResponse.cancel")
var NSFileHandlingPanelCancelButton: Int { get }
@available(macOS, introduced: 10.0, deprecated: 10.13, renamed: "NSApplication.ModalResponse.OK")
var NSFileHandlingPanelOKButton: Int { get }
class NSSavePanel : NSPanel {
  var url: URL? { get }
  @available(macOS 10.6, *)
  var directoryURL: URL?
  var allowsOtherFileTypes: Bool
  var accessoryView: NSView?
  var isExpanded: Bool { get }
  var canCreateDirectories: Bool
  var canSelectHiddenExtension: Bool
  var isExtensionHidden: Bool
  var treatsFilePackagesAsDirectories: Bool
  var prompt: String!
  var nameFieldLabel: String!
  @available(macOS 10.6, *)
  var nameFieldStringValue: String
  var message: String!
  func validateVisibleColumns()
  var showsHiddenFiles: Bool
  @available(macOS 10.9, *)
  var showsTagField: Bool
  @available(macOS 10.9, *)
  var tagNames: [String]?
  @IBAction func ok(_ sender: Any?)
  @IBAction func cancel(_ sender: Any?)
  @available(macOS 10.6, *)
  func beginSheetModal(for window: NSWindow, completionHandler handler: @escaping (NSApplication.ModalResponse) -> Void)
  @available(macOS 10.6, *)
  func begin(completionHandler handler: @escaping (NSApplication.ModalResponse) -> Void)
  func runModal() -> NSApplication.ModalResponse
}
protocol NSOpenSavePanelDelegate : NSObjectProtocol {
  @available(macOS 10.6, *)
  optional func panel(_ sender: Any, shouldEnable url: URL) -> Bool
  @available(macOS 10.6, *)
  optional func panel(_ sender: Any, validate url: URL) throws
  @available(macOS 10.6, *)
  optional func panel(_ sender: Any, didChangeToDirectoryURL url: URL?)
  optional func panel(_ sender: Any, userEnteredFilename filename: String, confirmed okFlag: Bool) -> String?
  optional func panel(_ sender: Any, willExpand expanding: Bool)
  optional func panelSelectionDidChange(_ sender: Any?)
}
extension NSObject {
}
extension NSSavePanel {
  @available(macOS, introduced: 10.3, deprecated: 100000, message: "Use -allowedContentTypes instead")
  var allowedFileTypes: [String]?
}
