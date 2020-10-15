
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
@available(iOS 4.1, *)
class GKMatch : NSObject {
  @available(iOS 8.0, *)
  var players: [GKPlayer] { get }
  weak var delegate: @sil_weak GKMatchDelegate?
  var expectedPlayerCount: Int { get }
  @available(iOS 8.0, *)
  func send(_ data: Data, to players: [GKPlayer], dataMode mode: GKMatch.SendDataMode) throws
  func sendData(toAllPlayers data: Data, with mode: GKMatch.SendDataMode) throws
  func disconnect()
  func voiceChat(withName name: String) -> GKVoiceChat?
  @available(iOS 8.0, *)
  func chooseBestHostingPlayer(completionHandler: @escaping (GKPlayer?) -> Void)
  @available(iOS 8.0, *)
  func chooseBestHostingPlayer() async -> GKPlayer?
  @available(iOS 6.0, *)
  func rematch(completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func rematch() async throws -> GKMatch?
}
protocol GKMatchDelegate : NSObjectProtocol {
  @available(iOS 8.0, *)
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, fromRemotePlayer player: GKPlayer)
  @available(iOS 9.0, *)
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, forRecipient recipient: GKPlayer, fromRemotePlayer player: GKPlayer)
  @available(iOS 4.1, *)
  @asyncHandler optional func match(_ match: GKMatch, player: GKPlayer, didChange state: GKPlayerConnectionState)
  @available(iOS 4.1, *)
  @asyncHandler optional func match(_ match: GKMatch, didFailWithError error: Error?)
  @available(iOS 8.0, *)
  optional func match(_ match: GKMatch, shouldReinviteDisconnectedPlayer player: GKPlayer) -> Bool
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use match:didReceiveData:fromRemotePlayer:")
  @asyncHandler optional func match(_ match: GKMatch, didReceive data: Data, fromPlayer playerID: String)
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use match:player:didChangeConnectionState:")
  @asyncHandler optional func match(_ match: GKMatch, player playerID: String, didChange state: GKPlayerConnectionState)
  @available(iOS, introduced: 5.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use shouldReinviteDisconnectedPlayer:")
  optional func match(_ match: GKMatch, shouldReinvitePlayer playerID: String) -> Bool
}
extension GKMatch {
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer(completionHandler: @escaping (String?) -> Void)
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer() async -> String?
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use sendData:toPlayers:dataMode:error:")
  func send(_ data: Data, toPlayers playerIDs: [String], with mode: GKMatch.SendDataMode) throws
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use players instead.")
  var playerIDs: [String]? { get }
}
