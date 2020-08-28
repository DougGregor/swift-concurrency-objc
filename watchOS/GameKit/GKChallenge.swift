
enum GKChallengeState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case pending
  case completed
  case declined
}
extension GKChallenge {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: " This property is obsolete, Use issuingPlayer instead")
  var issuingPlayerID: String? { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: " This property is obsolete, Use receivingPlayer instead")
  var receivingPlayerID: String? { get }
}
