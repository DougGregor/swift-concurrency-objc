
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
@available(tvOS 4.1, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(tvOS 8.0, *)
  var recipients: [GKPlayer]?
  @available(tvOS 6.0, *)
  var inviteMessage: String?
  @available(tvOS 6.0, *)
  var defaultNumberOfPlayers: Int
  @available(tvOS, introduced: 13.0, deprecated: 14.0, message: "Set the matchmakingMode of GKMatchmakerViewController instead.")
  var restrictToAutomatch: Bool
  @available(tvOS 8.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(tvOS 6.0, *)
  class func maxPlayersAllowedForMatch(of matchType: GKMatchType) -> Int
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case peerToPeer
  case hosted
  case turnBased
}
@available(tvOS 4.1, *)
class GKInvite : NSObject {
  @available(tvOS 8.0, *)
  var sender: GKPlayer { get }
  var isHosted: Bool { get }
  @available(tvOS 6.0, *)
  var playerGroup: Int { get }
  @available(tvOS 6.0, *)
  var playerAttributes: UInt32 { get }
}
protocol GKInviteEventListener {
  @available(tvOS 7.0, *)
  @asyncHandler optional func player(_ player: GKPlayer, didAccept invite: GKInvite)
  @available(tvOS 8.0, *)
  @asyncHandler optional func player(_ player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
@available(tvOS 4.1, *)
class GKMatchmaker : NSObject {
  class func shared() -> GKMatchmaker
  @available(tvOS 6.0, *)
  func match(for invite: GKInvite, completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func matchAsync(for invite: GKInvite) async throws -> GKMatch
  func findMatch(for request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findMatchAsync(for request: GKMatchRequest) async throws -> GKMatch
  @available(tvOS 8.0, *)
  func findPlayers(forHostedRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(tvOS 8.0, *)
  func findPlayersAsync(forHostedRequest request: GKMatchRequest) async throws -> [GKPlayer]
  func addPlayers(to match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((Error?) -> Void)? = nil)
  func addPlayersAsync(to match: GKMatch, matchRequest: GKMatchRequest) async throws
  func cancel()
  @available(tvOS 8.0, *)
  func cancelPendingInvite(to player: GKPlayer)
  @available(tvOS 6.0, *)
  func finishMatchmaking(for match: GKMatch)
  func queryPlayerGroupActivity(_ playerGroup: Int, withCompletionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryPlayerGroupActivityAsync(_ playerGroup: Int) async throws -> Int
  func queryActivity(completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryActivityAsync() async throws -> Int
  @available(tvOS 8.0, *)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  @available(tvOS 6.0, *)
  func stopBrowsingForNearbyPlayers()
}
extension GKMatchmaker {
}
extension GKMatchmaker {
}
