
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use MCSession in association with MCSessionDelegate from the MultipeerConnectivity framework instead")
protocol GKSessionDelegate : NSObjectProtocol {
  @asyncHandler optional func session(_ session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  @asyncHandler optional func session(_ session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(_ session: GKSession, connectionWithPeerFailed peerID: String, withError error: Error)
  @asyncHandler optional func session(_ session: GKSession, didFailWithError error: Error)
}
