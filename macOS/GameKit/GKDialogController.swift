
protocol GKViewController {
}
class GKDialogController : NSResponder {
  @IBOutlet weak var parentWindow: @sil_weak NSWindow?
  func present(_ viewController: NSViewController & GKViewController) -> Bool
  @IBAction func dismiss(_ sender: Any)
}
extension GKDialogController {
  class func shared() -> GKDialogController
}
