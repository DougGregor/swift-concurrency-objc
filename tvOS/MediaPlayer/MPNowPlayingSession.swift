
@available(tvOS 14.0, *)
class MPNowPlayingSession : NSObject {
  init(players: [AVPlayer])
  var players: [AVPlayer] { get }
  weak var delegate: @sil_weak MPNowPlayingSessionDelegate?
  var nowPlayingInfoCenter: MPNowPlayingInfoCenter { get }
  var remoteCommandCenter: MPRemoteCommandCenter { get }
  var canBecomeActive: Bool { get }
  var isActive: Bool { get }
  func becomeActiveIfPossible(completion: ((Bool) -> Void)? = nil)
  func becomeActiveIfPossible() async -> Bool
  func addPlayer(_ player: AVPlayer)
  func removePlayer(_ player: AVPlayer)
}
@available(tvOS 14.0, *)
protocol MPNowPlayingSessionDelegate : NSObjectProtocol {
  @asyncHandler optional func nowPlayingSessionDidChangeActive(_ nowPlayingSession: MPNowPlayingSession)
  @asyncHandler optional func nowPlayingSessionDidChangeCanBecomeActive(_ nowPlayingSession: MPNowPlayingSession)
}
