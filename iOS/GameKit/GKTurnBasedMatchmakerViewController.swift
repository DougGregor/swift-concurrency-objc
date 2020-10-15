
@available(iOS 5.0, *)
class GKTurnBasedMatchmakerViewController : UINavigationController {
}
extension GKTurnBasedMatchmakerViewController {
  weak var turnBasedMatchmakerDelegate: @sil_weak GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  func turnBasedMatchmakerViewControllerWasCancelled(_ viewController: GKTurnBasedMatchmakerViewController)
  @available(iOS 5.0, *)
  @asyncHandler func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: Error)
  @available(iOS, introduced: 5.0, deprecated: 9.0, message: "use GKTurnBasedEventListener player:receivedTurnEventForMatch:didBecomeActive:")
  @asyncHandler optional func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, didFind match: GKTurnBasedMatch)
  @available(iOS, introduced: 5.0, deprecated: 9.0, message: "use GKTurnBasedEventListener player:wantsToQuitMatch:")
  optional func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, playerQuitFor match: GKTurnBasedMatch)
}
