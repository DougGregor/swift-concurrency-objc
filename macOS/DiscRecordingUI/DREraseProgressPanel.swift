
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let DREraseProgressPanelWillBegin: NSNotification.Name
  @available(macOS 10.2, *)
  static let DREraseProgressPanelDidFinish: NSNotification.Name
}
class DREraseProgressPanel : NSPanel {
  func beginProgressSheet(for erase: DRErase!, modalFor docWindow: NSWindow!)
  func begin(for erase: DRErase!)
  func setDescription(_ description: String!)
}
extension NSObject {
  class func eraseProgressPanelWillBegin(_ aNotification: Notification!)
  func eraseProgressPanelWillBegin(_ aNotification: Notification!)
  class func eraseProgressPanelDidFinish(_ aNotification: Notification!)
  func eraseProgressPanelDidFinish(_ aNotification: Notification!)
  class func eraseProgressPanel(_ theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
  func eraseProgressPanel(_ theErasePanel: DREraseProgressPanel!, eraseDidFinish erase: DRErase!) -> Bool
}
