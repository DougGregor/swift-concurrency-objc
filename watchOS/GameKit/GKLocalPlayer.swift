
@available(watchOS 3.0, *)
class GKLocalPlayer : GKPlayer {
  class var local: GKLocalPlayer { get }
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(watchOS 3.0, *)
  var authenticateHandler: ((Error?) -> Void)?
  @available(watchOS 3.0, *)
  func loadRecentPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(watchOS 3.0, *)
  func loadRecentPlayersAsync() async throws -> [GKPlayer]
  func loadChallengableFriends(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func loadChallengableFriendsAsync() async throws -> [GKPlayer]
  @available(watchOS 3.0, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS 3.0, *)
  func setDefaultLeaderboardIdentifierAsync(_ leaderboardIdentifier: String) async throws
  @available(watchOS 3.0, *)
  func loadDefaultLeaderboardIdentifier(completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(watchOS 3.0, *)
  func loadDefaultLeaderboardIdentifierAsync() async throws -> String
  @available(watchOS 6.5, *)
  func fetchItems(forIdentityVerificationSignature completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(watchOS 6.5, *)
  func fetchItemsForIdentityVerificationSignatureAsync() async throws -> (URL, Data, Data, UInt64)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener {
}
extension GKLocalPlayer {
  @available(watchOS 3.0, *)
  func register(_ listener: GKLocalPlayerListener)
  @available(watchOS 3.0, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(watchOS 3.0, *)
  func unregisterAllListeners()
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let GKPlayerAuthenticationDidChangeNotificationName: NSNotification.Name
}
extension GKLocalPlayer {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryID(_ categoryID: String?, completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryIDAsync(_ categoryID: String?) async throws
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryID(completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryIDAsync() async throws -> String
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Set the authenticateHandler instead")
  func authenticate(completionHandler: ((Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Set the authenticateHandler instead")
  func authenticateAsync() async throws
  @available(watchOS, introduced: 2.0, deprecated: 3.0)
  func loadFriendPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 3.0)
  func loadFriendPlayersAsync() async throws -> [GKPlayer]
  @available(watchOS, introduced: 3.0, deprecated: 6.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignature(completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 3.0, deprecated: 6.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignatureAsync() async throws -> (URL, Data, Data, UInt64)
}
extension GKLocalPlayer {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use loadRecentPlayersWithCompletionHandler: instead")
  func loadFriends(completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use loadRecentPlayersWithCompletionHandler: instead")
  func loadFriendsAsync() async throws -> [String]
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: " This property is obsolete, Use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}
