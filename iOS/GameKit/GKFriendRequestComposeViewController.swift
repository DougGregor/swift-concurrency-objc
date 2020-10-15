
@available(iOS, introduced: 4.2, deprecated: 10.0)
class GKFriendRequestComposeViewController : UINavigationController {
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(_ message: String?)
  @available(iOS 8.0, *)
  func addRecipientPlayers(_ players: [GKPlayer])
  @available(iOS, introduced: 4.2, deprecated: 8.0, message: "use addRecipientPlayers:")
  func addRecipients(withPlayerIDs playerIDs: [String])
  func addRecipients(withEmailAddresses emailAddresses: [String])
  @available(iOS, introduced: 4.2, deprecated: 10.0)
  weak var composeViewDelegate: @sil_weak GKFriendRequestComposeViewControllerDelegate?
}
@available(iOS, introduced: 4.2, deprecated: 10.0)
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(iOS, introduced: 4.2, deprecated: 10.0)
  @asyncHandler func friendRequestComposeViewControllerDidFinish(_ viewController: GKFriendRequestComposeViewController)
}
