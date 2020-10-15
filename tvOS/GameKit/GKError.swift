
let GKErrorDomain: String
struct GKError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var unknown: GKError.Code { get }
  static var cancelled: GKError.Code { get }
  static var communicationsFailure: GKError.Code { get }
  static var userDenied: GKError.Code { get }
  static var invalidCredentials: GKError.Code { get }
  static var notAuthenticated: GKError.Code { get }
  static var authenticationInProgress: GKError.Code { get }
  static var invalidPlayer: GKError.Code { get }
  static var scoreNotSet: GKError.Code { get }
  static var parentalControlsBlocked: GKError.Code { get }
  static var playerStatusExceedsMaximumLength: GKError.Code { get }
  static var playerStatusInvalid: GKError.Code { get }
  static var matchRequestInvalid: GKError.Code { get }
  static var underage: GKError.Code { get }
  static var gameUnrecognized: GKError.Code { get }
  static var notSupported: GKError.Code { get }
  static var invalidParameter: GKError.Code { get }
  static var unexpectedConnection: GKError.Code { get }
  static var challengeInvalid: GKError.Code { get }
  static var turnBasedMatchDataTooLarge: GKError.Code { get }
  static var turnBasedTooManySessions: GKError.Code { get }
  static var turnBasedInvalidParticipant: GKError.Code { get }
  static var turnBasedInvalidTurn: GKError.Code { get }
  static var turnBasedInvalidState: GKError.Code { get }
  static var invitationsDisabled: GKError.Code { get }
  static var playerPhotoFailure: GKError.Code { get }
  static var ubiquityContainerUnavailable: GKError.Code { get }
  static var matchNotConnected: GKError.Code { get }
  static var gameSessionRequestInvalid: GKError.Code { get }
  static var restrictedToAutomatch: GKError.Code { get }
  static var apiNotAvailable: GKError.Code { get }
  static var notAuthorized: GKError.Code { get }
  static var connectionTimeout: GKError.Code { get }
  static var apiObsolete: GKError.Code { get }
}
