
@available(macOS, introduced: 10.8, deprecated: 11.0, message: "Replaced by GKLeaderboardEntry")
class GKScore : NSObject, NSCoding, NSSecureCoding {
  init(leaderboardIdentifier identifier: String)
  @available(macOS 10.10, *)
  init(leaderboardIdentifier identifier: String, player: GKPlayer)
  var value: Int64
  var formattedValue: String? { get }
  @available(macOS 10.10, *)
  var leaderboardIdentifier: String
  @available(macOS 10.8, *)
  var context: UInt64
  var date: Date { get }
  @available(macOS 10.10, *)
  var player: GKPlayer { get }
  var rank: Int { get }
  @available(macOS 10.8, *)
  var shouldSetDefaultLeaderboard: Bool
  @available(macOS 10.8, *)
  class func report(_ scores: [GKScore], withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  class func report(_ scores: [GKScore]) async throws
}
extension GKScore {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use +reportScores:withCompletionhandler: instead")
  func report(completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use +reportScores:withCompletionhandler: instead")
  func report() async throws
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use initWithLeaderboardIdentifier: instead")
  init(category: String?)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use leaderboardIdentifier instead")
  var category: String?
}
extension GKScore {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "use player instead")
  var playerID: String? { get }
}
