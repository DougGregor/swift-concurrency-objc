
enum GKMatchmakingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case nearbyOnly
  case automatchOnly
}
@available(macOS 10.8, *)
class GKMatchmakerViewController : NSViewController, GKViewController {
  weak var matchmakerDelegate: @sil_weak GKMatchmakerViewControllerDelegate?
  var matchRequest: GKMatchRequest { get }
  var isHosted: Bool
  var matchmakingMode: GKMatchmakingMode
  init?(matchRequest request: GKMatchRequest)
  init?(invite: GKInvite)
  @available(macOS 10.8, *)
  func addPlayers(to match: GKMatch)
  @available(macOS 10.10, *)
  func setHostedPlayer(_ player: GKPlayer, didConnect connected: Bool)
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  var defaultInvitationMessage: String?
}
extension GKMatchmakerViewController {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use setHostedPlayer:didConnect:")
  func setHostedPlayer(_ playerID: String, connected: Bool)
}
protocol GKMatchmakerViewControllerDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  func matchmakerViewControllerWasCancelled(_ viewController: GKMatchmakerViewController)
  @available(macOS 10.8, *)
  @asyncHandler func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFailWithError error: Error)
  @available(macOS 10.8, *)
  @asyncHandler optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFind match: GKMatch)
  @available(macOS 10.10, *)
  @asyncHandler optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFindHostedPlayers players: [GKPlayer])
  @available(macOS 10.10, *)
  optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, hostedPlayerDidAccept player: GKPlayer)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use matchmakerViewController:didFindHostedPlayers:")
  @asyncHandler optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didFindPlayers playerIDs: [String])
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use matchmakerViewController:hostedPlayerDidAccept:")
  @asyncHandler optional func matchmakerViewController(_ viewController: GKMatchmakerViewController, didReceiveAcceptFromHostedPlayer playerID: String)
}
