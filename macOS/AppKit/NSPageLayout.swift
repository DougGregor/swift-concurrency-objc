
class NSPageLayout : NSObject {
  @available(macOS 10.5, *)
  func addAccessoryController(_ accessoryController: NSViewController)
  @available(macOS 10.5, *)
  func removeAccessoryController(_ accessoryController: NSViewController)
  @available(macOS 10.5, *)
  var accessoryControllers: [NSViewController] { get }
  func beginSheet(with printInfo: NSPrintInfo, modalFor docWindow: NSWindow, delegate: Any?, didEnd didEndSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  func runModal(with printInfo: NSPrintInfo) -> Int
  func runModal() -> Int
  var printInfo: NSPrintInfo? { get }
}
extension NSPageLayout {
}
extension NSApplication {
  func runPageLayout(_ sender: Any?)
}
