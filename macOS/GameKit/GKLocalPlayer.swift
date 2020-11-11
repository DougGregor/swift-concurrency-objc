
@available(macOS 10.8, *)
class GKLocalPlayer : GKPlayer {
  @available(macOS 10.15, *)
  class var __local: GKLocalPlayer { get }
  class var local: GKLocalPlayer { get }
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(macOS 10.15, *)
  var isMultiplayerGamingRestricted: Bool { get }
  @available(macOS 11.0, *)
  var isPersonalizedCommunicationRestricted: Bool { get }
  @available(macOS 10.11, *)
  func loadRecentPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(macOS 10.11, *)
  func loadRecentPlayersAsync() async throws -> [GKPlayer]
  func loadChallengableFriends(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func loadChallengableFriendsAsync() async throws -> [GKPlayer]
  @available(macOS 10.10, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func setDefaultLeaderboardIdentifierAsync(_ leaderboardIdentifier: String) async throws
  @available(macOS 10.10, *)
  func loadDefaultLeaderboardIdentifier(completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func loadDefaultLeaderboardIdentifierAsync() async throws -> String
  @available(macOS 10.15.5, *)
  func fetchItems(forIdentityVerificationSignature completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(macOS 10.15.5, *)
  func fetchItemsForIdentityVerificationSignatureAsync() async throws -> (URL, Data, Data, UInt64)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKSavedGameListener, GKTurnBasedEventListener {
}
extension GKLocalPlayer {
  @available(macOS 10.10, *)
  func register(_ listener: GKLocalPlayerListener)
  @available(macOS 10.10, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(macOS 10.10, *)
  func unregisterAllListeners()
}
extension NSNotification.Name {
  @available(macOS 10.8, *)
  static let GKPlayerAuthenticationDidChangeNotificationName: NSNotification.Name
}
extension GKLocalPlayer {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryID(_ categoryID: String?, completionHandler: ((Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use setDefaultLeaderboardIdentifier:completionHandler: instead")
  func setDefaultLeaderboardCategoryIDAsync(_ categoryID: String?) async throws
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryID(completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use loadDefaultLeaderboardIdentifierWithCompletionHandler: instead")
  func loadDefaultLeaderboardCategoryIDAsync() async throws -> String
  @available(macOS, introduced: 10.10, deprecated: 10.11)
  func loadFriendPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.10, deprecated: 10.11)
  func loadFriendPlayersAsync() async throws -> [GKPlayer]
  @available(macOS, introduced: 10.10, deprecated: 10.15.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignature(completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.10, deprecated: 10.15.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignatureAsync() async throws -> (URL, Data, Data, UInt64)
}
extension GKLocalPlayer {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use loadRecentPlayersWithCompletionHandler: instead")
  func loadFriends(completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use loadRecentPlayersWithCompletionHandler: instead")
  func loadFriendsAsync() async throws -> [String]
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: " This property is obsolete, Use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}
extension GKLocalPlayer {
  @available(macOS 10.9, *)
  var authenticateHandler: ((NSViewController?, Error?) -> Void)?
}
