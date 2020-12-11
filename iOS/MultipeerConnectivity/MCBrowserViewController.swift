
@available(iOS 7.0, *)
class MCBrowserViewController : UIViewController, MCNearbyServiceBrowserDelegate {
  convenience init(serviceType: String, session: MCSession)
  init(browser: MCNearbyServiceBrowser, session: MCSession)
  weak var delegate: @sil_weak MCBrowserViewControllerDelegate?
  var browser: MCNearbyServiceBrowser? { get }
  var session: MCSession { get }
  var minimumNumberOfPeers: Int
  var maximumNumberOfPeers: Int
}
protocol MCBrowserViewControllerDelegate : NSObjectProtocol {
  @available(iOS 7.0, *)
  func browserViewControllerDidFinish(_ browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  func browserViewControllerWasCancelled(_ browserViewController: MCBrowserViewController)
  @available(iOS 7.0, *)
  optional func browserViewController(_ browserViewController: MCBrowserViewController, shouldPresentNearbyPeer peerID: MCPeerID, withDiscoveryInfo info: [String : String]?) -> Bool
}
