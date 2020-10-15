
@available(tvOS 5.0, *)
class GKTurnBasedMatchmakerViewController : UINavigationController {
}
extension GKTurnBasedMatchmakerViewController {
  weak var turnBasedMatchmakerDelegate: @sil_weak GKTurnBasedMatchmakerViewControllerDelegate?
  var showExistingMatches: Bool
  init(matchRequest request: GKMatchRequest)
}
protocol GKTurnBasedMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 5.0, *)
  func turnBasedMatchmakerViewControllerWasCancelled(_ viewController: GKTurnBasedMatchmakerViewController)
  @available(tvOS 5.0, *)
  @asyncHandler func turnBasedMatchmakerViewController(_ viewController: GKTurnBasedMatchmakerViewController, didFailWithError error: Error)
}
