
@available(watchOS, introduced: 2.0, deprecated: 2.0)
enum GKSendDataMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case reliable
  case unreliable
}
@available(watchOS, introduced: 2.0, deprecated: 2.0)
enum GKSessionMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case server
  case client
  case peer
}
@available(watchOS, introduced: 2.0, deprecated: 2.0)
enum GKPeerConnectionState : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case stateAvailable
  case stateUnavailable
  case stateConnected
  case stateDisconnected
  case stateConnecting
  case stateConnectedRelay
}
@available(watchOS, introduced: 2.0, deprecated: 2.0)
struct GKVoiceChatServiceError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var internalError: GKVoiceChatServiceError.Code { get }
  static var noRemotePacketsError: GKVoiceChatServiceError.Code { get }
  static var unableToConnectError: GKVoiceChatServiceError.Code { get }
  static var remoteParticipantHangupError: GKVoiceChatServiceError.Code { get }
  static var invalidCallIDError: GKVoiceChatServiceError.Code { get }
  static var audioUnavailableError: GKVoiceChatServiceError.Code { get }
  static var uninitializedClientError: GKVoiceChatServiceError.Code { get }
  static var clientMissingRequiredMethodsError: GKVoiceChatServiceError.Code { get }
  static var remoteParticipantBusyError: GKVoiceChatServiceError.Code { get }
  static var remoteParticipantCancelledError: GKVoiceChatServiceError.Code { get }
  static var remoteParticipantResponseInvalidError: GKVoiceChatServiceError.Code { get }
  static var remoteParticipantDeclinedInviteError: GKVoiceChatServiceError.Code { get }
  static var methodCurrentlyInvalidError: GKVoiceChatServiceError.Code { get }
  static var networkConfigurationError: GKVoiceChatServiceError.Code { get }
  static var unsupportedRemoteVersionError: GKVoiceChatServiceError.Code { get }
  static var outOfMemoryError: GKVoiceChatServiceError.Code { get }
  static var invalidParameterError: GKVoiceChatServiceError.Code { get }
}
