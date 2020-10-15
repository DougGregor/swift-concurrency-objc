
let GKSessionErrorDomain: String
@available(watchOS, introduced: 2.0, deprecated: 2.0)
struct GKSessionError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var invalidParameterError: GKSessionError.Code { get }
  static var peerNotFoundError: GKSessionError.Code { get }
  static var declinedError: GKSessionError.Code { get }
  static var timedOutError: GKSessionError.Code { get }
  static var cancelledError: GKSessionError.Code { get }
  static var connectionFailedError: GKSessionError.Code { get }
  static var connectionClosedError: GKSessionError.Code { get }
  static var dataTooBigError: GKSessionError.Code { get }
  static var notConnectedError: GKSessionError.Code { get }
  static var cannotEnableError: GKSessionError.Code { get }
  static var inProgressError: GKSessionError.Code { get }
  static var connectivityError: GKSessionError.Code { get }
  static var transportError: GKSessionError.Code { get }
  static var internalError: GKSessionError.Code { get }
  static var unknownError: GKSessionError.Code { get }
  static var systemError: GKSessionError.Code { get }
}
