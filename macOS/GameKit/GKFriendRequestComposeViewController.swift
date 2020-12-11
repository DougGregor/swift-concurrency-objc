
@available(macOS, introduced: 10.8, deprecated: 10.12)
class GKFriendRequestComposeViewController : NSViewController, GKViewController {
}
extension GKFriendRequestComposeViewController {
  class func maxNumberOfRecipients() -> Int
  func setMessage(_ message: String?)
  @available(macOS 10.10, *)
  func addRecipientPlayers(_ players: [GKPlayer])
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "use addRecipientPlayers:")
  func addRecipients(withPlayerIDs playerIDs: [String])
  func addRecipients(withEmailAddresses emailAddresses: [String])
  @available(macOS, introduced: 10.8, deprecated: 10.12)
  weak var composeViewDelegate: @sil_weak GKFriendRequestComposeViewControllerDelegate?
}
@available(macOS, introduced: 10.8, deprecated: 10.12)
protocol GKFriendRequestComposeViewControllerDelegate {
  @available(macOS, introduced: 10.8, deprecated: 10.12)
  func friendRequestComposeViewControllerDidFinish(_ viewController: GKFriendRequestComposeViewController)
}
