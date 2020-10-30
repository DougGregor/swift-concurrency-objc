
enum GKInviteRecipientResponse : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accepted
  case declined
  case failed
  case incompatible
  case unableToConnect
  case noAnswer
  static var inviteeResponseAccepted: GKInviteRecipientResponse { get }
  static var inviteeResponseDeclined: GKInviteRecipientResponse { get }
  static var inviteeResponseFailed: GKInviteRecipientResponse { get }
  static var inviteeResponseIncompatible: GKInviteRecipientResponse { get }
  static var inviteeResponseUnableToConnect: GKInviteRecipientResponse { get }
  static var inviteeResponseNoAnswer: GKInviteRecipientResponse { get }
}
typealias GKInviteeResponse = GKInviteRecipientResponse
@available(iOS 4.1, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(iOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(iOS 6.0, *)
  var inviteMessage: String?
  @available(iOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(iOS, introduced: 13.0, deprecated: 14.0, message: "Set the matchmakingMode of GKMatchmakerViewController instead.")
  var restrictToAutomatch: Bool
  @available(iOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(iOS 6.0, *)
  class func maxPlayersAllowedForMatch(of matchType: GKMatchType) -> Int
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This property is obsolete, use recipients instead")
  var playersToInvite: [String]?
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case peerToPeer
  case hosted
  case turnBased
}
@available(iOS 4.1, *)
class GKInvite : NSObject {
  @available(iOS 8.0, *)
  var sender: GKPlayer { get }
  var isHosted: Bool { get }
  @available(iOS 6.0, *)
  var playerGroup: Int { get }
  @available(iOS 6.0, *)
  var playerAttributes: UInt32 { get }
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This property is obsolete, use sender instead")
  var inviter: String { get }
}
protocol GKInviteEventListener {
  @available(iOS 7.0, *)
  @asyncHandler optional func player(_ player: GKPlayer, didAccept invite: GKInvite)
  @available(iOS 8.0, *)
  @asyncHandler optional func player(_ player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
  @available(iOS, introduced: 7.0, deprecated: 8.0, message: "This method is obsolete.  It will never be invoked its implementation does nothing, use player:didRequestMatchWithRecipients:")
  @asyncHandler optional func player(_ player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
@available(iOS 4.1, *)
class GKMatchmaker : NSObject {
  class func shared() -> GKMatchmaker
  @available(iOS 6.0, *)
  func match(for invite: GKInvite, completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(iOS 6.0, *)
  func match(for invite: GKInvite) async throws -> GKMatch
  func findMatch(for request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findMatch(for request: GKMatchRequest) async throws -> GKMatch
  @available(iOS 8.0, *)
  func findPlayers(forHostedRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func findPlayers(forHostedRequest request: GKMatchRequest) async throws -> [GKPlayer]
  func addPlayers(to match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((Error?) -> Void)? = nil)
  func addPlayers(to match: GKMatch, matchRequest: GKMatchRequest) async throws
  func cancel()
  @available(iOS 8.0, *)
  func cancelPendingInvite(to player: GKPlayer)
  @available(iOS 6.0, *)
  func finishMatchmaking(for match: GKMatch)
  func queryPlayerGroupActivity(_ playerGroup: Int, withCompletionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryPlayerGroupActivity(_ playerGroup: Int) async throws -> Int
  func queryActivity(completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryActivity() async throws -> Int
  @available(iOS 8.0, *)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  @available(iOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
}
extension GKMatchmaker {
}
extension GKMatchmaker {
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, Use startBrowsingForNearbyPlayersWithHandler: instead")
  func startBrowsingForNearbyPlayers(reachableHandler: ((String, Bool) -> Void)? = nil)
  @available(iOS, introduced: 6.0, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use cancelPendingInviteToPlayer:")
  func cancelInvite(toPlayer playerID: String)
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use findPlayersForHostedRequest:")
  func findPlayers(forHostedMatchRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "This is never invoked and its implementation does nothing, use findPlayersForHostedRequest:")
  func findPlayers(forHostedMatchRequest request: GKMatchRequest) async throws -> [String]
}
