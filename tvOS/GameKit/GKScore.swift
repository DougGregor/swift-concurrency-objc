
@available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Replaced by GKLeaderboardEntry")
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(tvOS 8.0, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(tvOS 7.0, *)
  var leaderboardIdentifier: String
  @available(tvOS 5.0, *)
  var context: UInt64
  var date: Date { get }
  @available(tvOS 8.0, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(tvOS 5.0, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(tvOS 6.0, *)
  class func report(_ scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  class func reportScoresAsync(_ scores: [GKScore]) async throws
}
extension GKScore {
}
extension GKScore {
}
