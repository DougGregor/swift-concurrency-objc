
@available(watchOS 3.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(watchOS 2.0, *)
  class func loadLeaderboardSets(completionHandler: (([GKLeaderboardSet]?, Error?) -> Void)? = nil)
  @available(watchOS 7.0, *)
  func loadLeaderboards(handler: @escaping ([GKLeaderboard]?, Error?) -> Void)
}
extension GKLeaderboardSet {
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
}
