
enum GKMatchmakingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case nearbyOnly
  case automatchOnly
}
@available(iOS 4.1, *)
class GKMatchmakerViewController : UINavigationController {
  weak var matchmakerDelegate: @sil_weak GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  var matchmakingMode: GKMatchmakingMode
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(iOS 5.0, *)
  func addPlayers(to match: GKMatch)
  @available(iOS 8.0, *)
  func setHostedPlayer(_ player: GKPlayer, didConnect connected: Bool)
}
extension GKMatchmakerViewController {
  @available(iOS, introduced: 5.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use setHostedPlayer:didConnect:")
  func setHostedPlayer(_ playerID: String, connected: Bool)
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(iOS 4.1, *)
  func matchmakerViewControllerWasCancelled(_ viewController: GKMatchmakerViewController)
  @available(iOS 4.1, *)
  func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFailWithError error: Error)
  @available(iOS 4.1, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(iOS 8.0, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(iOS 8.0, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use matchmakerViewController:didFindHostedPlayers:")
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFindPlayers playerIDs: [String])
  @available(iOS, introduced: 5.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use matchmakerViewController:hostedPlayerDidAccept:")
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didReceiveAcceptFromHostedPlayer playerID: String)
}
