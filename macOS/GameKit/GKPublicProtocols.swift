
@available(macOS, introduced: 10.8, deprecated: 10.10, message: "Use MCSession in association with MCSessionDelegate from the MultipeerConnectivity framework instead")
protocol GKSessionDelegate : NSObjectProtocol {
  optional func session(_ session: GKSession, peer peerID: String, didChange state: GKPeerConnectionState)
  optional func session(_ session: GKSession, didReceiveConnectionRequestFromPeer peerID: String)
  optional func session(_ session: GKSession, connectionWithPeerFailed peerID: String, withError error: Error)
  optional func session(_ session: GKSession, didFailWithError error: Error)
}
