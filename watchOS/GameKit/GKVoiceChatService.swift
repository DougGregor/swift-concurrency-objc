
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use GKVoiceChat instead")
class GKVoiceChatService : NSObject {
  class func `default`() -> GKVoiceChatService!
  class func isVoIPAllowed() -> Bool
  @available(watchOS, introduced: 2.0, deprecated: 2.0)
  unowned(unsafe) var client: @sil_unmanaged GKVoiceChatClient!
  func startVoiceChat(withParticipantID participantID: String!) throws
  func stopVoiceChat(withParticipantID participantID: String!)
  func acceptCallID(_ callID: Int) throws
  func denyCallID(_ callID: Int)
  func receivedRealTime(_ audio: Data!, fromParticipantID participantID: String!)
  func receivedData(_ arbitraryData: Data!, fromParticipantID participantID: String!)
  var isMicrophoneMuted: Bool
  var remoteParticipantVolume: Float
  var isOutputMeteringEnabled: Bool
  var isInputMeteringEnabled: Bool
  var outputMeterLevel: Float { get }
  var inputMeterLevel: Float { get }
}
let GKVoiceChatServiceErrorDomain: String
