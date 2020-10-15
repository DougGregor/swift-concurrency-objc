
class NSHelpManager : NSObject {
  class var shared: NSHelpManager { get }
  class var isContextHelpModeActive: Bool
  func setContextHelp(_ attrString: NSAttributedString, for object: Any)
  func removeContextHelp(for object: Any)
  func contextHelp(for object: Any) -> NSAttributedString?
  func showContextHelp(for object: Any, locationHint pt: NSPoint) -> Bool
  func openHelpAnchor(_ anchor: NSHelpManager.AnchorName, inBook book: NSHelpManager.BookName?)
  func find(_ query: String, inBook book: NSHelpManager.BookName?)
  @available(macOS 10.6, *)
  func registerBooks(in bundle: Bundle) -> Bool
}
extension NSHelpManager {
  class let contextHelpModeDidActivateNotification: NSNotification.Name
  class let contextHelpModeDidDeactivateNotification: NSNotification.Name
  typealias BookName = String
  typealias AnchorName = String
  typealias ContextHelpKey = String
}
extension Bundle {
  func contextHelp(forKey key: NSHelpManager.ContextHelpKey) -> NSAttributedString?
}
extension NSApplication {
  func activateContextHelpMode(_ sender: Any?)
  func showHelp(_ sender: Any?)
}
