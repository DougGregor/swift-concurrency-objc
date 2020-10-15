
@available(iOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  @available(iOS 13.0, *)
  class var __local: GKLocalPlayer { get }
  class var local: GKLocalPlayer { get }
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(iOS 13.0, *)
  var isMultiplayerGamingRestricted: Bool { get }
  @available(iOS 14.0, *)
  var isPersonalizedCommunicationRestricted: Bool { get }
  @available(iOS 10.0, *)
  func loadRecentPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(iOS 10.0, *)
  func loadRecentPlayers() async throws -> [GKPlayer]?
  func loadChallengableFriends(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func loadChallengableFriends() async throws -> [GKPlayer]?
  @available(iOS 7.0, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String) async throws
  @available(iOS 7.0, *)
  func loadDefaultLeaderboardIdentifier(completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(iOS 7.0, *)
  func loadDefaultLeaderboardIdentifier() async throws -> String?
  @available(iOS 13.5, *)
  func fetchItems(forIdentityVerificationSignature completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(iOS 13.5, *)
  func fetchItemsForIdentityVerificationSignature() async throws -> (URL?, Data?, Data?, UInt64)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKSavedGameListener, GKTurnBasedEventListener {
}
extension GKLocalPlayer {
  @available(iOS 7.0, *)
  func register(_ listener: GKLocalPlayerListener)
  @available(iOS 7.0, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(iOS 7.0, *)
  func unregisterAllListeners()
}
extension NSNotification.Name {
  @available(iOS 4.1, *)
  static let GKPlayerAuthenticationDidChangeNotificationName: NSNotification.Name
}
extension GKLocalPlayer {
  @available(iOS, introduced: 8.0, deprecated: 10.0)
  func loadFriendPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 8.0, deprecated: 10.0)
  func loadFriendPlayers() async throws -> [GKPlayer]?
  @available(iOS, introduced: 7.0, deprecated: 13.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignature(completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(iOS, introduced: 7.0, deprecated: 13.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignature() async throws -> (URL?, Data?, Data?, UInt64)
}
extension GKLocalPlayer {
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use loadRecentPlayersWithCompletionHandler: instead")
  func loadFriends(completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use loadRecentPlayersWithCompletionHandler: instead")
  func loadFriends() async throws -> [String]?
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: " This property is obsolete, Use loadFriendPlayersWithCompletionHandler: instead")
  var friends: [String]? { get }
}
extension GKLocalPlayer {
  @available(iOS 6.0, *)
  var authenticateHandler: ((UIViewController?, Error?) -> Void)?
}
