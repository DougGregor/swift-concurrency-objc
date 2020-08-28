
@available(iOS, introduced: 10.0, deprecated: 12.0, message: "GKGameSession is deprecated, use real-time and turn-based matchmaking APIs instead.")
let GKGameSessionErrorDomain: String
@available(iOS, introduced: 10.0, deprecated: 12.0, message: "GKGameSession is deprecated, use real-time and turn-based matchmaking APIs instead.")
struct GKGameSessionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: GKGameSessionError.Code { get }
  static var notAuthenticated: GKGameSessionError.Code { get }
  static var sessionConflict: GKGameSessionError.Code { get }
  static var sessionNotShared: GKGameSessionError.Code { get }
  static var connectionCancelledByUser: GKGameSessionError.Code { get }
  static var connectionFailed: GKGameSessionError.Code { get }
  static var sessionHasMaxConnectedPlayers: GKGameSessionError.Code { get }
  static var sendDataNotConnected: GKGameSessionError.Code { get }
  static var sendDataNoRecipients: GKGameSessionError.Code { get }
  static var sendDataNotReachable: GKGameSessionError.Code { get }
  static var sendRateLimitReached: GKGameSessionError.Code { get }
  static var badContainer: GKGameSessionError.Code { get }
  static var cloudQuotaExceeded: GKGameSessionError.Code { get }
  static var networkFailure: GKGameSessionError.Code { get }
  static var cloudDriveDisabled: GKGameSessionError.Code { get }
  static var invalidSession: GKGameSessionError.Code { get }
}
