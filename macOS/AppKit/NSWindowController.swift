
class NSWindowController : NSResponder, NSSeguePerforming {
  init(window: NSWindow?)
  convenience init(windowNibName: NSNib.Name)
  convenience init(windowNibName: NSNib.Name, owner: Any)
  convenience init(windowNibPath: String, owner: Any)
  var windowNibName: NSNib.Name? { get }
  var windowNibPath: String? { get }
  weak var owner: @sil_weak AnyObject? { get }
  var windowFrameAutosaveName: NSWindow.FrameAutosaveName
  var shouldCascadeWindows: Bool
  unowned(unsafe) var document: @sil_unmanaged AnyObject?
  func setDocumentEdited(_ dirtyFlag: Bool)
  var shouldCloseDocument: Bool
  func synchronizeWindowTitleWithDocumentName()
  func windowTitle(forDocumentDisplayName displayName: String) -> String
  @available(macOS 10.10, *)
  var contentViewController: NSViewController?
  var window: NSWindow?
  var isWindowLoaded: Bool { get }
  func windowWillLoad()
  func windowDidLoad()
  func loadWindow()
  func close()
  @IBAction func showWindow(_ sender: Any?)
}
extension NSWindowController {
  @available(macOS 10.10, *)
  var storyboard: NSStoryboard? { get }
}
extension NSWindowController {
  @available(macOS 10.10, *)
  @IBAction func dismissController(_ sender: Any?)
}
