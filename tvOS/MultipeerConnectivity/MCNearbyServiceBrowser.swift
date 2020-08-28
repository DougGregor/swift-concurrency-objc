
@available(tvOS 7.0, *)
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
  @available(tvOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, foundPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?)
  @available(tvOS 7.0, *)
  func browser(_ browser: MCNearbyServiceBrowser, lostPeer peerID: MCPeerID)
  @available(tvOS 7.0, *)
  optional func browser(_ browser: MCNearbyServiceBrowser, didNotStartBrowsingForPeers error: Error)
}
