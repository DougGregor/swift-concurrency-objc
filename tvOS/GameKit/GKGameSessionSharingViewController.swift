
@available(tvOS, introduced: 10.0, deprecated: 12.0, message: "For real-time matches, use GKMatchmakerViewController. For turn-based matches, use GKTurnBasedMatchmakerViewController.")
class GKGameSessionSharingViewController : UIViewController {
  var session: GKGameSession { get }
  weak var delegate: @sil_weak GKGameSessionSharingViewControllerDelegate?
  init(session: GKGameSession)
}
@available(tvOS, introduced: 10.0, deprecated: 12.0, message: "For real-time matches, use GKMatchmakerViewControllerDelegate to receive notifications from the GKMatchmakerViewController. For turn-based matches, use GKTurnBasedMatchmakerViewControllerDelegate and GKLocalPlayerListener to receive notifications from the GKTurnBasedMatchmakerViewController.")
protocol GKGameSessionSharingViewControllerDelegate : NSObjectProtocol {
  func sharingViewController(_ viewController: GKGameSessionSharingViewController, didFinishWithError error: Error?)
}
