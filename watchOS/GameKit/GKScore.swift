
@available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Replaced by GKLeaderboardEntry")
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(watchOS 3.0, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(watchOS 3.0, *)
  var leaderboardIdentifier: String
  @available(watchOS 3.0, *)
  var context: UInt64
  var date: Date { get }
  @available(watchOS 3.0, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(watchOS 3.0, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(watchOS 3.0, *)
  class func report(_ scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS 3.0, *)
  class func report(_ scores: [GKScore]) async throws
}
extension GKScore {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +reportScores:withCompletionhandler: instead")
  func report(completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use +reportScores:withCompletionhandler: instead")
  func report() async throws
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use initWithLeaderboardIdentifier: instead")
  init(category: String?)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use leaderboardIdentifier instead")
  var category: String?
}
extension GKScore {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use initWithLeaderboardIdentifier:player:")
  init?(leaderboardIdentifier identifier: String, forPlayer playerID: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "use player instead")
  var playerID: String? { get }
}
