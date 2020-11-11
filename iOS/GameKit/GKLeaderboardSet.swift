
@available(iOS 7.0, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(iOS 7.0, *)
  class func loadLeaderboardSets(completionHandler: (([GKLeaderboardSet]?, Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  class func loadLeaderboardSetsAsync() async throws -> [GKLeaderboardSet]
  @available(iOS 14.0, *)
  func loadLeaderboards(handler: @escaping ([GKLeaderboard]?, Error?) -> Void)
}
extension GKLeaderboardSet {
  @available(iOS, introduced: 7.0, deprecated: 14.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 7.0, deprecated: 14.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboardsAsync() async throws -> [GKLeaderboard]
}
extension GKLeaderboardSet {
  func loadImage(completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  func loadImageAsync() async throws -> UIImage
}
