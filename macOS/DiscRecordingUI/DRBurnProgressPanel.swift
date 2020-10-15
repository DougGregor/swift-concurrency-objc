
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let DRBurnProgressPanelWillBegin: NSNotification.Name
  @available(macOS 10.2, *)
  static let DRBurnProgressPanelDidFinish: NSNotification.Name
}
class DRBurnProgressPanel : NSPanel {
  func beginProgressSheet(for burn: DRBurn!, layout: Any!, modalFor docWindow: NSWindow!)
  func begin(for burn: DRBurn!, layout: Any!)
  func setDescription(_ description: String!)
  func setVerboseProgressStatus(_ verbose: Bool)
  func verboseProgressStatus() -> Bool
  @IBAction func stopBurn(_ sender: Any!)
}
extension NSObject {
  class func burnProgressPanelWillBegin(_ aNotification: Notification!)
  func burnProgressPanelWillBegin(_ aNotification: Notification!)
  class func burnProgressPanelDidFinish(_ aNotification: Notification!)
  func burnProgressPanelDidFinish(_ aNotification: Notification!)
  class func burnProgressPanel(_ theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
  func burnProgressPanel(_ theBurnPanel: DRBurnProgressPanel!, burnDidFinish burn: DRBurn!) -> Bool
}
