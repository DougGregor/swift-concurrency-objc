
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
@available(tvOS 4.1, *)
class GKVoiceChat : NSObject {
  func start()
  func stop()
  @available(tvOS 8.0, *)
  func setPlayer(_ player: GKPlayer, muted isMuted: Bool)
  @available(tvOS 8.0, *)
  var playerVoiceChatStateDidChangeHandler: (GKPlayer, GKVoiceChat.PlayerState) -> Void
  var name: String { get }
  var isActive: Bool
  var volume: Float
  @available(tvOS 8.0, *)
  var players: [GKPlayer] { get }
  class func isVoIPAllowed() -> Bool
}
extension GKVoiceChat {
}
extension GKVoiceChat {
}
