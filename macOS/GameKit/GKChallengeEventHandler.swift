
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
protocol GKChallengeEventHandlerDelegate : NSObjectProtocol {
  optional func localPlayerDidSelect(_ challenge: GKChallenge!)
  optional func shouldShowBanner(forLocallyReceivedChallenge challenge: GKChallenge!) -> Bool
  optional func localPlayerDidReceive(_ challenge: GKChallenge!)
  optional func shouldShowBanner(forLocallyCompletedChallenge challenge: GKChallenge!) -> Bool
  optional func localPlayerDidComplete(_ challenge: GKChallenge!)
  optional func shouldShowBanner(forRemotelyCompletedChallenge challenge: GKChallenge!) -> Bool
  optional func remotePlayerDidComplete(_ challenge: GKChallenge!)
}
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "You should instead implement the GKChallengeListener protocol and register a listener with GKLocalPlayer.")
class GKChallengeEventHandler : NSObject {
  @available(macOS, introduced: 10.8, deprecated: 10.10)
  weak var delegate: @sil_weak GKChallengeEventHandlerDelegate!
}
