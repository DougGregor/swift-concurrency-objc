
@available(tvOS 4.1, *)
class GKLocalPlayer : GKPlayer {
  @available(tvOS 13.0, *)
  class var __local: GKLocalPlayer { get }
  class var local: GKLocalPlayer { get }
  var isAuthenticated: Bool { get }
  var isUnderage: Bool { get }
  @available(tvOS 13.0, *)
  var isMultiplayerGamingRestricted: Bool { get }
  @available(tvOS 14.0, *)
  var isPersonalizedCommunicationRestricted: Bool { get }
  @available(tvOS 10.0, *)
  func loadRecentPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(tvOS 10.0, *)
  func loadRecentPlayersAsync() async throws -> [GKPlayer]
  func loadChallengableFriends(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func loadChallengableFriendsAsync() async throws -> [GKPlayer]
  @available(tvOS 7.0, *)
  func setDefaultLeaderboardIdentifier(_ leaderboardIdentifier: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func setDefaultLeaderboardIdentifierAsync(_ leaderboardIdentifier: String) async throws
  @available(tvOS 7.0, *)
  func loadDefaultLeaderboardIdentifier(completionHandler: ((String?, Error?) -> Void)? = nil)
  @available(tvOS 7.0, *)
  func loadDefaultLeaderboardIdentifierAsync() async throws -> String
  @available(tvOS 13.5, *)
  func fetchItems(forIdentityVerificationSignature completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(tvOS 13.5, *)
  func fetchItemsForIdentityVerificationSignatureAsync() async throws -> (URL, Data, Data, UInt64)
}
protocol GKLocalPlayerListener : GKChallengeListener, GKInviteEventListener, GKTurnBasedEventListener {
}
extension GKLocalPlayer {
  @available(tvOS 7.0, *)
  func register(_ listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterListener(_ listener: GKLocalPlayerListener)
  @available(tvOS 7.0, *)
  func unregisterAllListeners()
}
extension NSNotification.Name {
  @available(tvOS 4.1, *)
  static let GKPlayerAuthenticationDidChangeNotificationName: NSNotification.Name
}
extension GKLocalPlayer {
  @available(tvOS, introduced: 8.0, deprecated: 10.0)
  func loadFriendPlayers(completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(tvOS, introduced: 8.0, deprecated: 10.0)
  func loadFriendPlayersAsync() async throws -> [GKPlayer]
  @available(tvOS, introduced: 9.0, deprecated: 13.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignature(completionHandler: ((URL?, Data?, Data?, UInt64, Error?) -> Void)? = nil)
  @available(tvOS, introduced: 9.0, deprecated: 13.5, message: "API deprecated. Use fetchItemsForIdentityVerificationSignature: and the teamPlayerID value to verify a user identity.")
  func generateIdentityVerificationSignatureAsync() async throws -> (URL, Data, Data, UInt64)
}
extension GKLocalPlayer {
}
extension GKLocalPlayer {
  @available(tvOS 6.0, *)
  var authenticateHandler: ((UIViewController?, Error?) -> Void)?
}
