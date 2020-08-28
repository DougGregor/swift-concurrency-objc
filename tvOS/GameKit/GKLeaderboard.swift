
extension GKLeaderboard {
  enum TimeScope : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case today
    case week
    case allTime
  }
  enum PlayerScope : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case global
    case friendsOnly
  }
  @available(tvOS 14.0, *)
  enum LeaderboardType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case classic
    case recurring
  }
}
@available(tvOS 4.1, *)
class GKLeaderboard : NSObject {
  var title: String? { get }
  @available(tvOS 6.0, *)
  var groupIdentifier: String? { get }
  @available(tvOS 14.0, *)
  var baseLeaderboardID: String { get }
  @available(tvOS 14.0, *)
  var type: GKLeaderboard.LeaderboardType { get }
  @available(tvOS 14.0, *)
  var startDate: Date? { get }
  @available(tvOS 14.0, *)
  var nextStartDate: Date? { get }
  @available(tvOS 14.0, *)
  var duration: TimeInterval { get }
  @available(tvOS 14.0, *)
  class func loadLeaderboards(IDs leaderboardIDs: [String]?, completionHandler: @escaping ([GKLeaderboard]?, Error?) -> Void)
  @available(tvOS 14.0, *)
  func loadPreviousOccurrence(completionHandler: @escaping (GKLeaderboard?, Error?) -> Void)
  @available(tvOS 14.0, *)
  class func submitScore(_ score: Int, context: Int, player: GKPlayer, leaderboardIDs: [String], completionHandler: @escaping (Error?) -> Void)
  @available(tvOS 14.0, *)
  func submitScore(_ score: Int, context: Int, player: GKPlayer, completionHandler: @escaping (Error?) -> Void)
  @available(tvOS 14.0, *)
  func loadEntries(for playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope, range: NSRange, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Int, Error?) -> Void)
  @available(tvOS 14.0, *)
  func loadEntries(for players: [GKPlayer], timeScope: GKLeaderboard.TimeScope, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Error?) -> Void)
}
extension GKLeaderboard {
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var timeScope: GKLeaderboard.TimeScope
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var playerScope: GKLeaderboard.PlayerScope
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var identifier: String?
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var range: NSRange
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: to obtain scores.")
  var scores: [GKScore]? { get }
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain the size of the leaderboard.")
  var maxRange: Int { get }
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var localPlayerScore: GKScore? { get }
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var isLoading: Bool { get }
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use instance method loadEntriesForPlayers:timeScope:completionHandler: instead.")
  init(players: [GKPlayer])
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler:.")
  func loadScores(completionHandler: (([GKScore]?, Error?) -> Void)? = nil)
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use class method loadLeaderboardsWithIDs:completionHandler:")
  class func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
}
extension GKLeaderboard {
}
