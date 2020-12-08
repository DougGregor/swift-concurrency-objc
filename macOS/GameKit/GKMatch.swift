
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
@available(macOS 10.8, *)
class GKMatch : NSObject {
  @available(macOS 10.10, *)
  var players: [GKPlayer] { get }
  weak var delegate: @sil_weak GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(macOS 10.10, *)
  func send(_ data: Data, to players: [GKPlayer], dataMode mode: GKMatch.SendDataMode) throws
  func sendData(toAllPlayers data: Data, with mode: GKMatch.SendDataMode) throws
  func disconnect()
  func voiceChat(withName name: String) -> GKVoiceChat?
  @available(macOS 10.10, *)
  func chooseBestHostingPlayer(completionHandler: @escaping (GKPlayer?) -> Void)
  @available(macOS 10.10, *)
  func chooseBestHostingPlayer() async -> GKPlayer?
  @available(macOS 10.9, *)
  func rematch(completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(macOS 10.9, *)
  func rematch() async throws -> GKMatch
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, fromRemotePlayer player: GKPlayer)
  @available(macOS 10.11, *)
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(macOS 10.8, *)
  @asyncHandler optional func match(_ match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  @available(macOS 10.8, *)
  @asyncHandler optional func match(_ match: GKMatch, didFailWithError error: Error?)
  @available(macOS 10.10, *)
  optional func match(_ match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use match:didReceiveData:fromRemotePlayer:")
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, fromPlayer playerID: String)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use shouldReinviteDisconnectedPlayer:")
  optional func match(_ match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer(completionHandler: @escaping (String?) -> Void)
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer() async -> String?
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use sendData:toPlayers:dataMode:error:")
  func send(_ data: Data, toPlayers playerIDs: [String], with mode: GKMatch.SendDataMode) throws
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use players instead.")
  var playerIDs: [String]? { get }
}
