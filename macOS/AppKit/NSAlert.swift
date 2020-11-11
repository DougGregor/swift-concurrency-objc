
extension NSAlert {
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case warning
    case informational
    case critical
  }
}
extension NSApplication.ModalResponse {
  static let alertFirstButtonReturn: NSApplication.ModalResponse
  static let alertSecondButtonReturn: NSApplication.ModalResponse
  static let alertThirdButtonReturn: NSApplication.ModalResponse
}
class NSAlert : NSObject {
  /*not inherited*/ init(error: Error)
  var messageText: String
  var informativeText: String
  var icon: NSImage!
  func addButton(withTitle title: String) -> NSButton
  var buttons: [NSButton] { get }
  var showsHelp: Bool
  var helpAnchor: NSHelpManager.AnchorName?
  var alertStyle: NSAlert.Style
  weak var delegate: @sil_weak NSAlertDelegate?
  @available(macOS 10.5, *)
  var showsSuppressionButton: Bool
  @available(macOS 10.5, *)
  var suppressionButton: NSButton? { get }
  @available(macOS 10.5, *)
  var accessoryView: NSView?
  @available(macOS 10.5, *)
  func layout()
  func runModal() -> NSApplication.ModalResponse
  @available(macOS 10.9, *)
  func beginSheetModal(for sheetWindow: NSWindow, completionHandler handler: ((NSApplication.ModalResponse) -> Void)? = nil)
  @available(macOS 10.9, *)
  func beginSheetModalAsync(for sheetWindow: NSWindow) async -> NSApplication.ModalResponse
  var window: NSWindow { get }
}
protocol NSAlertDelegate : NSObjectProtocol {
  optional func alertShowHelp(_ alert: NSAlert) -> Bool
}
extension NSAlert {
  @available(macOS, introduced: 10.3, deprecated: 10.10, message: "Use -beginSheetModalForWindow:completionHandler: instead")
  func beginSheetModal(for window: NSWindow, modalDelegate delegate: Any?, didEnd didEndSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
}
