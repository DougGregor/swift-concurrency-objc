
enum GKMatchmakingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case nearbyOnly
  case automatchOnly
}
@available(tvOS 4.1, *)
class GKMatchmakerViewController : UINavigationController {
  weak var matchmakerDelegate: @sil_weak GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  var matchmakingMode: GKMatchmakingMode
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(tvOS 5.0, *)
  func addPlayers(to match: GKMatch)
  @available(tvOS 8.0, *)
  func setHostedPlayer(_ player: GKPlayer, didConnect connected: Bool)
}
extension GKMatchmakerViewController {
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 4.1, *)
  func matchmakerViewControllerWasCancelled(_ viewController: GKMatchmakerViewController)
  @available(tvOS 4.1, *)
  func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFailWithError error: Error)
  @available(tvOS 4.1, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(tvOS 8.0, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
}
