
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
  @available(iOS 14.0, *)
  enum LeaderboardType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case classic
    case recurring
  }
}
@available(iOS 4.1, *)
class GKLeaderboard : NSObject {
  var title: String? { get }
  @available(iOS 6.0, *)
  var groupIdentifier: String? { get }
  @available(iOS 14.0, *)
  var baseLeaderboardID: String { get }
  @available(iOS 14.0, *)
  var type: GKLeaderboard.LeaderboardType { get }
  @available(iOS 14.0, *)
  var startDate: Date? { get }
  @available(iOS 14.0, *)
  var nextStartDate: Date? { get }
  @available(iOS 14.0, *)
  var duration: TimeInterval { get }
  @available(iOS 14.0, *)
  class func loadLeaderboards(IDs leaderboardIDs: [String]?, completionHandler: @escaping ([GKLeaderboard]?, Error?) -> Void)
  @available(iOS 14.0, *)
  class func loadLeaderboards(IDs leaderboardIDs: [String]?) async throws -> [GKLeaderboard]
  @available(iOS 14.0, *)
  func loadPreviousOccurrence(completionHandler: @escaping (GKLeaderboard?, Error?) -> Void)
  @available(iOS 14.0, *)
  func loadPreviousOccurrence() async throws -> GKLeaderboard
  @available(iOS 14.0, *)
  class func submitScore(_ score: Int, context: Int, player: GKPlayer, leaderboardIDs: [String], completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  class func submitScore(_ score: Int, context: Int, player: GKPlayer, leaderboardIDs: [String]) async throws
  @available(iOS 14.0, *)
  func submitScore(_ score: Int, context: Int, player: GKPlayer, completionHandler: @escaping (Error?) -> Void)
  @available(iOS 14.0, *)
  func submitScore(_ score: Int, context: Int, player: GKPlayer) async throws
  @available(iOS 14.0, *)
  func loadEntries(for playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope, range: NSRange, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Int, Error?) -> Void)
  @available(iOS 14.0, *)
  func loadEntries(for playerScope: GKLeaderboard.PlayerScope, timeScope: GKLeaderboard.TimeScope, range: NSRange) async throws -> (GKLeaderboard.Entry, [GKLeaderboard.Entry], Int)
  @available(iOS 14.0, *)
  func loadEntries(for players: [GKPlayer], timeScope: GKLeaderboard.TimeScope, completionHandler: @escaping (GKLeaderboard.Entry?, [GKLeaderboard.Entry]?, Error?) -> Void)
  @available(iOS 14.0, *)
  func loadEntries(for players: [GKPlayer], timeScope: GKLeaderboard.TimeScope) async throws -> (GKLeaderboard.Entry, [GKLeaderboard.Entry])
}
extension GKLeaderboard {
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "Use initWithPlayers: instead")
  init?(playerIDs: [String]?)
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var timeScope: GKLeaderboard.TimeScope
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var playerScope: GKLeaderboard.PlayerScope
  @available(iOS, introduced: 7.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var identifier: String?
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: instead.")
  var range: NSRange
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: to obtain scores.")
  var scores: [GKScore]? { get }
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain the size of the leaderboard.")
  var maxRange: Int { get }
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var localPlayerScore: GKScore? { get }
  @available(iOS, introduced: 4.1, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler: method to obtain scores.")
  var isLoading: Bool { get }
  @available(iOS, introduced: 8.0, deprecated: 14.0, message: "Use instance method loadEntriesForPlayers:timeScope:completionHandler: instead.")
  init(players: [GKPlayer])
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler:.")
  func loadScores(completionHandler: (([GKScore]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 4.0, deprecated: 14.0, message: "Use loadEntriesForPlayerScope:timeScope:range:completionHandler:.")
  func loadScoresAsync() async throws -> [GKScore]
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "Use class method loadLeaderboardsWithIDs:completionHandler:")
  class func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 6.0, deprecated: 14.0, message: "Use class method loadLeaderboardsWithIDs:completionHandler:")
  class func loadLeaderboardsAsync() async throws -> [GKLeaderboard]
}
extension GKLeaderboard {
  @available(iOS 7.0, *)
  func loadImage(completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func loadImageAsync() async throws -> UIImage
}
