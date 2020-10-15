
extension GKMatch {
  enum SendDataMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case reliable
    case unreliable
  }
}
enum GKPlayerConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case connected
  case disconnected
}
@available(tvOS 4.1, *)
class GKMatch : NSObject {
  @available(tvOS 8.0, *)
  var players: [GKPlayer] { get }
  weak var delegate: @sil_weak GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(tvOS 8.0, *)
  func send(_ data: Data, to players: [GKPlayer], dataMode mode: GKMatch.SendDataMode) throws
  func sendData(toAllPlayers data: Data, with mode: GKMatch.SendDataMode) throws
  func disconnect()
  func voiceChat(withName name: String) -> GKVoiceChat?
  @available(tvOS 8.0, *)
  func chooseBestHostingPlayer(completionHandler: @escaping (GKPlayer?) -> Void)
  @available(tvOS 8.0, *)
  func chooseBestHostingPlayer() async -> GKPlayer?
  @available(tvOS 6.0, *)
  func rematch(completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func rematch() async throws -> GKMatch?
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(tvOS 8.0, *)
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, fromRemotePlayer player: GKPlayer)
  @available(tvOS 9.0, *)
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(tvOS 4.1, *)
  @asyncHandler optional func match(_ match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  @available(tvOS 4.1, *)
  @asyncHandler optional func match(_ match: GKMatch, didFailWithError error: Error?)
  @available(tvOS 8.0, *)
  optional func match(_ match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
}
extension GKMatch {
}
