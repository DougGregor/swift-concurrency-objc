
@available(macOS 11.0, *)
enum CXCallEndedReason : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case failed
  case remoteEnded
  case unanswered
  case answeredElsewhere
  case declinedElsewhere
}
@available(macOS 11.0, *)
protocol CXProviderDelegate : NSObjectProtocol {
  @asyncHandler func providerDidReset(_ provider: CXProvider)
  @asyncHandler optional func providerDidBegin(_ provider: CXProvider)
  optional func provider(_ provider: CXProvider, execute transaction: CXTransaction) -> Bool
  optional func provider(_ provider: CXProvider, perform action: CXStartCallAction)
  optional func provider(_ provider: CXProvider, perform action: CXAnswerCallAction)
  optional func provider(_ provider: CXProvider, perform action: CXEndCallAction)
  optional func provider(_ provider: CXProvider, perform action: CXSetHeldCallAction)
  optional func provider(_ provider: CXProvider, perform action: CXSetMutedCallAction)
  optional func provider(_ provider: CXProvider, perform action: CXSetGroupCallAction)
  optional func provider(_ provider: CXProvider, perform action: CXPlayDTMFCallAction)
  optional func provider(_ provider: CXProvider, timedOutPerforming action: CXAction)
}
@available(macOS 11.0, *)
class CXProvider : NSObject {
  init(configuration: CXProviderConfiguration)
  func setDelegate(_ delegate: CXProviderDelegate?, queue: DispatchQueue?)
  func reportNewIncomingCall(with UUID: UUID, update: CXCallUpdate, completion: @escaping (Error?) -> Void)
  func reportNewIncomingCall(with UUID: UUID, update: CXCallUpdate) async throws
  func reportCall(with UUID: UUID, updated update: CXCallUpdate)
  func reportCall(with UUID: UUID, endedAt dateEnded: Date?, reason endedReason: CXCallEndedReason)
  func reportOutgoingCall(with UUID: UUID, startedConnectingAt dateStartedConnecting: Date?)
  func reportOutgoingCall(with UUID: UUID, connectedAt dateConnected: Date?)
  @NSCopying var configuration: CXProviderConfiguration
  func invalidate()
  var pendingTransactions: [CXTransaction] { get }
  func pendingCallActions(of callActionClass: AnyClass, withCall callUUID: UUID) -> [CXCallAction]
}
