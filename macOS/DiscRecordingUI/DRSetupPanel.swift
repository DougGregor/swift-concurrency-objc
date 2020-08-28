
class DRSetupPanel : NSPanel {
  init!(nibName: String!)
  func run() -> Int
  func beginSetupSheet(for owner: NSWindow!, modalDelegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!)
  @IBAction func ok(_ sender: Any!)
  @IBAction func cancel(_ sender: Any!)
  @IBAction func eject(_ sender: Any!)
  @IBAction func open(_ sender: Any!)
  @IBAction func close(_ sender: Any!)
  func deviceSelectionChanged(_ device: DRDevice!)
  func mediaStateChanged(_ status: [AnyHashable : Any]!) -> Bool
  func setupForDisplay()
}
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let DRSetupPanelDeviceSelectionChanged: NSNotification.Name
}
@available(macOS 10.2, *)
let DRSetupPanelSelectedDeviceKey: String
extension NSObject {
  class func setupPanel(_ aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  func setupPanel(_ aPanel: DRSetupPanel!, deviceCouldBeTarget device: DRDevice!) -> Bool
  class func setupPanel(_ aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  func setupPanel(_ aPanel: DRSetupPanel!, determineBestDeviceOfA deviceA: DRDevice!, orB device: DRDevice!) -> DRDevice!
  class func setupPanelDeviceSelectionChanged(_ aNotification: Notification!)
  func setupPanelDeviceSelectionChanged(_ aNotification: Notification!)
  class func setupPanelShouldHandleMediaReservations(_ aPanel: DRSetupPanel!) -> Bool
  func setupPanelShouldHandleMediaReservations(_ aPanel: DRSetupPanel!) -> Bool
  class func setupPanel(_ aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>!) -> Bool
  func setupPanel(_ aPanel: DRSetupPanel!, deviceContainsSuitableMedia device: DRDevice!, promptString prompt: AutoreleasingUnsafeMutablePointer<NSString?>!) -> Bool
}
