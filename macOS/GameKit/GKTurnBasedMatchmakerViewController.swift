
@available(macOS 10.8, *)
class GKTurnBasedMatchmakerViewController : NSViewController, GKViewController {
}
extension GKTurnBasedMatchmakerViewController {
  weak var turnBasedMatchmakerDelegate: @sil_weak GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  func turnBasedMatchmakerViewControllerWasCancelled(_ viewController: GKTurnBasedMatchmakerViewController)
  @available(macOS 10.8, *)
  @asyncHandler func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: Error)
  @available(macOS, introduced: 10.8, deprecated: 10.11, message: "use GKTurnBasedEventListener player:receivedTurnEventForMatch:didBecomeActive:")
  @asyncHandler optional func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, didFind match: GKTurnBasedMatch)
  @available(macOS, introduced: 10.8, deprecated: 10.11, message: "use GKTurnBasedEventListener player:wantsToQuitMatch:")
  optional func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, playerQuitFor match: GKTurnBasedMatch)
}
