
@available(macOS 10.10, *)
class MCBrowserViewController : NSViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType: String, session: MCSession)
  init(browser: MCNearbyServiceBrowser, session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
}
protocol MCBrowserViewControllerDelegate : NSObjectProtocol {
  @available(macOS 10.10, *)
  @asyncHandler func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController)
  @available(macOS 10.10, *)
  func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController)
  @available(macOS 10.10, *)
  optional func browserViewController(_ browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
