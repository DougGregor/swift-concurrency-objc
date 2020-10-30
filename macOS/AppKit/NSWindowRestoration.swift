
protocol NSWindowRestoration : NSObjectProtocol {
  @available(macOS 10.7, *)
  static func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: @escaping (NSWindow?, Error?) -> Void)
  @available(macOS 10.7, *)
  static func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder) async throws -> NSWindow
}
extension NSDocumentController : NSWindowRestoration {
}
extension NSApplication {
  @available(macOS 10.7, *)
  func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: @escaping (NSWindow?, Error?) -> Void) -> Bool
}
extension NSApplication {
  @available(macOS 10.7, *)
  class let didFinishRestoringWindowsNotification: NSNotification.Name
}
extension NSWindow {
  @available(macOS 10.7, *)
  var isRestorable: Bool
  @available(macOS 10.7, *)
  var restorationClass: NSWindowRestoration.Type?
  func disableSnapshotRestoration()
  func enableSnapshotRestoration()
}
extension NSResponder {
  @available(macOS 10.7, *)
  func encodeRestorableState(with coder: NSCoder)
  @available(macOS 10.13, *)
  func encodeRestorableState(with coder: NSCoder, backgroundQueue queue: OperationQueue)
  @available(macOS 10.7, *)
  func restoreState(with coder: NSCoder)
  @available(macOS 10.7, *)
  func invalidateRestorableState()
  @available(macOS 10.7, *)
  class var restorableStateKeyPaths: [String] { get }
}
extension NSApplication {
  @available(macOS 10.7, *)
  func extendStateRestoration()
  @available(macOS 10.7, *)
  func completeStateRestoration()
}
extension NSDocument {
  @available(macOS 10.7, *)
  func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder, completionHandler: @escaping (NSWindow?, Error?) -> Void)
  @available(macOS 10.7, *)
  func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder) async throws -> NSWindow
  @available(macOS 10.7, *)
  func encodeRestorableState(with coder: NSCoder)
  @available(macOS 10.13, *)
  func encodeRestorableState(with coder: NSCoder, backgroundQueue queue: OperationQueue)
  @available(macOS 10.7, *)
  func restoreState(with coder: NSCoder)
  @available(macOS 10.7, *)
  func invalidateRestorableState()
  @available(macOS 10.7, *)
  class var restorableStateKeyPaths: [String] { get }
}
