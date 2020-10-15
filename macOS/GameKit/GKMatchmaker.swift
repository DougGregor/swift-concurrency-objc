
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
@available(macOS 10.8, *)
class GKMatchRequest : NSObject {
  var minPlayers: Int
  var maxPlayers: Int
  var playerGroup: Int
  var playerAttributes: UInt32
  @available(macOS 10.10, *)
  var recipients: [GKPlayer]?
  @available(macOS 10.8, *)
  var inviteMessage: String?
  @available(macOS 10.8, *)
  var defaultNumberOfPlayers: Int
  @available(macOS, introduced: 10.15, deprecated: 11.0, message: "Set the matchmakingMode of GKMatchmakerViewController instead.")
  var restrictToAutomatch: Bool
  @available(macOS 10.10, *)
  var recipientResponseHandler: ((GKPlayer, GKInviteRecipientResponse) -> Void)?
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "use recipientResponseHandler")
  var inviteeResponseHandler: ((String, GKInviteeResponse) -> Void)?
  @available(macOS 10.9, *)
  class func maxPlayersAllowedForMatch(of matchType: GKMatchType) -> Int
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This property is obsolete, use recipients instead")
  var playersToInvite: [String]?
}
enum GKMatchType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case peerToPeer
  case hosted
  case turnBased
}
@available(macOS 10.8, *)
class GKInvite : NSObject {
  @available(macOS 10.10, *)
  var sender: GKPlayer { get }
  var isHosted: Bool { get }
  @available(macOS 10.9, *)
  var playerGroup: Int { get }
  @available(macOS 10.9, *)
  var playerAttributes: UInt32 { get }
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This property is obsolete, use sender instead")
  var inviter: String { get }
}
protocol GKInviteEventListener {
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, didAccept invite: GKInvite)
  @available(macOS 10.10, *)
  optional func player(_ player: GKPlayer, didRequestMatchWithRecipients recipientPlayers: [GKPlayer])
}
@available(macOS 10.8, *)
class GKMatchmaker : NSObject {
  class func shared() -> GKMatchmaker
  @available(macOS 10.9, *)
  func match(for invite: GKInvite, completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  func findMatch(for request: GKMatchRequest, withCompletionHandler completionHandler: ((GKMatch?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func findPlayers(forHostedRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  func addPlayers(to match: GKMatch, matchRequest: GKMatchRequest, completionHandler: ((Error?) -> Void)? = nil)
  func cancel()
  @available(macOS 10.10, *)
  func cancelPendingInvite(to player: GKPlayer)
  @available(macOS 10.9, *)
  func finishMatchmaking(for match: GKMatch)
  func queryPlayerGroupActivity(_ playerGroup: Int, withCompletionHandler completionHandler: ((Int, Error?) -> Void)? = nil)
  func queryActivity(completionHandler: ((Int, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func startBrowsingForNearbyPlayers(handler reachableHandler: ((GKPlayer, Bool) -> Void)? = nil)
  @available(macOS 10.9, *)
  func stopBrowsingForNearbyPlayers()
}
extension GKMatchmaker {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use registerListener on GKLocalPlayer to register an object that implements the GKInviteEventListenerProtocol instead")
  var inviteHandler: ((GKInvite, [Any]?) -> Void)?
}
extension GKMatchmaker {
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, Use startBrowsingForNearbyPlayersWithHandler: instead")
  func startBrowsingForNearbyPlayers(reachableHandler: ((String, Bool) -> Void)? = nil)
  @available(macOS, introduced: 10.9, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use cancelPendingInviteToPlayer:")
  func cancelInvite(toPlayer playerID: String)
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "This is never invoked and its implementation does nothing, use findPlayersForHostedRequest:")
  func findPlayers(forHostedMatchRequest request: GKMatchRequest, withCompletionHandler completionHandler: (([String]?, Error?) -> Void)? = nil)
}
