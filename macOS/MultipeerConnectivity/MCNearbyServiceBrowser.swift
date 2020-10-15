
@available(macOS 10.10, *)
class MCNearbyServiceBrowser : NSObject {
  init(peer myPeerID: MCPeerID, serviceType: String)
  func startBrowsingForPeers()
  func stopBrowsingForPeers()
  func invitePeer(_ peerID: MCPeerID, to session: MCSession, withContext context: Data?, timeout: TimeInterval)
  weak var delegate: @sil_weak MCNearbyServiceBrowserDelegate?
  var myPeerID: MCPeerID { get }
  var serviceType: String { get }
}
protocol MCNearbyServiceBrowserDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(macOS 10.10, *)
  func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(macOS 10.10, *)
  @asyncHandler optional func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}
