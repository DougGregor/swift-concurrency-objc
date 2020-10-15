
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use MCSession in association with MCSessionDelegate from the MultipeerConnectivity framework instead")
protocol GKSessionDelegate : NSObjectProtocol {
  @asyncHandler optional func session(_ session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  @asyncHandler optional func session(_ session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(_ session: GKSession, connectionWithPeerFailed peerID: String, withError error: Error)
  @asyncHandler optional func session(_ session: GKSession, didFailWithError error: Error)
}
@available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use GKVoiceChat instead")
protocol GKVoiceChatClient : NSObjectProtocol {
  func voiceChatService(_ voiceChatService: GKVoiceChatService, send data: Data, toParticipantID participantID: String)
  func participantID() -> String
  optional func voiceChatService(_ voiceChatService: GKVoiceChatService, sendRealTime data: Data, toParticipantID participantID: String)
  @asyncHandler optional func voiceChatService(_ voiceChatService: GKVoiceChatService, didStartWithParticipantID participantID: String)
  @asyncHandler optional func voiceChatService(_ voiceChatService: GKVoiceChatService, didNotStartWithParticipantID participantID: String, error: Error?)
  @asyncHandler optional func voiceChatService(_ voiceChatService: GKVoiceChatService, didStopWithParticipantID participantID: String, error: Error?)
  @asyncHandler optional func voiceChatService(_ voiceChatService: GKVoiceChatService, didReceiveInvitationFromParticipantID participantID: String, callID: Int)
}
