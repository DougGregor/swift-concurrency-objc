
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
  @available(macOS 11.0, *)
  enum LeaderboardType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case classic
    case recurring
  }
}
@available(macOS 10.8, *)
class GKLeaderboard : NSObject {
  var title: String? { get }
  @available(macOS 10.9, *)
  var groupIdentifier: String? { get }
  @available(macOS 11.0, *)
  var baseLeaderboardID: String { get }
  @available(macOS 11.0, *)
  var type: GKLeaderboard.LeaderboardType { get }
  @available(macOS 11.0, *)
  var startDate: Date? { get }
  @available(macOS 11.0, *)
  var nextStartDate: Date? { get }
  @available(macOS 11.0, *)
  var duration: TimeInterval { get }
  @available(macOS 11.0, *)
  class func loadLeaderboards(IDs leaderboardIDs: [String]?, completionHandler: @escaping ([GKLeaderboard]?, Error?) -> Void)
  @available(macOS 11.0, *)
  class func loadLeaderboards(IDs leaderboardIDs: [String]?) async throws -> [GKLeaderboard]
  @available(macOS 11.0, *)
  func loadPreviousOccurrence(completionHandler: @escaping (GKLeaderboard?, Error?) -> Void)
  @available(macOS 11.0, *)
  func loadPreviousOccurrence() async throws -> GKLeaderboard
  @available(macOS 11.0, *)
  class func submitScore(_ score: Int, context: Int, player: GKPlayer, leaderboardIDs: [String], completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  class func submitScore(_ score: Int, context: Int, player: GKPlayer, leaderboardIDs: [String]) async throws
  @available(macOS 11.0, *)
  func submitScore(_ score: Int, context: Int, player: GKPlayer, completionHandler: @escaping (Error?) -> Void)
  @available(macOS 11.0, *)
  func submitScore(_ score: Int, context: Int, player: GKPlayer) async throws
  @available(macOS 11.0, *)
  func loadEntries(for playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope, range: NSRange, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Int, Error?) -> Void)
  @available(macOS 11.0, *)
  func loadEntries(for playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope, range: NSRange) async throws -> (GKLeaderboard.Entry, [GKLeaderboard.Entry], Int)
  @available(macOS 11.0, *)
  func loadEntries(for players: [GKPlayer], timeScope: GKLeaderboard.TimeScope, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Error?) -> Void)
  @available(macOS 11.0, *)
  func loadEntries(for players: [GKPlayer], timeScope: GKLeaderboard.TimeScope) async throws -> (GKLeaderboard.Entry, [GKLeaderboard.Entry])
}
extension GKLeaderboard {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use identifier instead")
  var category: String?
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use setDefaultLeaderboardIdentifier:completionHandler: on GKLocalPlayer instead")
  class func setDefault(_ leaderboardIdentifier: String?, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use setDefaultLeaderboardIdentifier:completionHandler: on GKLocalPlayer instead")
  class func setDefaultAsync(_ leaderboardIdentifier: String?) async throws
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var timeScope: GKLeaderboard.TimeScope
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var playerScope: GKLeaderboard.PlayerScope
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var identifier: String?
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var range: NSRange
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: to obtain scores.")
  var scores: [GKScore]? { get }
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain the size of the leaderboard.")
  var maxRange: Int { get }
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var localPlayerScore: GKScore? { get }
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var isLoading: Bool { get }
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use instance method loadEntriesForPlayers:timeScope:completionHandler: instead.")
  init(players: [GKPlayer])
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler:.")
  func loadScores(completionHandler: (([GKScore]?, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler:.")
  func loadScoresAsync() async throws -> [GKScore]
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use class method loadLeaderboardsWithIDs:completionHandler:")
  class func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 11.0, message: "Use class method loadLeaderboardsWithIDs:completionHandler:")
  class func loadLeaderboardsAsync() async throws -> [GKLeaderboard]
}
extension GKLeaderboard {
  @available(macOS 10.8, *)
  func loadImage(completionHandler: ((NSImage?, Error?) -> Void)? = nil)
  @available(macOS 10.8, *)
  func loadImageAsync() async throws -> NSImage
}
