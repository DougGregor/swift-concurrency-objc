
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
  @available(watchOS 7.0, *)
  enum LeaderboardType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case classic
    case recurring
  }
}
@available(watchOS 3.0, *)
class GKLeaderboard : NSObject {
  var title: String? { get }
  @available(watchOS 2.0, *)
  var groupIdentifier: String? { get }
  @available(watchOS 7.0, *)
  var baseLeaderboardID: String { get }
  @available(watchOS 7.0, *)
  var type: GKLeaderboard.LeaderboardType { get }
  @available(watchOS 7.0, *)
  var startDate: Date? { get }
  @available(watchOS 7.0, *)
  var nextStartDate: Date? { get }
  @available(watchOS 7.0, *)
  var duration: TimeInterval { get }
  @available(watchOS 7.0, *)
  class func loadLeaderboards(IDs leaderboardIDs: [String]?, completionHandler: @escaping ([GKLeaderboard]?, Error?) -> Void)
  @available(watchOS 7.0, *)
  func loadPreviousOccurrence(completionHandler: @escaping (GKLeaderboard?, Error?) -> Void)
  @available(watchOS 7.0, *)
  class func submitScore(_ score: Int, context: Int, player: GKPlayer, leaderboardIDs: [String], completionHandler: @escaping (Error?) -> Void)
  @available(watchOS 7.0, *)
  func submitScore(_ score: Int, context: Int, player: GKPlayer, completionHandler: @escaping (Error?) -> Void)
  @available(watchOS 7.0, *)
  func loadEntries(for playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope, range: NSRange, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Int, Error?) -> Void)
  @available(watchOS 7.0, *)
  func loadEntries(for players: [GKPlayer], timeScope: GKLeaderboard.TimeScope, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Error?) -> Void)
}
extension GKLeaderboard {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use identifier instead")
  var category: String?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use loadLeaderboardsWithIDs:completionHandler: instead")
  class func loadCategories(completionHandler: (([String]?, [String]?, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use setDefaultLeaderboardIdentifier:completionHandler: on GKLocalPlayer instead")
  class func setDefault(_ leaderboardIdentifier: String?, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var timeScope: GKLeaderboard.TimeScope
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var playerScope: GKLeaderboard.PlayerScope
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var identifier: String?
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var range: NSRange
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: to obtain scores.")
  var scores: [GKScore]? { get }
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain the size of the leaderboard.")
  var maxRange: Int { get }
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var localPlayerScore: GKScore? { get }
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var isLoading: Bool { get }
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Use instance method loadEntriesForPlayers:timeScope:completionHandler: instead.")
  init(players: [GKPlayer])
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler:.")
  func loadScores(completionHandler: (([GKScore]?, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Use class method loadLeaderboardsWithIDs:completionHandler:")
  class func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
}
