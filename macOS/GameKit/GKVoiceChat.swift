
extension GKVoiceChat {
  enum PlayerState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case connected
    case disconnected
    case speaking
    case silent
    case connecting
  }
}
@available(macOS 10.8, *)
class GKVoiceChat : NSObject {
  func start()
  func stop()
  @available(macOS 10.10, *)
  func setPlayer(_ player: GKPlayer, muted isMuted: Bool)
  @available(macOS 10.10, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChat.PlayerState) -> Void
  var name: String { get }
  var isActive: Bool
  var volume: Float
  @available(macOS 10.10, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
}
extension GKVoiceChat {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "use setPlayerVoiceChatStateDidChangeHandler:")
  var playerStateUpdateHandler: (String, GKVoiceChat.PlayerState) -> Void
}
extension GKVoiceChat {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "use players")
  var playerIDs: [String]? { get }
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use setPlayer:muted:")
  func setMute(_ isMuted: Bool, forPlayer playerID: String)
}
