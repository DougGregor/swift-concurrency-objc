
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
extension GKVoiceChat {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "use setPlayerVoiceChatStateDidChangeHandler:")
  var playerStateUpdateHandler: (String, GKVoiceChat.PlayerState) -> Void
}
extension GKVoiceChat {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "use players")
  var playerIDs: [String]? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use setPlayer:muted:")
  func setMute(_ isMuted: Bool, forPlayer playerID: String)
}
