
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
@available(watchOS 3.0, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(watchOS 2.0, *)
  var recipients: [GKPlayer]?
  @available(watchOS 2.0, *)
  var inviteMessage: String?
  @available(watchOS 2.0, *)
  var defaultNumberOfPlayers: Int
  @available(watchOS, introduced: 6.0, deprecated: 7.0, message: "Set the matchmakingMode of GKMatchmakerViewController instead.")
  var restrictToAutomatch: Bool
  @available(watchOS 2.0, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(watchOS 2.0, *)
  class func maxPlayersAllowedForMatch(of matchType: GKMatchType) -> Int
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This property is obsolete, use recipients instead")
  var playersToInvite: [String]?
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case peerToPeer
  case hosted
  case turnBased
}
protocol GKInviteEventListener {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This method is obsolete.  It will never be invoked its implementation does nothing, use player:didRequestMatchWithRecipients:")
  optional func player(_ player: GKPlayer, didRequestMatchWithPlayers playerIDsToInvite: [String])
}
extension GKMatchmaker {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use registerListener on GKLocalPlayer to register an object that implements the GKInviteEventListenerProtocol instead")
  var inviteHandler: ((GKInvite, [Any]?) -> Void)?
}
extension GKMatchmaker {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, Use startBrowsingForNearbyPlayersWithHandler: instead")
  func startBrowsingForNearbyPlayers(reachableHandler: ((String, Bool) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use cancelPendingInviteToPlayer:")
  func cancelInvite(toPlayer playerID: String)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use findPlayersForHostedRequest:")
  func findPlayers(forHostedMatchRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use findPlayersForHostedRequest:")
  func findPlayers(forHostedMatchRequest request: GKMatchRequest) async throws -> [String]
}
