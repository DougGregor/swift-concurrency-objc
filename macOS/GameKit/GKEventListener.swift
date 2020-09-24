
protocol GKChallengeListener : NSObjectProtocol {
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, wantsToPlay challenge: GKChallenge)
  @available(macOS 10.10, *)
  @asyncHandler optional func player(_ player: GKPlayer, didReceive challenge: GKChallenge)
  @available(macOS 10.10, *)
  @asyncHandler optional func player(_ player: GKPlayer, didComplete challenge: GKChallenge, issuedByFriend friendPlayer: GKPlayer)
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, issuedChallengeWasCompleted challenge: GKChallenge, byFriend friendPlayer: GKPlayer)
}
