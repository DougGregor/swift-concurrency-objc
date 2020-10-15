
class DRBurnSetupPanel : DRSetupPanel {
  func setDefaultButtonTitle(_ title: String!)
  func setCanSelectTestBurn(_ flag: Bool)
  func setCanSelectAppendableMedia(_ flag: Bool)
  func burnObject() -> DRBurn!
  @IBAction func expand(_ sender: Any!)
  @IBAction func burnSpeed(_ sender: Any!)
  @IBAction func appendable(_ sender: Any!)
  @IBAction func completionAction(_ sender: Any!)
  @IBAction func testBurn(_ sender: Any!)
  @IBAction func verifyBurn(_ sender: Any!)
}
@available(macOS 10.2, *)
let DRBurnSetupPanelDefaultButtonDefaultTitle: String
