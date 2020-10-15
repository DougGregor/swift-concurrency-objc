
protocol PKAddPassesViewControllerDelegate : NSObjectProtocol {
  @available(iOS 6.0, *)
  @asyncHandler optional func addPassesViewControllerDidFinish(_ controller: PKAddPassesViewController)
}
@available(iOS 6.0, *)
class PKAddPassesViewController : UIViewController {
  init?(pass: PKPass)
  @available(iOS 7.0, *)
  init?(passes: [PKPass])
  @available(iOS 8.0, *)
  class func canAddPasses() -> Bool
  weak var delegate: @sil_weak PKAddPassesViewControllerDelegate?
}
