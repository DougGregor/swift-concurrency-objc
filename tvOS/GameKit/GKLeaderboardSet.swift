
@available(tvOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(tvOS 7.0, *)
  class func loadLeaderboardSets(completionHandler: (([GKLeaderboardSet]?, Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  class func loadLeaderboardSets() async throws -> [GKLeaderboardSet]
  @available(tvOS 14.0, *)
  func loadLeaderboards(handler: @escaping ([GKLeaderboard]?, Error?) -> Void)
}
extension GKLeaderboardSet {
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  @available(tvOS, introduced: 9.0, deprecated: 14.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboards() async throws -> [GKLeaderboard]
}
extension GKLeaderboardSet {
}
