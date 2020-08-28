
@available(macOS 11.0, *)
class GKLeaderboardScore : NSObject {
  var player: GKPlayer
  var value: Int
  var context: Int
  var leaderboardID: String
}
