
@available(iOS 13.4, *)
protocol PKAddSecureElementPassViewControllerDelegate : NSObjectProtocol {
  @available(iOS, introduced: 13.4, deprecated: 14.0, message: "Use addSecureElementPassViewController:didFinishAddingSecureElementPasses:error: instead")
  func addSecureElementPassViewController(_ controller: PKAddSecureElementPassViewController, didFinishAdding pass: PKSecureElementPass?, error: Error?)
  func addSecureElementPassViewController(_ controller: PKAddSecureElementPassViewController, didFinishAddingSecureElementPasses passes: [PKSecureElementPass]?, error: Error?)
}
@available(iOS 13.4, *)
class PKAddSecureElementPassViewController : UIViewController {
  class func canAddSecureElementPass(configuration: PKAddSecureElementPassConfiguration) -> Bool
  init?(configuration: PKAddSecureElementPassConfiguration, delegate: PKAddSecureElementPassViewControllerDelegate?)
  weak var delegate: @sil_weak PKAddSecureElementPassViewControllerDelegate?
}
