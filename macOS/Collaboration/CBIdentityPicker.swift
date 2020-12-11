
@available(macOS 10.5, *)
class CBIdentityPicker : NSObject {
  var title: String?
  var allowsMultipleSelection: Bool
  func runModal() -> Int
  @available(macOS, introduced: 10.5, deprecated: 10.11, message: "Use runModalForWindow:completionHandler: instead.")
  func runModal(for window: NSWindow, modalDelegate delegate: Any?, didEnd didEndSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func runModal(for window: NSWindow, completionHandler: ((NSApplication.ModalResponse) -> Void)? = nil)
  func runModal(for window: NSWindow) async -> NSApplication.ModalResponse
  var identities: [CBIdentity] { get }
}
