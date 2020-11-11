
@available(macOS 10.10, *)
class GKLeaderboardSet : NSObject, NSCoding, NSSecureCoding {
  var title: String { get }
  var groupIdentifier: String? { get }
  var identifier: String?
  @available(macOS 10.10, *)
  class func loadLeaderboardSets(completionHandler: (([GKLeaderboardSet]?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  class func loadLeaderboardSetsAsync() async throws -> [GKLeaderboardSet]
  @available(macOS 11.0, *)
  func loadLeaderboards(handler: @escaping ([GKLeaderboard]?, Error?) -> Void)
}
extension GKLeaderboardSet {
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboards(completionHandler: (([GKLeaderboard]?, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.10, deprecated: 11.0, message: "Use loadLeaderboardsWithHandler: instead.")
  func loadLeaderboardsAsync() async throws -> [GKLeaderboard]
}
extension GKLeaderboardSet {
  func loadImage(completionHandler: ((NSImage?, Error?) -> Void)? = nil)
  func loadImageAsync() async throws -> NSImage
}
